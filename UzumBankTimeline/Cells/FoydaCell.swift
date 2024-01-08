//
//  FoydaCell.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 06/01/24.
//

import SwiftUI

struct FoydaCell: View {
    var body: some View {
        HStack(spacing:15){
            ZStack(alignment:.topTrailing){
                VStack(alignment:.leading){
                    Text("3 oyga 0 foizli muddatli to'lov, 5 000 000 so'mga...")
                        .font(.system(size: 14))
                    Spacer()
                    Text("Limitni aniqlash").font(.system(size: 14))
                        .foregroundStyle(.purple).bold()
                }.frame(width: 120,height: 80).padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
                Image(systemName: "star.fill")
                    .font(.title2)
                    .foregroundColor(.blue.opacity(0.8))
                    .padding(5)
            }
          
            ZStack(alignment:.topTrailing){
                VStack(alignment:.leading){
                    Text("Uzum Market'da \n5% gacha keshbek ")
                        .font(.system(size: 14))
                    Spacer()
                    Text("Xarid qilishga").font(.system(size: 14))
                        .foregroundStyle(.purple).bold()
                }.frame(width: 120,height: 80).padding()
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
                Image(systemName: "u.circle.fill")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .padding(5)
            }
               
           
        }.frame(width: .infinity,height: 150)
            
    }
}

#Preview {
    FoydaCell()
}
