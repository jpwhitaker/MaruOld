//
//  DotView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

import SwiftUI

struct DotView: View {
  @EnvironmentObject var viewModel: UnitCircleViewModel
  @State private var animateDots = false
  
  var body: some View {
    GeometryReader { geometry in
      ForEach(Array(zip(viewModel.angles.indices, viewModel.angles)), id: \.0) { index, angle in
        unitCirclePoints(
          from: CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2),
          radius: min(geometry.size.width, geometry.size.height) / 2,
          angle: angle,
          animate: animateDots
        )
        .animation(Animation.interpolatingSpring(stiffness: 70, damping: 6).delay(Double(index) * (2/17)), value: animateDots)
      }
    }
    .onAppear {
      DispatchQueue.main.asyncAfter(deadline: .now() + 0) {
        animateDots = true
      }
    }
  }
}

#Preview {
  ContentView()
}

extension View {
  func unitCirclePoints(from startPoint: CGPoint, radius: CGFloat, angle: Double, animate: Bool) -> some View {
    let endPoint = CGPoint(
      x: startPoint.x + radius * CGFloat(cos(-angle * .pi / 180)),
      y: startPoint.y + radius * CGFloat(sin(-angle * .pi / 180))
    )
    
    return Circle()
      .fill(Color.red)
      .frame(width: 10, height: 10)
      .scaleEffect(animate ? 1.0 : 0.0)
      .position(endPoint)
  }
}
