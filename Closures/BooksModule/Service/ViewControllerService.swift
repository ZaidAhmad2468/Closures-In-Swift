//
//  ViewControllerService.swift
//  Closures
//
//  Created by ZAID AHMAD on 24/03/2023.
//

import Foundation


class BooksService {
    
    
    private init(){
        
    }
    
    
    static let instance = BooksService()
    
    //MARK: - Fetch Products
    
    
    func getUserBooks(completion: @escaping (_ success: Bool, _ status: String?, _ addRent: [UserBooksModel]?)-> ()){
        
        NetworkManager.instance.sendGetRequest(url: Constants.getBooks, headers: headers, params: nil) { response in
            switch response.result {
            case .success:
                do{
                    let json = try JSONSerialization.jsonObject(with: response.data!) as? Dictionary<String, AnyObject>
                    print("JSON ::\(String(describing: json))")
                    let decoder = JSONDecoder()
                    let products = try decoder.decode([UserBooksModel].self, from: response.data!)
                    
                    completion(true,nil, products)
                    
                } catch let jsonError{
                    print(jsonError)
                    completion(false,jsonError.localizedDescription,nil)
                }
                break
            case .failure(let error):
                switch error {
                case .sessionTaskFailed:
                    completion(false,errorMessage.networkErrorMessage,nil)
                    break
                default:
                    do{
                        let decoder = JSONDecoder()
                        let errorResponse = try decoder.decode(ErrorModel.self, from: response.data!)
                        completion(false,errorResponse.error?.message,nil)
                        
                    }catch {
                        completion(false,errorMessage.errorInFettingProducts,nil)
                    }
                    break
                }
            }
        }
    }
}
