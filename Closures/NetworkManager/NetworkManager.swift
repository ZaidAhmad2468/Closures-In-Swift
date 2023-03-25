//
//  APIHelper.swift
//  Closures
//
//  Created by ZAID AHMAD on 24/03/2023.
//

import Foundation
import UIKit
import Alamofire


class NetworkManager {
    
    private init(){
        
    }
    
    static let instance = NetworkManager()
    
    //MARK: - Post Request
    
    func sendPostRequest(url: String, parameters: Parameters?, headers: HTTPHeaders?, completion: @escaping (AFDataResponse<String>) -> Void) -> Void {
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
            .validate()
            .responseString { (response) in
                completion(response)
            }
    }
    
    //MARK: - Get Method
    
    func sendGetRequest(url: String, headers: HTTPHeaders? ,params: Parameters?, completion: @escaping (AFDataResponse<String>) -> Void) -> Void {
        AF.request(url, method: .get,parameters: params ,headers: headers).validate().responseString { response in
            completion(response)
        }
    }
    
    //MARK: - Put Method
    
    
    func sendPutRequest(url: String, headers: HTTPHeaders? ,params: Parameters?, completion: @escaping (AFDataResponse<String>) -> Void) -> Void {
        AF.request(url, method: .put,parameters: params, encoding: JSONEncoding.default ,headers: headers).validate().responseString { response in
            completion(response)
        }
    }
    
    func deleteReques(url: String,headers:HTTPHeaders, completion: @escaping (AFDataResponse<String>) -> Void) -> Void {
        AF.request(url, method: .delete, encoding: JSONEncoding.default ,headers: headers).validate().responseString { response in
            completion(response)
        }
    }
  
}
