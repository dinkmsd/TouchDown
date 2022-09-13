//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 29/08/2022.
//

import SwiftUI

struct HeaderDetailView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading) {
            Text("Protective gear")
                .font(.title3)
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: products[0])
    }
}
