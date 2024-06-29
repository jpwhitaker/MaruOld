//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView02: View {
  var body: some View {
    VStack {
      Text("The Unit Circle")
        .font(.largeTitle)
        .padding()
      
      Text("Next, starting from Quadrant I, we'll add lines for 30°, 45°, and 60°.  Continue these lines across the circle.")
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
