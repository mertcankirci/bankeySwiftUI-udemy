//
//  BankingModel.swift
//  Rebank
//
//  Created by Mertcan Kırcı on 23.03.2023.
//

import SwiftUI

struct BankingModel:  Codable, Hashable, Identifiable {
    let id = UUID().uuidString
    var currency : String
    var price: String
}
