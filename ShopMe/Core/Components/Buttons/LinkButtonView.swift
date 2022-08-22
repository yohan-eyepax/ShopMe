//
//  LinkButtonView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct LinkButtonView: View {
    let title: String
    let icon: String?
    
    init(title: String, icon: String? = nil){
        self.title = title
        self.icon = icon
    }
    
    var body: some View {
        HStack(spacing: 16){
            Text(title)
            if let icon = icon {
                Image(systemName: icon)
            }
        }
        .font(.subheadline)
        .foregroundColor(Color(.systemBlue))
    }
}

struct LinkButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LinkButtonView(title: "View more", icon: "chevron.forward")
    }
}
