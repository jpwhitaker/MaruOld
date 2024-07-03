//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView02: View {
//  private var unitCircleOptions: UnitCircleOptions {
//      UnitCircleOptions(
//          drawAngles: [(0,180), (30, 210), (45, 225), (60, 240), (90,270)],
//          drawDots: []
//          //dashed angles: [(0,180), (90,270)]
//          //showQuadrantLabels: true
//      )
//  }
  
  var body: some View {
    VStack {
      
      Text("Next, starting from Quadrant I, we'll add lines for 30°, 45°, and 60°.  Continue these lines across the circle.")
        .padding()
      
      CircleContainer(options: UnitCircleOptions(
        showLabels: false,
        onlyAngles: [(0,180), (30,210), (45,225), (60,240), (90,270)],
        onlyDots: [30, 45, 60, 210, 225, 240]
      ))
        .environmentObject(UnitCircleViewModel())
        .padding()
      
      Text("In the unit circle, angles like 30°, 45°, and 60° are special because they match easy-to-remember points. These points come from simple shapes like equilateral and right triangles. , which have well-known properties.")
        .padding()
      
      
      
      Spacer()
    }
    .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
  TutorialView02()
}
