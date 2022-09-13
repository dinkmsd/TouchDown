//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 28/08/2022.
//

import SwiftUI

struct ProductItemView: View {
    
    
    let product: Product
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .background(Color(red: product.red, green: product.green, blue: product.blue))
                .cornerRadius(12)
            Text(product.name)
                .font(.title3)
                .fontWeight(.heavy)
            Text("\(product.price)$")
                .font(.footnote)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
    }
}
