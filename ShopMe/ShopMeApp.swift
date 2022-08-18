//
//  ShopMeApp.swift
//  ShopMe
//
//  Created by Yohan Alahakoon on 2022-08-18.
//

import SwiftUI
import Firebase

@main
struct ShopMeApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
        }
    }
}
