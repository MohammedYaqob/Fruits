//
//  FruiteModel.swift
//  fruits
//
//  Created by Mohammed Yaqob's MacBook on 26/07/2021.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
