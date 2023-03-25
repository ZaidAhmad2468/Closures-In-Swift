//
//  UsersBooksModel.swift
//  Closures
//
//  Created by ZAID AHMAD on 24/03/2023.
//

import Foundation
struct UserBooksModel : Codable {
    let id : Int?
    let createdAt : String?
    let updatedAt : String?
    let title : String?
    let side_title : String?
    let product : Product?
    let theme : Theme?
    let cover : Cover?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case title = "title"
        case side_title = "side_title"
        case product = "product"
        case theme = "theme"
        case cover = "cover"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        side_title = try values.decodeIfPresent(String.self, forKey: .side_title)
        product = try values.decodeIfPresent(Product.self, forKey: .product)
        theme = try values.decodeIfPresent(Theme.self, forKey: .theme)
        cover = try values.decodeIfPresent(Cover.self, forKey: .cover)
    }

}
struct Product : Codable {
    let id : Int?
    let name : String?
    let description : String?
    let price : Int?
    let createdAt : String?
    let updatedAt : String?
    let publishedAt : String?
    let max_photos : Int?
    let max_videos : Int?
    let page_number : Int?
    let width : Int?
    let height : Int?
    let pod_package_id : String?
    let size_unit : String?
    let cover_spine_size : Double?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case description = "description"
        case price = "price"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case publishedAt = "publishedAt"
        case max_photos = "max_photos"
        case max_videos = "max_videos"
        case page_number = "page_number"
        case width = "width"
        case height = "height"
        case pod_package_id = "pod_package_id"
        case size_unit = "size_unit"
        case cover_spine_size = "cover_spine_size"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        price = try values.decodeIfPresent(Int.self, forKey: .price)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        publishedAt = try values.decodeIfPresent(String.self, forKey: .publishedAt)
        max_photos = try values.decodeIfPresent(Int.self, forKey: .max_photos)
        max_videos = try values.decodeIfPresent(Int.self, forKey: .max_videos)
        page_number = try values.decodeIfPresent(Int.self, forKey: .page_number)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        pod_package_id = try values.decodeIfPresent(String.self, forKey: .pod_package_id)
        size_unit = try values.decodeIfPresent(String.self, forKey: .size_unit)
        cover_spine_size = try values.decodeIfPresent(Double.self, forKey: .cover_spine_size)
    }

}
struct Theme : Codable {
    let id : Int?
    let name : String?
    let author_name : String?
    let price : Int?
    let createdAt : String?
    let updatedAt : String?
    let publishedAt : String?
    let colorR : Int?
    let colorG : Int?
    let colorB : Int?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case author_name = "author_name"
        case price = "price"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case publishedAt = "publishedAt"
        case colorR = "colorR"
        case colorG = "colorG"
        case colorB = "colorB"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        author_name = try values.decodeIfPresent(String.self, forKey: .author_name)
        price = try values.decodeIfPresent(Int.self, forKey: .price)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        publishedAt = try values.decodeIfPresent(String.self, forKey: .publishedAt)
        colorR = try values.decodeIfPresent(Int.self, forKey: .colorR)
        colorG = try values.decodeIfPresent(Int.self, forKey: .colorG)
        colorB = try values.decodeIfPresent(Int.self, forKey: .colorB)
    }

}
struct Cover : Codable {
    let id : Int?
    let order_in_book : Int?
    let description : String?
    let frame_start : String?
    let frame_stop : String?
    let recompiled_file_name : String?
    let createdAt : String?
    let updatedAt : String?
    let has_video : Bool?
    let video_linked_id : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case order_in_book = "order_in_book"
        case description = "description"
        case frame_start = "frame_start"
        case frame_stop = "frame_stop"
        case recompiled_file_name = "recompiled_file_name"
        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case has_video = "has_video"
        case video_linked_id = "video_linked_id"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        order_in_book = try values.decodeIfPresent(Int.self, forKey: .order_in_book)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        frame_start = try values.decodeIfPresent(String.self, forKey: .frame_start)
        frame_stop = try values.decodeIfPresent(String.self, forKey: .frame_stop)
        recompiled_file_name = try values.decodeIfPresent(String.self, forKey: .recompiled_file_name)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        has_video = try values.decodeIfPresent(Bool.self, forKey: .has_video)
        video_linked_id = try values.decodeIfPresent(String.self, forKey: .video_linked_id)
    }

}


struct ErrorModel : Codable {
    let data : String?
    let error : Errors?

    enum CodingKeys: String, CodingKey {

        case data = "data"
        case error = "error"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        data = try values.decodeIfPresent(String.self, forKey: .data)
        error = try values.decodeIfPresent(Errors.self, forKey: .error)
    }

}

struct Errors : Codable {
    let status : Int?
    let name : String?
    let message : String?
    enum CodingKeys: String, CodingKey {

        case status = "status"
        case name = "name"
        case message = "message"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decodeIfPresent(Int.self, forKey: .status)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        message = try values.decodeIfPresent(String.self, forKey: .message)
    }

}

