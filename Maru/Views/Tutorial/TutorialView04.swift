//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView04: View {
  
  private var unitCircleOptions: UnitCircleOptions {
      UnitCircleOptions(
          //zoom to portion
          //center label
          // (1,0) label
          // arrow ccw
          // (0,1) label
          
      )
  }
  
  
  var body: some View {
      VStack {
        Text("The Unit Circle")
            .font(.largeTitle)
            .padding()
        
        Text("Start by writing the coordinates for the axis.  Starting at the right.")
            .padding()
        
        Text("The center of the circle is at (0,0).  Because the unit circle has a radius of 1, the axis on the right will have an x-value of 1 and a y-value of 0.")
            .padding()

        
        Text("Moving clockwise the next point on the vertical axis will have an x-value of 0 and a y-value of 1.")
            .padding()
    
        
        Spacer()
      }
      .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
    TutorialView04()
}
