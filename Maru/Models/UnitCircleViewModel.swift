//
//  UnitCircleViewModel.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import Foundation
import SwiftUI
import Combine

class UnitCircleViewModel: ObservableObject {
  @Published var center: CGPoint = .zero
  @Published var angle: Double = 0
  @Published var containerSize: CGSize = .zero{
    didSet {
      updateCenter()
    }
  }
  
  private func updateCenter() {
      center = CGPoint(x: containerSize.width / 2, y: containerSize.height / 2)
  }
}


