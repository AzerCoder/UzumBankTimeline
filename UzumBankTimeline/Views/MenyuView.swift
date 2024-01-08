//
//  MenyuView.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 29/12/23.
//

import SwiftUI

struct MenyuView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "u.square.fill")
                                .foregroundColor(.purple)
                                .font(.title2)
                            VStack(alignment:.leading){
                                Text("Uzum Market")
                                    .padding(.bottom,5)
                                Text("Tovarlarni 1 kunda yetkazib berish")
                                    .font(.system(size: 16))
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.black)
                    }).padding(.top)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "u.square.fill")
                                .foregroundColor(.blue)
                                .font(.title2)
                            VStack(alignment:.leading){
                                Text("Uzum Tezkor")
                                    .padding(.bottom,5)
                                Text("Issiq taomni 20 daqiqada yetqazib berish")
                                    .font(.system(size: 16))
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.black)
                    }).padding(.top)
                    
                    MenuCell(img: "clock.arrow.circlepath", name: "Monitoring")
                        .padding(.top,50)
                    MenuCell(img: "creditcard", name: "Kartalar")
                    MenuCell(img: "creditcard.and.123", name: "Karta buyurtma berish")
                    MenuCell(img: "cellularbars", name: "Omonatlar")
                    MenuCell(img: "hand.tap", name: "Kreditlar")
                    MenuCell(img: "creditcard", name: "Hisob raqamlar")
                    MenuCell(img: "creditcard", name: "Hamyonlar")
                    MenuCell(img: "arrow.triangle.2.circlepath", name: "Kross kurs ayirboshlash")
                        
                }
            }.padding(.horizontal)
            
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
                            }.foregroundColor(.gray)
                           
                        })
                        NavigationLink(destination: MenyuView().navigationBarBackButtonHidden(true), label: {
                            VStack{
                                Image(systemName: "square.grid.2x2")
                                Text("Menyu").font(.system(size: 10))
                            }.foregroundColor(.purple)
                           
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    MenyuView()
}
