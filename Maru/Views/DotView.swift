//
//  DotView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct DotView: View {
    @EnvironmentObject var viewModel: UnitCircleViewModel
    @State private var animateDots = false

    var body: some View {
        ForEach(Array(zip(viewModel.angles.indices, viewModel.angles)), id: \.0) { index, angle in
            unitCirclePoints(from: viewModel.center, radius: viewModel.radius, angle: angle, animate: animateDots)
            //(2/17) is a magic number, 2s divided by 16 points, but the points appear too fast, so made it 17.
            .animation(Animation.interpolatingSpring(stiffness: 70, damping: 6).delay(Double(index) * (2/17)), value: animateDots)
        }.onAppear {
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
