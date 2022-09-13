//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 29/08/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop: Shop

    
    var body: some View {
        HStack {
            Button(action: {
              withAnimation(.easeIn) {
                feedback.impactOccurred()
                shop.selectedProduct = nil
                shop.showingProduct = false
              }
            }, label: {
              Image(systemName: "chevron.left")
                .font(.title)
            })
            
            Spacer()
            
            Button(action: {}, label: {
              Image(systemName: "cart")
                .font(.title)
            })
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            
    }
}
