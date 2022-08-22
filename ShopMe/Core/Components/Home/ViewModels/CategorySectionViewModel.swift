//
//  CategoriesViewModel.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import Foundation
import SwiftUI

class CategorySectionViewModel: ObservableObject{
    @Published var categories: [Category] = [
        Category(featuredImageURL: "", title: "Category Title 1"),
        Category(featuredImageURL: "", title: "Category Title 2"),
        Category(featuredImageURL: "", title: "Category Title 3"),
        Category(featuredImageURL: "", title: "Category Title 4"),
        Category(featuredImageURL: "", title: "Category Title 5"),
        Category(featuredImageURL: "", title: "Category Title 6"),
        Category(featuredImageURL: "", title: "Category Title 7"),
        Category(featuredImageURL: "", title: "Category Title 8"),
        Category(featuredImageURL: "", title: "Category Title 9"),
        Category(featuredImageURL: "", title: "Category Title 10"),
        Category(featuredImageURL: "", title: "Category Title 11"),
        Category(featuredImageURL: "", title: "Category Title 12"),
        Category(featuredImageURL: "", title: "Category Title 13"),
        Category(featuredImageURL: "", title: "Category Title 14"),
        Category(featuredImageURL: "", title: "Category Title 15"),
        Category(featuredImageURL: "", title: "Category Title 16"),
        Category(featuredImageURL: "", title: "Category Title 17"),
        Category(featuredImageURL: "", title: "Category Title 18"),
        Category(featuredImageURL: "", title: "Category Title 19"),
        Category(featuredImageURL: "", title: "Category Title 20"),
        Category(featuredImageURL: "", title: "Category Title 21")
    ]
}
