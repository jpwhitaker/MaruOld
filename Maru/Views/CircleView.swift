//
//  CircleView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI

struct CircleView: View {
  @EnvironmentObject var viewModel: UnitCircleViewModel
  @State private var animationProgress: CGFloat = 0

  
  var body: some View {
    ZStack {
      Circle()
        .fill(Color.white)
        .overlay(
          Circle()
            .trim(from: 0, to: animationProgress)
            .stroke(Color.blue, lineWidth: 4)
            .scaleEffect(x: -1, y: 1)
            .rotationEffect(.degrees(-180))
            .animation(.linear(duration: 2.0), value: animationProgress) // Adjust duration as needed
        )
    }
    .onAppear {
      animationProgress = 1.0
    }
  }
}

#Preview {
  ContentView()
    .environmentObject(UnitCircleViewModel())
}
