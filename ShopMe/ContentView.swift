//
//  ContentView.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-18.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var mainTabViewModel: MainTabViewModel
    
    var body: some View {
        NavigationView{
            Group{
                mainInterfaceView
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}

extension ContentView{
    var mainInterfaceView: some View{
        ZStack {
            MainTabView()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text(getTitle())
                    .font(.headline)
                    .bold()
            }

            // Cart Button
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{

                }label: {
                    Image("cart")
                }
            }

            // Options Buttons
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack{
                    Button{

                    }label: {
                        Image("dots")
                    }

                    Capsule()
                        .frame(width: 2, height: 20)
                        .foregroundColor(Color(.systemGray4))

                    Button{

                    }label: {
                        Image("close")
                    }
                }
                .padding(.leading,10)
                .padding(.trailing, 14)
                .padding(.vertical, 4)
                .background(
                    Capsule()
                        .fill(Color(.systemGray6))
                )

            }
        }
    }
    
    func getTitle() -> String{
        switch(mainTabViewModel.selectedIndex){
        case 0:
            return "Home"
        case 1:
            return "Categories"
        case 2:
            return "Search"
        case 3:
            return "My Account"
        default:
            return "Home"
        }
    }
}
