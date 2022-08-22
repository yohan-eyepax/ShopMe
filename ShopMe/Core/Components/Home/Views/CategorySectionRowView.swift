//
//  CategoriesItemView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct CategorySectionRowView: View {
    let category: Category
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: (UIScreen.main.bounds.width/8)/4)
                .fill(.gray)
                .frame(width: UIScreen.main.bounds.width/8, height: UIScreen.main.bounds.width/8)
            
            Text(category.title ?? "")
                .font(.caption)
                .foregroundColor(.black)
        }
    }
}

struct CategorySectionRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySectionRowView(category: Category(featuredImageURL: "", title: "Product Title"))
    }
}
