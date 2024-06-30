//
//  SwiftUIView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/30/24.
//

import SwiftUI

import SwiftMath

struct MathUILabel: UIViewRepresentable {
  var latex: String
  
  func makeUIView(context: Context) -> MTMathUILabel {
    let label = MTMathUILabel()
    label.latex = latex
    label.layer.borderColor = UIColor.red.cgColor
    label.layer.borderWidth = 2.0
    return label
  }
  
  func updateUIView(_ uiView: MTMathUILabel, context: Context) {
    uiView.latex = latex
  }
}

struct MathView: UIViewRepresentable {
  var equation: String
  var fontSize: CGFloat
  
  func makeUIView(context: Context) -> MTMathUILabel {
    let view = MTMathUILabel()
//          view.layer.borderColor = UIColor.red.cgColor
//          view.layer.borderWidth = 2.0
    return view
  }
  
  func updateUIView(_ uiView: MTMathUILabel, context: Context) {
    uiView.latex = equation
    uiView.fontSize = fontSize
    //        uiView.font = MTFontManager().termesFont(withSize: fontSize)
    uiView.textAlignment = .center
    uiView.labelMode = .text
  }
}

struct LabelView: View {
  var equation: String
  var body: some View {
    MathView(equation: equation, fontSize: 20)
      .frame(width: 30, height:30)
      .background(
        RoundedRectangle(cornerRadius: .infinity)
          .fill(Color.white)
      )
    
  }
}

struct LabelView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
