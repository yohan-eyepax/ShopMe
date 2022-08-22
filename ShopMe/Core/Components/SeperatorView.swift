//
//  SeperatorView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-22.
//

import SwiftUI

struct SeperatorView: View {
    let width: CGFloat?
    let height: CGFloat?
    
    init(width: CGFloat? = nil, height: CGFloat? = 8){
        self.width = width
        self.height = height
    }
    var body: some View {
        HStack{
            
        }.frame( width: width ?? UIScreen.main.bounds.width, height: height)
            .background(Color(.systemGray6))
    }
}

struct SeperatorView_Previews: PreviewProvider {
    static var previews: some View {
        SeperatorView()
    }
}
