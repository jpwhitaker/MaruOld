//
//  CircleContainer.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI

struct UnitCircleOptions {
    var drawAngles: [(start: Double, end: Double)]?
    var drawDots: [CGPoint]?
}


struct CircleContainer: View {
  @EnvironmentObject var viewModel: UnitCircleViewModel
  @State var id = UUID()
  var onlyAngles: [(start: Double, end: Double)]?
  var options: UnitCircleOptions?

  private var unitCircleOptions: UnitCircleOptions {
      UnitCircleOptions(
          drawAngles: [(0, 180), (90, 270)],
          drawDots: []
      )
  }


  var body: some View {
    
    ZStack {
      GeometryReader { geometry in
        Color.clear
          .onAppear{
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.width / 2)
            viewModel.center = center
            viewModel.radius = geometry.size.width/2
          }
        //ids used to reset animation when view changes.
        AngleView(onlyAngles: onlyAngles).id(id)
        CircleView().id(id)
        DotView().id(id)
        
        
      }
    }
    .aspectRatio(1, contentMode: .fit)
    .border(.red, width: 1)
    .onAppear{
      id = UUID()
    }
  }
}

#Preview {
  ContentView()
}
