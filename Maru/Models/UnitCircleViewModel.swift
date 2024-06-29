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
  @Published var radius: Double = 0
  @Published var shouldReplayAnimation = false

//  @Published var containerSize: CGSize = .zero{
//    didSet {
//      updateCenter()
//      updateRadius()
//    }
//  }
  @Published var angles: [Double] = [0, 30, 45, 60, 90, 120, 135, 150, 180, 210, 225, 240, 270, 300, 315, 330]
  
  @Published var  angleLabels: [String] = [
    "0", "\\frac{\\pi}{6}", "\\frac{\\pi}{4}", "\\frac{\\pi}{3}", "\\frac{\\pi}{2}",
    "\\frac{2\\pi}{3}", "\\frac{3\\pi}{4}", "\\frac{5\\pi}{6}", "\\pi",
    "\\frac{7\\pi}{6}", "\\frac{5\\pi}{4}", "\\frac{4\\pi}{3}", "\\frac{3\\pi}{2}",
    "\\frac{5\\pi}{3}", "\\frac{7\\pi}{4}", "\\frac{11\\pi}{6}"
  ]
  
//  private func updateCenter() {
//      center = CGPoint(x: containerSize.width / 2, y: containerSize.height / 2)
//  }
//  
//  private func updateRadius() {
//      radius = containerSize.width / 2
//    print("Radius:")
//    print(radius)
//  }
}


