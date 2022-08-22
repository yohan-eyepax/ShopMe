//
//  FeaturedProductSectionView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct FeaturedProductsSectionView: View {
    @StateObject var viewModel = FeaturedProductsSectionViewModel()
    var body: some View {
        VStack{
            SectionHeaderView(title: "Featured") {
                
            }
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: [
                    GridItem(),
                    GridItem()
                ], spacing: 8) {
                    ForEach(viewModel.products, id: \.self) { item in
                        ProductsSectionRowView(product: item, width: (UIScreen.main.bounds.width - 48)/2)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct FeaturedProductsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedProductsSectionView()
    }
}
