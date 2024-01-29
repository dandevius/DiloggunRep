//
//  OddunCell.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 12/8/23.
//

import SwiftUI

struct OddunListViewCell: View {
    let oddun: Oddun
        
    var body: some View {
        VStack{
            HStack(spacing: 10) {
                Text(oddun.number)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text(oddun.name)
                    .font(.subheadline)
                    .fontWeight(.light)
                
                Spacer()
            }
            
//            HStack {
//                Text("\(oddun.proverbs[0])")
//                    .lineLimit(2)
//                    .font(.subheadline)
//                    .foregroundColor(.secondary)
//                    .fontWeight(.light)
//                
//                Spacer()
//            }
        }
        .padding(.leading)
        
    }
}

#Preview {
    OddunListViewCell(oddun: MockData.sampleOddun)
}

