//
//  Oddun.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 12/8/23.
//

import Foundation
                
struct Oddun: Codable, Hashable, Identifiable {
    let id = UUID()
    let number: String
    let name: String
    let proverbs: [String]
    let general: String
    let inPositive:  String
    let inNegative: String    
    let pray: String
    let prohibitions: [String]
    let ebbos: [String]
}
