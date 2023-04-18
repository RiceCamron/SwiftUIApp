//
//  ProductsResponce.swift
//  SwiftbookApp
//
//  Created by Artur Avdeev on 06.03.2023.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Codable, Hashable{
    case courses = "Courses"
    case webinars = "Webinars"
}

struct ProductsResponse: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var image: String
    var shortName: String
    var category: Category
    var description: String
    var rating: Double
    var students: Int
    var lessons: Int
    var isFavorite: Bool
    var isFeatured: Bool
}
