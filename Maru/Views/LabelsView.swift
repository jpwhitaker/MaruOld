import SwiftUI

struct LabelsView: View {
    @EnvironmentObject var viewModel: UnitCircleViewModel
    
    let angles: [Double] = [0, 30, 45, 60, 90, 120, 135, 150, 180, 210, 225, 240, 270, 300, 315, 330]
    
    let angleLabels: [String] = [
        "0", "\\frac{\\pi}{6}", "\\frac{\\pi}{4}", "\\frac{\\pi}{3}", "\\frac{\\pi}{2}",
        "\\frac{2\\pi}{3}", "\\frac{3\\pi}{4}", "\\frac{5\\pi}{6}", "\\pi",
        "\\frac{7\\pi}{6}", "\\frac{5\\pi}{4}", "\\frac{4\\pi}{3}", "\\frac{3\\pi}{2}",
        "\\frac{5\\pi}{3}", "\\frac{7\\pi}{4}", "\\frac{11\\pi}{6}"
    ]
    
    let points: [String] = [
        "(1, 0)", "\\left(\\frac{\\sqrt{3}}{2}, \\frac{1}{2}\\right)", "\\left(\\frac{\\sqrt{2}}{2}, \\frac{\\sqrt{2}}{2}\\right)", "\\left(\\frac{1}{2}, \\frac{\\sqrt{3}}{2}\\right)", "(0, 1)",
        "\\left(-\\frac{1}{2}, \\frac{\\sqrt{3}}{2}\\right)", "\\left(-\\frac{\\sqrt{2}}{2}, \\frac{\\sqrt{2}}{2}\\right)", "\\left(-\\frac{\\sqrt{3}}{2}, \\frac{1}{2}\\right)", "(-1, 0)",
        "\\left(-\\frac{\\sqrt{3}}{2}, -\\frac{1}{2}\\right)", "\\left(-\\frac{\\sqrt{2}}{2}, -\\frac{\\sqrt{2}}{2}\\right)", "\\left(-\\frac{1}{2}, -\\frac{\\sqrt{3}}{2}\\right)", "(0, -1)",
        "\\left(\\frac{1}{2}, -\\frac{\\sqrt{3}}{2}\\right)", "\\left(\\frac{\\sqrt{2}}{2}, -\\frac{\\sqrt{2}}{2}\\right)", "\\left(\\frac{\\sqrt{3}}{2}, -\\frac{1}{2}\\right)"
    ]
    
    let angleLabelsDegrees: [String] = [
        "0^{\\circ}", "30^{\\circ}", "45^{\\circ}", "60^{\\circ}", "90^{\\circ}",
        "120^{\\circ}", "135^{\\circ}", "150^{\\circ}", "180^{\\circ}",
        "210^{\\circ}", "225^{\\circ}", "240^{\\circ}", "270^{\\circ}",
        "300^{\\circ}", "315^{\\circ}", "330^{\\circ}"
    ]
    
    var clockwise: Bool = true
    
    @State private var animateLabels = false
    
    var body: some View {
        GeometryReader { geometry in
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
            let radius = min(geometry.size.width, geometry.size.height) / 2
            let extendedRadius = radius - 40
            
            ForEach(Array(zip(angles.indices, angles)), id: \.0) { index, angle in
                let angleInRadians = (clockwise ? -1 : 1) * angle * .pi / 180
                let labelPosition = CGPoint(
                    x: center.x + extendedRadius * CGFloat(cos(angleInRadians)),
                    y: center.y + extendedRadius * CGFloat(sin(angleInRadians))
                )
                
                LabelView(equation: angleLabels[index])
                .scaleEffect(animateLabels ? 1 : 0.1)
                .position(labelPosition)
                    .opacity(animateLabels ? 1 : 0)
                    .animation(
                        Animation.easeInOut(duration: 1)
                          .delay(1.5 + 0.15 * Double(index)),
                        value: animateLabels
                    )
                    
            }
        }
        .onAppear {
            animateLabels = true
        }
    }
}


struct LabelsView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
