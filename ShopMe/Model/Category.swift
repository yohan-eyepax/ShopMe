//
//  Category.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import FirebaseFirestoreSwift
import Firebase

struct Category: Identifiable, Decodable, Hashable{
    @DocumentID var id: String?
    let featuredImageURL: String
    let title: String?
}
