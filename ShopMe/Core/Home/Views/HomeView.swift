//
//  HomeView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-18.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0) {
                FeaturedBannersSectionView()
                
                SeperatorView()
                
                HotDealsSectionView()
                
                SeperatorView()
                    .padding(.top)
                
                CategorySectionView()
                
                SeperatorView()
                    .padding(.top)
                
                FeaturedProductsSectionView()
                
                SeperatorView()
                    .padding(.top)
                
                NewProductsSectionView()
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
