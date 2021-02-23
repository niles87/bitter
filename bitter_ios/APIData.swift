//
//  APIData.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//

import Foundation

struct BitList: Codable {
    let data: [Bit]
}

struct Bit: Codable {
    let _id: String
    let author: String
    let author_image: String
    let bit: String
    let date_time: Date
    let comments: [Comments]
}

struct Comments: Codable {
    let comment: String
    let date_time: Date
    let author: String
    let author_image: String
}

struct User: Codable {
    let name: String
    let _id: String?
    let email: String
    let image: String
    let password: String?
    let username: String
}

struct Users: Codable {
    let data: [User]
}

struct Message: Codable {
    let msg: String
}
