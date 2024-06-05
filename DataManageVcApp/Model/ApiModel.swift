//
//  ApiModel.swift
//  DataManageVcApp
//
//  Created by Priyanshi on 04/06/24.
//

import Foundation
struct OurModel: Codable {

    
    let success : Bool?
    let total_photos : Int?
    let message : String?
    let offset : Int?
    let limit : Int?
    let photos : [Photos]?
    
}
struct Photos : Codable, Identifiable {
  
    
    let url : String?
    let user : Int?
    let title : String?
    let id : Int?
    let description : String?
    let isLike: Bool?
}
struct UserModel : Codable,Identifiable{
   
    let userId : Int?
    let id : Int?
    let title : String?
    let body : String?
}
