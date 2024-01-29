//
//  ContentView.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 12/8/23.
//

import SwiftUI

struct DiloggunTabView: View {    
    
    var body: some View {
        TabView {
            DiloggunListView()
                .tabItem {
                    Image(systemName: "books.vertical.circle")
                    Text("Odduns")
                }
                
            
            AccountView()
               .tabItem {
                   Image(systemName: "person")
                   Text("Account")
               }
        }
        .accentColor(.blue)
    }
}

#Preview {
    DiloggunTabView()
}
