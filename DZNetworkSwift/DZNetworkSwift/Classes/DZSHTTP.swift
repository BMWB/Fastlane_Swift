//
//  DZSHTTP.swift
//  DZNetworkSwift
//
//  Created by admin on 2021/11/17.
//

import Alamofire
import Foundation
import ObjectMapper
import Moya
import SwiftyJSON

@objcMembers public class DZSHttpClient:NSObject {
    
    @objc static func sp_postRequest(path:String, parameters:[String: Any]) {
        
        let moya = DZSMoya()
        moya.apiPath = path
        moya.parameters = parameters
        
        NetWorkRequest(moya, modelType: ZhihuItemModel.self) { _, _ in
            
        } failureCallback: { _ in
            
        }
    }

    
}
