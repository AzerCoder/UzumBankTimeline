//
//  HeaderCell.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 29/12/23.
//

import SwiftUI

struct HeaderCell: View {
    var body: some View {
        VStack{
            ZStack(alignment:.bottom){
                Text("").frame(maxWidth: .infinity,maxHeight:400)
                    .background(Color(hue: 0.759, saturation: 0.922, brightness: 0.928))
                VStack{
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "gearshape.fill").bold()
                                .foregroundColor(.white)
                        })
                        Spacer()
                        Text("304 000,6 so'm").bold()
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "eye.slash").bold()
                                .foregroundColor(.white)
                        })
                    }
                    HStack{
                        VStack(alignment:.leading){
                            Text("300 984,7 so'm")
                            Spacer()
                            HStack{
                                Text("7989")
                                Spacer()
                                Text("Humo")
                            }
                        }.padding(8).foregroundColor(.white)
                            .frame(width: 150,height: 100)
                            .background(.blue.opacity(0.5))
                            .cornerRadius(20)
                        VStack(alignment:.leading){
                            Text("984,7 so'm")
                            Spacer()
                            HStack{
                                Text("3320")
                                Spacer()
                                Text("Humo")
                            }
                        }.padding(8).foregroundColor(.white)
                            .frame(width: 150,height: 100)
                            .background(.black.opacity(0.2))
                            .cornerRadius(20)
                        
                    }
                    ZStack{
                        HStack{}.frame(width: 50,height: 50)
                            .background(.white)
                            .cornerRadius(25)
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "arrow.clockwise.circle.fill")
                                .resizable()
                                .frame(width: 40,height: 40)
                                .foregroundColor(Color(hue: 0.759, saturation: 0.922, brightness: 0.928))
                        })
                        
                    }
                    .padding(.bottom,-25)
                    .padding(.top)
                }.padding(.horizontal)
            }
        }.frame(width: .infinity ,height:320)
    }
}

#Preview {
    HeaderCell()
}
