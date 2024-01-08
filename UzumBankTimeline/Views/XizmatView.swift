//
//  XizmatView.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 29/12/23.
//

import SwiftUI

struct XizmatView: View {
    @State var text = ""
    var body: some View {
        NavigationView{
            
                VStack{
                    Text("Qo'llab quvvatlash xizmati")
                        .font(.system(size: 20))
                    Text("Xizmatda")
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("Assalomu aleykum! Aloqada Uzum Bank \nqo'llab-quvvatlash xizmati. Sizni qiziqtirgan \nsavolni yozing va biz sizga bajonidil yordam beramiz. ")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "paperclip")
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding(10)
                                .background(.gray.opacity(0.1))
                                .cornerRadius(30)
                        })
                        TextField("Xabar yozish...", text: $text)
                            .padding(.leading)
                            .frame(width: 300,height: 50)
                            .background(.gray.opacity(0.1))
                            .cornerRadius(20)
                    }.padding()
                }.frame(width: .infinity,height: .infinity)
            
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    HStack(alignment:.firstTextBaseline){
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), label: {
                            VStack{
                                Image(systemName: "house")
                                Text("Bosh menyu").font(.system(size: 10))
                            }.foregroundColor(.gray)
                           
                        })
                        NavigationLink(destination: OtkazmaView().navigationBarBackButtonHidden(true), label: {
                            VStack{
                                Image(systemName: "arrowshape.zigzag.forward")
                                Text("O'tkazma").font(.system(size: 10))
                            }.foregroundColor(.gray)
                           
                        })
                        NavigationLink(destination: TolovView().navigationBarBackButtonHidden(true), label: {
                            VStack{
                                Image(systemName: "creditcard")
                                Text("To'lovlar").font(.system(size: 10))
                            }.foregroundColor(.gray)
                           
                        })
                        NavigationLink(destination: XizmatView().navigationBarBackButtonHidden(true), label: {
                            VStack{
                                Image(systemName: "message")
                                Text("Qo'llab quvvatlash").font(.system(size: 10))
                            }.foregroundColor(.purple)
                           
                        })
                        NavigationLink(destination: MenyuView().navigationBarBackButtonHidden(true), label: {
                            VStack{
                                Image(systemName: "square.grid.2x2")
                                Text("Menyu").font(.system(size: 10))
                            }.foregroundColor(.gray)
                           
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    XizmatView()
}
