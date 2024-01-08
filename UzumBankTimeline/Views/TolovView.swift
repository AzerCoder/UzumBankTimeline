//
//  TolovView.swift
//  UzumBankTimeline
//
//  Created by A'zamjon Abdumuxtorov on 29/12/23.
//

import SwiftUI

struct TolovView: View {
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                VStack(alignment:.leading){
                    ScrollView(.horizontal){
                        
                        HStack(spacing:15){
                            CardCell(img: "barcode.viewfinder", name: "QR-kodni \nskanerlash")
                            CardCell(img: "star", name: "Shablon yaratish")
                        }
                    }
                    
                    Text("Mening uylarim")
                        .foregroundColor(.secondary)
                        .padding(.vertical).padding(.top)
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            MyHomeCell()
                            MyHomeCell()
                            MyHomeCell()
                        }
                    }
                    Text("Hamma servislar")
                        .foregroundColor(.secondary)
                        .padding(.vertical).padding(.top)
                    HStack(spacing:15){
                        CardCell(img: "list.bullet.rectangle.portrait", name: "Rekvizitlar bo'yicha to'lash")
                        CardCell(img: "iphone.gen3", name: "Aloqa")
                        CardCell(img: "birthday.cake.fill", name: "Umumiy ovqatlanish")
                    }
                    HStack(spacing:15){
                        CardCell(img: "house.circle", name: "Savdo")
                        CardCell(img: "house", name: "Kommunallar")
                        CardCell(img: "syringe.fill", name: "Tibbiyot")
                    }
                    HStack(spacing:15){
                        CardCell(img: "wifi", name: "Provayderlari")
                        CardCell(img: "graduationcap.fill", name: "Ta'lim")
                        CardCell(img: "theatermasks.fill", name: "O'yin-kulgi")
                    }
                    HStack(spacing:15){
                        CardCell(img: "bus", name: "Transport")
                        CardCell(img: "tv", name: "TV")
                        CardCell(img: "phone.badge.waveform", name: "Telefoniya")
                    }
                    HStack(spacing:15){
                        CardCell(img: "fireplace", name: "Byudjet")
                        CardCell(img: "creditcard", name: "Kreditlar")
                        CardCell(img: "soccerball.inverse", name: "Sport")
                    }
                    HStack(spacing:15){
                        CardCell(img: "airplane.departure", name: "Turizm")
                        CardCell(img: "globe", name: "Xizmatlar")
                        CardCell(img: "gamecontroller.fill", name: "O'yinlar")
                    }
                    
                }
            }.padding()
            .navigationBarTitle("To'lov",displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
            }))
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
                            }.foregroundColor(.purple)
                           
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
    TolovView()
}
