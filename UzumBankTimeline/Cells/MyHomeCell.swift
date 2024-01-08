//
//  MyHomeCell.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 06/01/24.
//

import SwiftUI

struct MyHomeCell: View {
    var body: some View {
       Button(action: {
           
       }, label: {
           HStack{
               Image(systemName: "house")
                   .font(.title2)
                   .foregroundColor(.purple)
               Text("Mening uyim")
               Spacer()
           }.padding()
               .foregroundColor(.black)
               .frame(width: 220,height: 60)
               .background(.gray.opacity(0.1))
               .cornerRadius(20)
       })
    }
}

#Preview {
    MyHomeCell()
}
