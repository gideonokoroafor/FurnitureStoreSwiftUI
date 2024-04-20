//
//  HomePageView.swift
//  funiture-store-swiftui
//
//  Created by Gideon Okoroafor on 4/18/24.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var cartManger: CartManager
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack(alignment: .top){
                    Color.white
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    VStack{
                        AppBar()
                        
                        SearchView()
                        
                        ImageSliderView()
                        
                        HStack{
                            Text("New Rivals")
                                .font(.title2)
                                .fontWeight(.medium)
                            Spacer()
                            NavigationLink(destination: {
                                ProductsView()
                            }, label: {
                                Image(systemName: "circle.grid.2x2.fill")
                                    .foregroundColor(Color("kPrimary"))
                            })
                            
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10){
                                ForEach(productList, id: \.id){
                                    product in
                                    NavigationLink{
                                        ProductDetailsView(product: product)
                                    } label: {
                                        ProductCardView(product: product)
                                            .environmentObject(cartManger)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        HStack{
                            Text("New Rivals")
                                .font(.title2)
                                .fontWeight(.medium)
                            Spacer()
                            NavigationLink(destination: {
                                ProductsView()
                            }, label: {
                                Image(systemName: "circle.grid.2x2.fill")
                                    .foregroundColor(Color("kPrimary"))
                            })
                            
                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10){
                                ForEach(productList, id: \.id){
                                    product in
                                    NavigationLink{
                                        Text(product.name)
                                    } label: {
                                        ProductCardView(product: product)
                                            .environmentObject(cartManger)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                }
            }
        }
        .environmentObject(cartManger)
    }
}

#Preview {
    HomePageView()
        .environmentObject(CartManager())
}

struct AppBar: View {
    @EnvironmentObject var cartManger: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Minneapolis, MN")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManger)
                    ){
                        CartButton(numberOfProducts: cartManger.products.count)
                    }
                }
                Text("Find The Most \nLuxurios")
                    .font(.largeTitle .bold())
                
                + Text(" Furnitures")
                    .font(.largeTitle .bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
