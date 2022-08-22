//
//  DiscountTagView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct DiscountTagView: View {
    let amount: Double
    var body: some View {
        Text("-\(amount.toBeFixed(toPlaces: 0))%")
            .font(.system(size: 10))
            .bold()
            .foregroundColor(.white)
            .padding(.horizontal, 2)
            .padding(.vertical, 1)
            .background(Color(.systemRed))
            .clipped()
            .clipShape(Capsule())
    }
}

struct DiscountTagView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountTagView(amount: 10)
    }
}
