//
//  CircleContainer.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI

struct CircleContainer: View {
  @EnvironmentObject var viewModel: UnitCircleViewModel
  
  var body: some View {
    
    ZStack {
      GeometryReader { geometry in
        Color.clear
          .onAppear{
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.width / 2)
            viewModel.center = center
            viewModel.radius = geometry.size.width/2
          }
        
        AngleView()
        CircleView()
        DotView()
      }
    }
    .aspectRatio(1, contentMode: .fit)
//    .border(Color.red, width: 2)
  }
}

#Preview {
  ContentView()
}
