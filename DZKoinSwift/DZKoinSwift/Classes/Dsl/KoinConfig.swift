//
//  KoinConfig.swift
//  KoinSwift
//
//  Created by WTJ on 30/04/2021.
//  Copyright © 2019 kanzhun.com. All rights reserved.
//

import Foundation

public class KoinConfig {
    var modules = [Module]()
    public func modules(_ modules: Module...) {
        self.modules += modules
    }
    init() {}
}
