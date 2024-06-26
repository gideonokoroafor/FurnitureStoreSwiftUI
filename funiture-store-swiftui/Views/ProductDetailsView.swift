//
//  ProductDetailsView.swift
//  funiture-store-swiftui
//
//  Created by Gideon Okoroafor on 4/19/24.
//

import SwiftUI

struct ProductDetailsView: View {
    var product: Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                        
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            Spacer()
                            Text("$\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                        }
                        .padding(.vertical)
                        
                        HStack {
                            HStack(spacing: 10){
                                ForEach(0..<5){index in
                                    Image(systemName: "star.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.yellow)
                                }
                                Text("(4.5)")
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical)
                            
                            Spacer()
                            
                            HStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "minus.square")
                                })
                                
                                Text("1")
                                    .font(.title3)
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "plus.square.fill")
                                        .foregroundColor(Color("kPrimary"))
                                })
                            }
                        }
                        
                        Text("Description")
                            .font(.title3)
                        
                        Text(product.description)
                            .padding(.bottom)
                        
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                
                                Text("Height: \(product.height)")
                                    .foregroundColor(.gray)
                                
                                Text("Width: \(product.height)")
                                    .foregroundColor(.gray)
                                
                                Text("Diameter: \(product.height)")
                                    .foregroundColor(.gray)
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing) {
                                Text("Colors")
                                    .font(.system(size: 18))
                                    .fontWeight(.semibold)
                                
                                HStack{
                                    ProductColorView(color: .brown)
                                    ProductColorView(color: .blue)
                                    ProductColorView(color: .gray)
                                }
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                        .padding(.vertical)
                        
                        PaymentButton(action: {})
                            .frame(width: .infinity, height: 40)
                    }
                    .padding()
                    .background(.white)
                    .cornerRadius(20)
                    .offset(y: -30)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    ProductDetailsView(product: productList[4])
}


struct ProductColorView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 25, height: 25)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}
