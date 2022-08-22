//
//  TabViewIndicator.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-20.
//

import SwiftUI

struct TabViewIndicator: View {
     var isActive: Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 1.25)
            .fill(isActive ? Color(.systemBlue) : Color(.systemGray2))
            .frame(width: isActive ? 32 : 20, height: 2.5)
           
    }
}

struct TabViewIndicator_Previews: PreviewProvider {
    static var previews: some View {
        TabViewIndicator(isActive: false)
    }
}
