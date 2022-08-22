//
//  SectionHeaderView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct SectionHeaderView: View {
    let title: String
    let onTapViewMore: () -> Void
    var body: some View {
        HStack{
            Text(title)
                .font(.subheadline)
                .bold()
            
            Spacer()
            
            Button{
                onTapViewMore()
            }label: {
                LinkButtonView(title: "View more", icon: "chevron.forward")
            }
        }
        .padding()
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView(title: "View More") {
          print("DEBUG: On tap section header view more button")
        }
    }
}
