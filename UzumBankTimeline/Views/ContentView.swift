//
//  ContentView.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators:false){
               
                    HeaderCell()
                    KeshCell()
                    HStack{
                        Text("Uzum bilan foyda")
                            .foregroundColor(.secondary)
                        Spacer()
                    }.padding(.leading)
                ScrollView(.horizontal){
                    FoydaCell()
                }.padding(.leading)
                HStack{
                    Text("Tez kirish")
                        .foregroundColor(.secondary)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Text("Taxrirlash")
                            .foregroundColor(.purple)
                    })
                }.padding(.horizontal)
                ScrollView(.horizontal,showsIndicators:false){
                    HStack{
                        KirishCell(img: "person", name: "Mening raqamim")
                        KirishCell(img: "house", name: "Mening uyim")
                        KirishCell(img: "creditcard", name: "Mening \nkartalarim")
                        KirishCell(img: "arrow.uturn.left", name: "Valyuta \nayirboshlash")
                        KirishCell(img: "person", name: "Mening raqamim")
                        KirishCell(img: "person", name: "Mening raqamim")
                        KirishCell(img: "person", name: "Mening raqamim")
                        KirishCell(img: "person", name: "Mening raqamim")
                        KirishCell(img: "person", name: "Mening raqamim")
                        KirishCell(img: "person", name: "Mening raqamim")
                        KirishCell(img: "person", name: "Mening raqamim")
                    }
                }.padding(.leading)
                
                HStack{}.frame(width: .infinity ,height: 200)
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarItems(leading:
                                    HStack{
                Button(action: {
                    
                }, label: {
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                        .frame(width: 40,height: 40)
                        .background(.purple.opacity(1))
                        .cornerRadius(20)
                })
                Button(action: {
                    
                }, label: {
                    HStack{
                        Image(systemName: "magnifyingglass").padding(.leading)
                        Text("Qidiruv...")
                        Spacer()
                    }.foregroundColor(.white)
                        .frame(width: 250,height: 40)
                        .background(.purple.opacity(1))
                        .cornerRadius(20)
                })
                
            }
            ,trailing: Button(action: {
                
            }, label: {
                Image(systemName: "bell.badge.fill")
                    .foregroundColor(.white)
                    .frame(width: 40,height: 40)
                    .background(.purple.opacity(0.9))
                    .cornerRadius(20)
            })
            )
          
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    HStack(alignment:.firstTextBaseline){
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true), label: {
                            VStack{
                                Image(systemName: "house")
                                Text("Bosh menyu").font(.system(size: 10))
                            }.foregroundColor(.purple)
                           
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
                            }.foregroundColor(.gray)
                           
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
