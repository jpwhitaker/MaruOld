//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView03: View {
  var body: some View {
      VStack {
        Text("The Unit Circle")
            .font(.largeTitle)
            .padding()
        
        Text("We'll do the same on the other side.  Quadrant II will be a mirror image of Quadrant I. ")
            .padding()
        
        Text("Now we have a blank unit circle ready to fill out!")
            .padding()

        
    
        
        Spacer()
      }
      .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
    TutorialView03()
}
