//
//  MainTabView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-18.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var viewModel: MainTabViewModel
    
    init(){
       
    }
    
    var body: some View {
        TabView(selection: $viewModel.selectedIndex){
            HomeView()
                .onTapGesture {
                    viewModel.selectedIndex = 0
                }
                .modifier(TabViewItemModifier(selectedIndex:viewModel.selectedIndex,label: "Home", icon: "home", activeIcon: "home-active", tag: 0))
                
            
            CategoriesView()
                .onTapGesture {
                    viewModel.selectedIndex = 1
                }
                .modifier(TabViewItemModifier(selectedIndex:viewModel.selectedIndex,label: "Categories", icon: "categories", activeIcon: "categories-active", tag: 1))
            
            SearchView()
                .onTapGesture {
                    viewModel.selectedIndex = 2
                }
                .modifier(TabViewItemModifier(selectedIndex:viewModel.selectedIndex,label: "Search", icon: "search", activeIcon: "search-active", tag: 2))
            
            MyAccountView()
                .onTapGesture {
                    viewModel.selectedIndex = 3
                }
                .modifier(TabViewItemModifier(selectedIndex:viewModel.selectedIndex,label: "My Account", icon: "my-account", activeIcon: "my-account-active", tag: 3))
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

struct TabViewItemModifier: ViewModifier{
    let selectedIndex: Int
    let label: String
    let icon: String
    let activeIcon: String
    let tag: Int
    
    func body(content: Content) -> some View {
        content
        .tabItem {
            Label(label, image: selectedIndex == tag ? activeIcon: icon)
        }
        .tag(tag)
    }
}
