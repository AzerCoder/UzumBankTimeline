//
//  KeshCell.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 06/01/24.
//

import SwiftUI

struct KeshCell: View {
    var body: some View {
        HStack(spacing:15){
            VStack(alignment:.leading){
                Text("keshbek 20% gacha")
                    .font(.system(size: 14))
                Spacer()
                Text("3 876 so'm")
                    .font(.title3)
                    .bold()
                Text("ishlagan").font(.system(size: 14))
                    .foregroundStyle(.secondary)
            }.frame(width: 160,height: 100).padding(.vertical)
                .padding(.trailing)
                .background(.gray.opacity(0.1))
                .cornerRadius(20)
            
            VStack{
                HStack{
                    Image(systemName: "doc.text.below.ecg.fill")
                    Text("To'lov").font(.system(size: 14))
                }.frame(width: 160,height: 30).padding(.vertical)
                    .padding(.trailing)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
                HStack{
                    Image(systemName: "qrcode")
                    Text("Uzum pay").font(.system(size: 14))
                }.frame(width: 160,height: 30).padding(.vertical)
                    .padding(.trailing)
                    .background(.gray.opacity(0.1))
                    .cornerRadius(20)
            }
        }.frame(width: .infinity,height: 200)
            
      
    }
}

#Preview {
    KeshCell()
}
