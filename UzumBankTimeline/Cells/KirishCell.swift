//
//  KirishCell.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 06/01/24.
//

import SwiftUI

struct KirishCell: View {
    @State var img = "person"
    @State var name = "Maning raqamim"
    var body: some View {
        
        Button(action: {
            
        }, label: {
            VStack{
                Image(systemName:img)
                    .font(.title)
                    .padding().background(.gray.opacity(0.1))
                    .cornerRadius(30)
                Text(name)
                    .font(.system(size: 14))
            }.foregroundColor(.black)
        })
        
    }
}

#Preview {
    KirishCell()
}
