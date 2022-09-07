//
//  GlobalContext.swift
//  KoinSwift
//
//  Created by WTJ (i-BP - INFOTEL) on 30/04/2021.
//  Copyright © 2019 kanzhun.com. All rights reserved.
//

import Foundation

public class GlobalContext {
    static let shared: GlobalContext = GlobalContext()
    func start(koin: Koin) throws {
        guard app == nil else {
            throw KoinErrors.alreadyInitialized
        }
        app = koin
    }
    func stop() throws {
        throw KoinErrors.notImplementedYet
    }
    var app: Koin?
    private init() {}
}
