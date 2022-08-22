//
//  FeaturedBannerItemView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-19.
//

import SwiftUI

struct FeaturedBannersSectionRowView: View {
    let imageURL: String
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color(.systemGray4))
            .overlay {
                Text("\(imageURL)")
            }
    }
}

struct FeaturedBannersSectionRowView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedBannersSectionRowView(imageURL: "Previe Screen")
    }
}
