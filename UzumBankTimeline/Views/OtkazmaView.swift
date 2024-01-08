//
//  OtkazmaView.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 29/12/23.
//

import SwiftUI

struct OtkazmaView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment:.leading){
                    Text("O'tkazmalar").bold()
                        .font(.title)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "creditcard").font(.title2)
                            VStack(alignment:.leading){
                                Text("Karta raqami bo'yicha")
                                Text("O'zbekiston bo'yicha")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.black)
                    }).padding(.top)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "creditcard").font(.title2)
                            VStack(alignment:.leading){
                                Text("Hamyon raqami bo'yicha")
                                Text("Uzum bankning boshqa mijoziga")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.black)
                    }).padding(.top)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "creditcard").font(.title2)
                            VStack(alignment:.leading){
                                Text("Hisob raqami bo'yicha")
                                Text("Uzum bankning boshqa mijoziga")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.black)
                    }).padding(.top)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "list.bullet").font(.title2)
                            VStack(alignment:.leading){
                                Text("Rekvizitlar bo'yicha")
                                Text("Boshqa bankga o'tkazish yoki to'lash")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.black)
                    }).padding(.top)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "dollarsign.arrow.circlepath").font(.title2)
                            VStack(alignment:.leading){
                                Text("Valyuta ayirboshlar")
                                Text("Sotib olish va sotish")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.black)
                    }).padding(.top)
                    
                    Text("Xalqaro").bold()
                        .font(.title)
                        .padding(.vertical)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "arrow.down.left").font(.title2)
                            VStack(alignment:.leading){
                                Text("Rossiyadan")
                                Text("Xizmat vaqtizchalik faol emas")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.secondary)
                    }).padding(.top)
                    
                    Button(action: {
                        
                    }, label: {
                        HStack{
                            Image(systemName: "arrow.up.right").font(.title2)
                            VStack(alignment:.leading){
                                Text("Rossiyaga")
                                Text("Xizmat vaqtizchalik faol emas")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Image(systemName: "greaterthan")
                        }.foregroundColor(.secondary)
                    }).padding(.top)
                    
                }.padding(.horizontal).padding(.top)
            }
            
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
                            }.foregroundColor(.purple)
                           
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
                            }.foregroundColor(.gray)
                           
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    OtkazmaView()
}
