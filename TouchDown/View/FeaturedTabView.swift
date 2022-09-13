//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 28/08/2022.
//

import SwiftUI

struct FeaturedTabView: View {
    let players: [Player] = Bundle.main.decode("player.json")
    var body: some View {
        TabView {
            ForEach(players) {
                item in
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.horizontal, 8)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
    }
}
