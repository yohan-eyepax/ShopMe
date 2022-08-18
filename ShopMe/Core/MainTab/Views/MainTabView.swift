//
//  MainTabView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-18.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedIndex = 0
    
    init(){
       
    }
    
    var body: some View {
        TabView(selection: $selectedIndex){
            HomeView()
                .onTapGesture {
                    self.selectedIndex = 0
                    print("DEBUG: SELECTED INDEX \(selectedIndex)")
                }
                .tabItem {
                    Label("Home", image: selectedIndex == 0 ? "home-active": "home")
                }
                .tag(0)
            
            CategoriesView()
                .onTapGesture {
                    self.selectedIndex = 1
                    print("DEBUG: SELECTED INDEX \(selectedIndex)")
                }
                .tabItem {
                    Label("Categories", image: selectedIndex == 1 ? "categories-active": "categories")
                }
                .tag(1)
            
            SearchView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    Label("Search", image: selectedIndex == 2 ? "search-active": "search")
                }
                .tag(2)
            
            MyAccountView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem {
                    Label("My Account", image: selectedIndex == 3 ? "my-account-active" : "my-account")
                }
                .tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
