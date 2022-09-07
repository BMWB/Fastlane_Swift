//
//  MoyaConfig.swift
//  GHMoyaNetWorkTest
//
//  Created by Guanghui Liao on 4/3/18.
//  Copyright © 2018 liaoworking. All rights reserved.
//

import Foundation

public let dzenvironmentType: DZ_EnvironmentType = .DZEnvironmentTypeQA

public enum DZ_EnvironmentType: Int {
    //自定义环境
    case DZEnvironmentTypeUserDefined = -1
    //生产环境
    case DZEnvironmentTypeDist
    //预上线环境
    case DZEnvironmentTypePre
    //qa
    case DZEnvironmentTypeQA
    //rd
    case DZEnvironmentTypeRD
}


@objcMembers public class DZEnvironment : NSObject {
    
    var type: DZ_EnvironmentType?
    
    var baseURL: String {
        switch self.type {
        case .DZEnvironmentTypeQA:
            return "https://blue-qa-api.weizhipin.com"
        case .DZEnvironmentTypeRD:
            return "https://blue-rd-api.weizhipin.com"
        case .DZEnvironmentTypePre:
            return "https://pre2-api.dianzhangzhipin.com"
        case .DZEnvironmentTypeDist:
            return "https://api.dianzhangzhipin.com"
        case .DZEnvironmentTypeUserDefined:
            return ""
        case .none:
            return ""
        }
    }

    
    
}


