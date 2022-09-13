//
//  AddItemView.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 29/08/2022.
//

import SwiftUI

struct AddItemView: View {
    var body: some View {
        Button {
            print("Pressed add item")
        } label: {
            ZStack {
                Text("Add to cart".uppercased())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(
            Capsule()
                .fill()
            )
        }

    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
