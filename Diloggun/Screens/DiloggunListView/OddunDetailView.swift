//
//  OddunDetailView.swift
//  Diloggun
//
//  Created by Daniel Ramirez on 1/5/24.
//

import SwiftUI

struct OddunDetailView: View {
    let oddun: Oddun
    
    var body: some View {
        ScrollView {
            OddunCardView(name: oddun.name, number: oddun.number, pray: oddun.pray)
            
            OddunProverbsList(proverbsArray: oddun.proverbs)
                        
            OddunGeneralPositiveNegative(oddun: oddun)
                .padding(.top)
            
            OddunProhibitionsEbbosList(prohibitions: oddun.prohibitions, ebbos: oddun.ebbos)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.regularMaterial)
        .cornerRadius(10)
        .padding(.bottom, 5)
        .navigationTitle(oddun.name)
    }
        
}



#Preview {
    OddunDetailView(oddun: MockData.sampleOddun)
}

struct OddunCardView: View {
    let name: String
    let number: String
    let pray: String
    
    
    var body: some View {
        HStack {

            VStack(alignment: .leading, spacing: 5) {
                Text("Rezo")
                    .font(.footnote)
                    .fontWeight(.bold)

                
                Text(pray)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.light)
            }
            .font(.callout)
            .padding()
            .background(.secondary)
            
            Spacer()
                        
        }
        .frame(maxWidth: .infinity, minHeight: 130)
    }
}

struct OddunProverbsList: View {
    let proverbsArray: [String]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Refranes")
                .font(.callout)
                .fontWeight(.bold)
            
            ForEach(proverbsArray, id: \.self) { dt in
                HStack {
                    Text("*")
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    Text(dt)
                        .font(.callout)
                        .padding(.trailing)
                        .fontWeight(.light)
                }
            }
        }
        .padding()
    }
}

struct OddunProhibitionsEbbosList: View {
    let prohibitions: [String]
    let ebbos: [String]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Prohibitions")
                .font(.callout)
                .fontWeight(.bold)
            
            ForEach(prohibitions, id: \.self) { dt in
                HStack {
                    Text("*")
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    Text(dt)
                        .font(.callout)
                        .fontWeight(.light)
                        .padding(.trailing)
                }
            }
        }
        .padding()
        
        VStack (alignment: .leading, spacing: 10) {
            Text("Ebbos")
                .font(.callout)
                .fontWeight(.bold)
            
            ForEach(ebbos, id: \.self) { dt in
                HStack {
                    Text("*")
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    Text(dt)
                        .font(.callout)
                        .fontWeight(.light)
                        .padding(.trailing)
                }
            }
        }
        .padding()
    }
}

struct OddunGeneralPositiveNegative: View {
    let oddun: Oddun
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("General")
                    .fontWeight(.bold)
                
                Text(oddun.general)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.light)
                
                Text("En Positivo")
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text(oddun.inPositive)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.light)
                
                Text("En Negativo")
                    .fontWeight(.bold)  
                    .padding(.top)
                
                Text(oddun.inNegative)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.light)
            }
            .font(.callout)
            .padding(.horizontal)
            
            Spacer()
                        
        }
        .frame(maxWidth: .infinity, minHeight: 180)
    }
    
    struct OddunProhibitionsList: View {
        let prohibitions: [String]
        
        var body: some View {
            VStack (alignment: .leading, spacing: 10) {
                Text("Prohibitions")
                    .font(.callout)
                    .fontWeight(.bold)
                
                ForEach(prohibitions, id: \.self) { dt in
                    HStack {
                        Text("*")
                            .fontWeight(.bold)
                            .padding(.leading)
                        
                        Text(dt)
                            .font(.callout)
                            .padding(.trailing)
                            .fontWeight(.light)
                    }
                }
            }
            .padding()
        }
    }
}
