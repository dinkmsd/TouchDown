//
//  CustomShape.swift
//  TouchDown
//
//  Created by Lộc Xuân  on 28/08/2022.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? // = products[0]
}
