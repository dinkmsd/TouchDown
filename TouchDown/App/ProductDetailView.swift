//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 29/08/2022.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            NavigationBarDetailView()
            .padding(.horizontal)
            HeaderDetailView(product: products[0])
            .padding(.horizontal)
            TopPartDetailView(product: products[0])
                .padding(.horizontal)
                .zIndex(1)
            VStack {
                RatingsSizesDetailView()
                ScrollView (.vertical, showsIndicators: false){
                    Text(products[0].description)
                      .font(.system(.body, design: .rounded))
                      .foregroundColor(.gray)
                      .multilineTextAlignment(.leading)
                    
                }
                QuantityFavouriteDetailView()
                AddItemView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(
              Color.white
                .clipShape(CustomShape())
                .padding(.top, -105)
            )
            
        }
        .ignoresSafeArea(.all, edges: .bottom)
        .background(
          Color(
            red: sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue
          )
          .ignoresSafeArea(.all, edges: .all)
          )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
