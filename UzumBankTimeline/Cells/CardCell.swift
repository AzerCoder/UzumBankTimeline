//
//  CardCell.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 06/01/24.
//

import SwiftUI

struct CardCell: View {
    @State var img = "house"
    @State var name = "qr kode"
    var body: some View {
        Button(action: {
            
        }, label: {
            VStack{
                Image(systemName: img)
                    .padding(.top)
                    .font(.title)
                    .foregroundColor(.purple)
                Spacer()
                Text(name).bold()
                    .font(.system(size: 12))
                    .foregroundColor(.black)
            }.padding(.vertical)
            .frame(width: 110,height: 120)
                .background(.gray.opacity(0.1))
                .cornerRadius(20)
        })
        
    }
}

#Preview {
    CardCell()
}
