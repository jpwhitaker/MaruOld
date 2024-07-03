//
//  UnitCircleViewModel.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import Foundation
import SwiftUI
import Combine

struct UnitCircleOptions {
    var showLabels: Bool = true
    var showQuadrants: Bool = true
    var onlyAngles: [(start: Double, end: Double)]? = nil
    var onlyDots: [Double]? = nil
}

class UnitCircleViewModel: ObservableObject {
  @Published var defaultOptions = UnitCircleOptions()
  
  @Published var angles: [Double] = [0, 30, 45, 60, 90, 120, 135, 150, 180, 210, 225, 240, 270, 300, 315, 330]
  
  @Published var  angleLabels: [String] = [
    "0", "\\frac{\\pi}{6}", "\\frac{\\pi}{4}", "\\frac{\\pi}{3}", "\\frac{\\pi}{2}",
    "\\frac{2\\pi}{3}", "\\frac{3\\pi}{4}", "\\frac{5\\pi}{6}", "\\pi",
    "\\frac{7\\pi}{6}", "\\frac{5\\pi}{4}", "\\frac{4\\pi}{3}", "\\frac{3\\pi}{2}",
    "\\frac{5\\pi}{3}", "\\frac{7\\pi}{4}", "\\frac{11\\pi}{6}"
  ]
  
}
