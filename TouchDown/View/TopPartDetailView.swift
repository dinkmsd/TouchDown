//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 29/08/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    let product: Product
    var body: some View {
        HStack (alignment: .center){
            VStack (alignment: .leading, spacing: 8){
                Text("Price")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("\(product.price)$")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
            .offset(y: -30)
            Spacer()
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, alignment: .center)
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: products[0])
    }
}
