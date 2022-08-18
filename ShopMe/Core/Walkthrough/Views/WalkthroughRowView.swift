//
//  WalkthroughRowView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-18.
//

import SwiftUI

struct WalkthroughRowView: View {
    var body: some View {
        VStack{
            Image("walkthrough-img-1")
                .resizable()
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height*(3/5))
            
            VStack(alignment: .center){
                Text("Pick every product that you want")
                    .font(.system(size: 18))
                    .bold()
                
                //Flash sale everyday, all of happy now
                Text("simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
                    .font(.system(size: 14))
                    .foregroundColor(Color(.systemGray))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
            }
            .padding(.horizontal)
        }
    }
}

struct WalkthroughRowView_Previews: PreviewProvider {
    static var previews: some View {
        WalkthroughRowView()
    }
}
