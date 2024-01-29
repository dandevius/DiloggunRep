//
//  DiloggunListView.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 12/8/23.
//

import SwiftUI

struct DiloggunListView: View {
    @State var viewModel = DiloggunListViewModel()
    @State private var selectedOddun: Oddun?
    
    
    var body: some View {
        ZStack {
            NavigationView {
                OddunListView(viewModel: viewModel)
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct OddunListView: View {
    @State var viewModel = DiloggunListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    DisclosureGroup(
                        content: {
                            ForEach(viewModel.okana, id: \.id) { dt in
                                NavigationLink(destination: OddunDetailView(oddun: dt)) {
                                    OddunListViewCell(oddun: dt)
                                }
                                
                            }
                        },
                        
                        label: { Text("1 Okana")
                            
                    })
                                        
                }
                .listStyle(SidebarListStyle())
            }
            .navigationTitle("Odduns")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    DiloggunListView()
}

