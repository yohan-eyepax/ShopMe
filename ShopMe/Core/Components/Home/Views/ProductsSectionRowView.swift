//
//  FeaturedProductsSectionRowView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct ProductsSectionRowView: View {
    let product: Product
    let width: CGFloat
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            RoundedRectangle(cornerRadius: (UIScreen.main.bounds.width/2)/12)
                .fill(.gray)
                .aspectRatio(contentMode: .fit)
            
            Text(product.title ?? "")
                .font(.caption)
                .foregroundColor(.black)
            
            HStack{
                Text("\((product.price ?? 0).toBeFixed(toPlaces: 2)) $")
                    .font(.caption)
                    .bold()
                
                if product.discount != nil{
                    DiscountTagView(amount: product.discount ?? 0)
                }
                
            }
            
            Spacer()
        }
        .frame(width: width)
    }
}

struct ProductsSectionRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsSectionRowView(product: Product(featuredImageURL: "", title: "Product Title", price: 35.46), width: UIScreen.main.bounds.width/3)
    }
}
