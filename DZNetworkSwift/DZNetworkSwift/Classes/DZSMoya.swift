//
//  API.swift
//  GHMoyaNetWorkTest
//
//  Created by Guanghui Liao on 3/30/18.
//  Copyright © 2018 liaoworking. All rights reserved.
//https://github.com/Moya/Moya/blob/master/docs_CN/Examples/Basic.md

import Foundation
import Moya

@objcMembers public class DZSMoya : NSObject{
    
    @objc var parameters:[String:Any]?
    @objc var apiPath: String?;
}

extension DZSMoya:TargetType{
    public var baseURL: URL {
        
        let e = DZEnvironment()
        e.type = dzenvironmentType
        return URL.init(string:(e.baseURL))!
    }
    
    public var path: String {
        return self.apiPath!;
    }
    
    public var method: Moya.Method {
        return .post
    }
    

    //    这个是做单元测试模拟的数据，必须要实现，只在单元测试文件中有作用
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }

    //    该条请API求的方式,把参数之类的传进来
    public var task: Task {
        return .requestParameters(parameters:self.parameters!, encoding: JSONEncoding.default)
    }
 
    
    
    public var headers: [String : String]? {
        return ["Content-Type":"application/x-www-form-urlencoded"]
    }
 
}
