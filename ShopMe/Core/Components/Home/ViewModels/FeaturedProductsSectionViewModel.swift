//
//  FeaturedProductsSectionViewModel.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import Foundation

class FeaturedProductsSectionViewModel: ObservableObject{
    @Published var products: [Product] = [
        Product(featuredImageURL: "", title: "Product Title 1", price: 25.56, discount: 10),
        Product(featuredImageURL: "", title: "Product Title 2", price: 45.34),
        Product(featuredImageURL: "", title: "Product Title 3", price: 34.33),
        Product(featuredImageURL: "", title: "Product Title 4", price: 23.56),
    ]
}
