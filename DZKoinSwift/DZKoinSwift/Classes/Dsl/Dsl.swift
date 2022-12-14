//
//  Dsl.swift
//  KoinSwift
//
//  Created by WTJ on 12/04/2021.
//  Copyright © 2019 kanzhun.com. All rights reserved.
//

import Foundation

public func module(_ closure: ModuleDeclaration) -> Module {
    let module = Module()
    closure(module)
    return module
}

public func registerKoinModule(_ modules: Module...) throws {
    try modules.forEach({ module throws in
        try module.definitions.forEach({ definition throws in
            guard let koin = GlobalContext.shared.app else {
                throw KoinErrors.notInitialized
            }
            try koin.insert(definition: definition)
        })
    })
}

public func inject<T>(withQualifier: Qualifier? = nil) throws -> T {
    guard let koin = GlobalContext.shared.app else {
        throw KoinErrors.notInitialized
    }
    return try koin.get(withQualifier: withQualifier)
}

public func startKoin(_ configure: (KoinConfig) -> Void) throws {
    let koin = Koin()
    let koinConfig = KoinConfig()
    configure(koinConfig)
    try koin.apply(with: koinConfig)
    try GlobalContext.shared.start(koin: koin)
}
