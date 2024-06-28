//
//  AngleView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct AngleView: View {
    @EnvironmentObject var viewModel: UnitCircleViewModel
    @State private var animateLines = false
    @State var angles: [(start: Double, end: Double)] = [
        (0, 180), (30, 210), (60, 240), (90, 270), (120, 300), (150, 330)
    ]
    
    var body: some View {
        ZStack {
            ForEach(0..<angles.count, id: \.self) { index in
                LineShape(startAngle: self.angles[index].start, endAngle: self.angles[index].end)
                    .trim(from: 0, to: self.animateLines ? 1 : 0)
                    .stroke(Color.black, lineWidth: 2)
                    .opacity(self.animateLines ? 1 : 0.2)
                    .animation(
                        .linear(duration: 2 * (self.angles[index].end - self.angles[index].start) / 360)
                            .delay(2 * self.angles[index].start / 360),
                        value: animateLines
                    )
            }
        }
        .onAppear {
            withAnimation {
                self.animateLines = true
            }
        }
    }
}

struct LineShape: Shape {
    var startAngle: Double
    var endAngle: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let startPoint = CGPoint(
            x: center.x + radius * cos(CGFloat(-startAngle * .pi / 180)),
            y: center.y + radius * sin(CGFloat(-startAngle * .pi / 180))
        )
        let endPoint = CGPoint(
            x: center.x + radius * cos(CGFloat(-endAngle * .pi / 180)),
            y: center.y + radius * sin(CGFloat(-endAngle * .pi / 180))
        )
        path.move(to: startPoint)
        path.addLine(to: endPoint)
        
        return path
    }
}


#Preview {
  ContentView()
}
