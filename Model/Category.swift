//
//  Category.swift
//  FoodOrdering2
//
//  Created by Maxim Macari on 12/4/21.
//

import SwiftUI

//Modeel and Sample Category

struct Category: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var title: String
}

var categories = [
    Category(image: "hamburger", title: "Burger"),
    Category(image:"hotdog", title: "Hotdog"),
    Category(image:"sandwich", title: "Sandwich"),
    Category(image:"salad", title: "Salad")
]
