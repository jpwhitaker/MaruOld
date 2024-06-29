//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

private var unitCircleOptions: UnitCircleOptions {
    UnitCircleOptions(
        //zoom to qI
        
        // label x values appear in sequence 0-4 (0, _ )
        
    )
}


struct TutorialView06: View {
  var body: some View {
      VStack {
        Text("The Unit Circle")
            .font(.largeTitle)
            .padding()
        
        Text("Now, all we have to do is lable the first quadrant.  The rest of the quadrants are just reflections of the first.")
            .padding()
        
        Text("Starting at the top, lets mark the x, values.  Notice at 90 degrees the coordinates are (0,1)  moving clockwise all we have to do is count down.")
            .padding()

        Text("0, 1, 2, 3, 4")
            .padding()

    
        
        Spacer()
      }
      .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
    TutorialView06()
}
