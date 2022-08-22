//
//  NewProductsSectionView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct NewProductsSectionView: View {
    @StateObject var viewModel = NewProductsSectionViewModel()
    var body: some View {
        VStack{
            SectionHeaderView(title: "New") {
                
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
                //.fixedSize()
            }
        }
        .padding(.horizontal)
    }
}

struct NewProductsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        NewProductsSectionView()
    }
}
