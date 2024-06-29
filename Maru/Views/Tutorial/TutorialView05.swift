//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView05: View {
  
  private var unitCircleOptions: UnitCircleOptions {
      UnitCircleOptions(
          //zoom to qII and qIII
          //center label
          // (-1,0) label
          // (0,-1) label
      )
  }
  
  
  var body: some View {
      VStack {
        Text("The Unit Circle")
            .font(.largeTitle)
            .padding()
        
        Text("On the left side of the unit circle, we've now moved one to the left of the origin, so the coordinate is (-1,0)")
            .padding()
        
        Text("At the bottom of the circle the value is (0,-1)")
            .padding()


    
        
        Spacer()
      }
      .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
    TutorialView05()
}
