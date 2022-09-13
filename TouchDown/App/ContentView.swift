//
//  ContentView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 28/08/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack {
            NavigationBarView()
                .padding(.vertical, 8)
                .background(
                    )
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    FeaturedTabView()
                    .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                  .padding(.vertical, 20)
                    CategoryGridView()
                    HStack {
                        Text("Helmets")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.leading)
                            Spacer()
                    }
                    LazyVGrid(columns: gridLayout, spacing: 15) {
                        ForEach(products){
                            item in
                            ProductItemView(product: item)
                                
                        }
                    }
                    .padding(.horizontal)
                }
            }
            
        }
        .background(
            colorBackground
            //rgba(250, 211, 144,1.0)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
