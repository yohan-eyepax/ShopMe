//
//  CategoriesView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct CategorySectionView: View {
    @StateObject var viewModel = CategorySectionViewModel()
    var body: some View {
        VStack{
            SectionHeaderView(title: "Categories") {
                
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [
                    GridItem(.fixed(UIScreen.main.bounds.width/4)),
                    GridItem(.fixed(UIScreen.main.bounds.width/4))
                ]) {
                    ForEach(viewModel.categories, id: \.self) { item in
                        CategorySectionRowView(category: item)
                    }
                }
                //.fixedSize()
            }
        }
        .padding(.horizontal)
    }
}

struct CategorySectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySectionView()
    }
}
