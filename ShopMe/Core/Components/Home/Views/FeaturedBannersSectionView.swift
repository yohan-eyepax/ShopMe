//
//  FeaturedBannersView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-19.
//

import SwiftUI

struct FeaturedBannersSectionView: View {
    @StateObject var viewModel = FeaturedBannersSectionViewModel()
    @State var currentIndex: Int = 0
    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<5) { i in
                    FeaturedBannersSectionRowView(imageURL: "Row \(i)")
                        .tag(i)
                        
                }
                .padding(.horizontal)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onChange(of: currentIndex) { newValue in
                 print("New page: \(newValue)")
            }
            
            HStack{
                ForEach(0..<5) { i in
                    TabViewIndicator(isActive: currentIndex == i)
                }
            }
            .padding(.vertical, 12)
            
            Spacer()
        }
        .frame(height: UIScreen.main.bounds.height/5)
        .padding(.top)
    }
    
//    func setupAppearance() {
//        UIPageControl.appearance().currentPageIndicatorTintColor = .systemBlue
//        UIPageControl.appearance().pageIndicatorTintColor = .systemGray5
//
//      }
}

struct FeaturedBannersSectionView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedBannersSectionView()
    }
}
