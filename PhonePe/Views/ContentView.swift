//
//  ContentView.swift
//  PhonePe
//
//  Created by JD on 24/08/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }.tag(0)
            
            NavigationView {
                StoresView()
            }
            .tabItem {
                Image(systemName: "bag.fill")
                Text("Stores")
            }.tag(1)
            
            NavigationView {
                SwitchView()
            }
            .tabItem {
                Image(systemName: "switch.2")
                Text("Switch")
            }.tag(2)
            
            NavigationView {
                MyMoneyView()
            }
            .tabItem {
                Image(systemName: "indianrupeesign.circle.fill")
                Text("My Money")
            }.tag(3)
            
            NavigationView {
                HistoryView()
            }
            .tabItem {
                Image(systemName: "clock.fill")
                Text("History")
            }.tag(4)
        }.accentColor(.theme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
