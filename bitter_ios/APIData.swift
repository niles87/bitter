//
//  APIData.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/14/21.
//

import Foundation

struct Bit {
    var timestamp: Int32
    var username: String
    var bit: String
}

struct Bits {
    var id: [Bit]
}

struct Comment {
    var comment: String
    var timestamp: Int32
    var username: String
}

struct Post {
    var id: [Comment]
}

struct Comments {
    var id: [Post]
}

struct Username {
    var name: String
    var id: String
    var email: String
    var image: String
    var password: String?
}

struct Users {
    var username: [Username]
}
