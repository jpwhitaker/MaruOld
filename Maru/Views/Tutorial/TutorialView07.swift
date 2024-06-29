//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView07: View {
  
  private var unitCircleOptions: UnitCircleOptions {
      UnitCircleOptions(
        //angles appear CCW, (4,0), (3,1), (2,2), (1, 3), (0,4)
          
      )
  }
  
  
  var body: some View {
      VStack {
        Text("The Unit Circle")
            .font(.largeTitle)
            .padding()
        
        Text("Once at the bottom, lets do the y-values by working our way back up.")
            .padding()
        
        Text("0, 1, 2, 3, 4")
            .padding()

    
        
        Spacer()
      }
      .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
    TutorialView07()
}
