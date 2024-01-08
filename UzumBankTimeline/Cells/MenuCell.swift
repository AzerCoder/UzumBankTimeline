//
//  MenuCell.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 07/01/24.
//

import SwiftUI

struct MenuCell: View {
    @State var img = "creditcard"
    @State var name = "Kartalar"
    var body: some View {
        HStack{
            Image(systemName: img)
                .font(.title2)
            Text(name)
            Spacer()
            Image(systemName: "greaterthan")
        }.padding(.vertical)
    }
}

#Preview {
    MenuCell()
}
