//
//  DZModelASwift.swift
//  DZModelA
//
//  Created by admin on 2021/11/18.
//

import Foundation
import DZKoinSwift
import KZKoinProtocolsModule

class DZOneModuleBB : DZOneModuleProtocol {
    func sp_bingbing() {
        print("~ ~ ~ heating ~ ~ ~")
    }

}

public let DZOneModule = module {
//    $0.single { _ -> DZOneModuleProtocol in
//        return DZOneModuleBB()
//    }
    $0.single { i -> DZOneProtocol in
        return DZModelOne()
    }
//    $0.single { _ -> DZOneModuleProtocol in
//        return DZModuleB()
//    }

}

//struct network {
//    let one:DZKoinNetworkProtocol = try! inject()
//}
//
//public func DZOneNetwork() {
//
//    network().one.dz_POST("api") { _ in
//
//    }
//}
