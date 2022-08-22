//
//  HotDealsView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-21.
//

import SwiftUI

struct HotDealsSectionView: View {
    @StateObject var viewModel = HotDealsSectionViewModel()
    
    var body: some View {
        VStack{
            SectionHeaderView(title: "Hot Deals") {
                print("DEBUG: Hot Deals Section Header Tap")
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top, spacing: 8) {
                    ForEach(viewModel.hotDeals, id: \.self) { item in
                        //HotDealsSectionRowView(product: item)
                        ProductsSectionRowView(product: item, width: (UIScreen.main.bounds.width - 48) / 2.75)
                    }
                }
                .fixedSize()
            }
        }
        .padding(.horizontal)
    }
}

struct HotDealsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        HotDealsSectionView()
    }
}
