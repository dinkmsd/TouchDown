//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 28/08/2022.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            
            Button(action: {
               print("Pressed search button!")
            
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.horizontal)
            })
            Spacer()
            Text("touch".uppercased())
                .font(.headline.bold())
                .fontWeight(.heavy)

            Image("logo-lineal")
                .resizable()
                .scaledToFit()
                .frame(width: 30, alignment: .center)
            Text("down".uppercased())
                .font(.headline)
                .fontWeight(.heavy)
            Spacer()
            Button {
                
            } label: {
                
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                    .overlay(
                        Circle()
                            .fill(.red)
                            .frame(width: 12, height: 12)
                            .offset(x: 12, y: -8)
                    )
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
