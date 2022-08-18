//
//  WalkthoughView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-18.
//

import SwiftUI

struct WalkthoughView: View {
    var body: some View {
        VStack{
            WalkthroughRowView()
            
            Spacer()
            
            HStack{
                Text("Skip")
                    .font(.system(size: 16))
                
                Spacer()
                
                Text("Next")
                    .font(.system(size: 16))
                    .foregroundColor(Color(.systemBlue))
            }
            .padding()
            .padding(.horizontal, 24)
                
        }
    }
}

struct WalkthoughView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthoughView()
    }
}
