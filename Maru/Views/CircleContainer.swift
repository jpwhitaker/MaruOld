//
//  CircleContainer.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI

struct CircleContainer: View {
  @EnvironmentObject var viewModel: UnitCircleViewModel
  @State var id = UUID()
  var onlyAngles: [(start: Double, end: Double)]?


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
    .onAppear{
      id = UUID()
    }
  }
}

#Preview {
  ContentView()
}
