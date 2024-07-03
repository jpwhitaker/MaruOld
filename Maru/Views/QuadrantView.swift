//
//  CircleView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI

struct Quadrant: View {
    @EnvironmentObject var viewModel: UnitCircleViewModel
    @State private var animationProgress: CGFloat = 0
    @State private var animateOpacityQI = false
    @State private var animateOpacityQII = false
    @State private var animateOpacityQIII = false
    @State private var animateOpacityQIV = false

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let circleRadius = (min(geometry.size.width, geometry.size.height) / 2) + 70

                // Quadrant labels
                Text("QI")
                    .foregroundColor(.gray)
                    .opacity(animateOpacityQI ? 1 : 0)
                    .position(
                        x: geometry.size.width / 2 + circleRadius * cos(CGFloat.pi / 4),
                        y: geometry.size.height / 2 - circleRadius * sin(CGFloat.pi / 4)
                    )
                    .onAppear {
                      withAnimation(Animation.easeIn(duration: 1).delay(0.2)) {
                            animateOpacityQI = true
                        }
                    }
                Text("QII")
                    .foregroundColor(.gray)
                    .opacity(animateOpacityQII ? 1 : 0)
                    .position(
                        x: geometry.size.width / 2 - circleRadius * cos(CGFloat.pi / 4),
                        y: geometry.size.height / 2 - circleRadius * sin(CGFloat.pi / 4)
                    )
                    .onAppear {
                      withAnimation(Animation.easeIn(duration: 1).delay(0.4)) {
                            animateOpacityQII = true
                        }
                    }
                Text("QIII")
                    .foregroundColor(.gray)
                    .opacity(animateOpacityQIII ? 1 : 0)
                    .position(
                        x: geometry.size.width / 2 - circleRadius * cos(CGFloat.pi / 4),
                        y: geometry.size.height / 2 + circleRadius * sin(CGFloat.pi / 4)
                    )
                    .onAppear {
                      withAnimation(Animation.easeIn(duration: 1).delay(0.6)) {
                            animateOpacityQIII = true
                        }
                    }
                Text("QIV")
                    .foregroundColor(.gray)
                    .opacity(animateOpacityQIV ? 1 : 0)
                    .position(
                        x: geometry.size.width / 2 + circleRadius * cos(CGFloat.pi / 4),
                        y: geometry.size.height / 2 + circleRadius * sin(CGFloat.pi / 4)
                    )
                    .onAppear {
                      withAnimation(Animation.easeIn(duration: 1).delay(0.8)) {
                            animateOpacityQIV = true
                        }
                    }
            }
        }
    }
}




#Preview {
  GeometryReader { geometry in
    VStack {
      Spacer()
      HStack {
        Spacer()
        CircleContainer()
          .environmentObject(UnitCircleViewModel())
          .frame(width: geometry.size.width * 0.75)
        Spacer()
      }
      Spacer()
    }
  }
}
