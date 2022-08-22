//
//  FeaturedBanner.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-19.
//

import FirebaseFirestoreSwift
import Firebase

struct FeaturedBanner: Identifiable, Decodable, Hashable{
    @DocumentID var id: String?
    let url: String
}

