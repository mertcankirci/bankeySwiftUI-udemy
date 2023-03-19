//
//  UserModel.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 19.03.2023.
//

import SwiftUI

struct User : Codable {
    var id = UUID()
    var username : String
    var password : String
}
