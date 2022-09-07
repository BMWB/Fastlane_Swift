//
//  KoinInjectable.swift
//  KoinSwift
//
//  Created by WTJ on 22/04/2021.
//  Copyright © 2019 kanzhun.com. All rights reserved.
//

import Foundation

public protocol KoinInjectable {}

public extension KoinInjectable {
    func get<T>(withQualifier: Qualifier? = nil) throws -> T {
        guard let koin = GlobalContext.shared.app else {
            throw KoinErrors.notInitialized
        }
        return try koin.get(withQualifier: withQualifier)
    }
}
