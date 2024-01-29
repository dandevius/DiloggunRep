//
//  AppetizerListViewModel.swift
//  Diloggun App
//
//  Created by Daniel Ramirez on 12/10/23.
//

import SwiftUI

final class DiloggunListViewModel: ObservableObject {
    //    Published an appetizers array to keep track of the downloaded data and will feed the appetizerListView
    @Published var okana: [Oddun] = []

    
    init() {
        loadData()
    }
    
    func loadData() {
        if let fileURL = Bundle.main.url(forResource: "okanaData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileURL)
                let decoder = JSONDecoder()
                self.okana = try decoder.decode([Oddun].self, from: data)
                
            } catch {
                print("Error decoding JSON: \(error)")
            }
        } else {
            print("File not found")
        }
    }
}

