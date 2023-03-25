//
//  Constants.swift
//  Closures
//
//  Created by ZAID AHMAD on 24/03/2023.
//

import Foundation
import Alamofire

struct Constants {
    
    static let baseUrl = "https://your.domain.com/api/" // New url
    static let getBooks = baseUrl + "/getBooks"
    
}

struct errorMessage {
    static let networkErrorTitle = "Network error!"//
    static let networkErrorMessage = "Such as timeout, interuppted connection or un reachable host has occured"//
    static let errorInFettingProducts = "Something went wrong while getting products, please try again later."//
    
}
let headers: HTTPHeaders = [.authorization(bearerToken: "Your-API-Bearer-Token")]
