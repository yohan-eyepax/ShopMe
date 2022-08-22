//
//  HotDealsViewModel.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import Foundation

class HotDealsSectionViewModel: ObservableObject{
    @Published var hotDeals: [Product] = [
        Product(featuredImageURL: "", title: "Product Title 1", price: 25.56),
        Product(featuredImageURL: "", title: "Product Title 2", price: 45.34),
        Product(featuredImageURL: "", title: "Product Title 3", price: 34.33),
        Product(featuredImageURL: "", title: "Product Title 4", price: 23.56),
        Product(featuredImageURL: "", title: "Product Title 5", price: 3.56),
        Product(featuredImageURL: "", title: "Product Title 6", price: 83.56),
        Product(featuredImageURL: "", title: "Product Title 7", price: 43.56)
    ]
}
