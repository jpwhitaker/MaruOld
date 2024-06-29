//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView08: View {
  
  private var unitCircleOptions: UnitCircleOptions {
      UnitCircleOptions(
          // somehow change labels in sequence to show dividing
          // somehow change labels in sequence to show 
          
      )
  }
  
  var body: some View {
      VStack {
        Text("The Unit Circle")
            .font(.largeTitle)
            .padding()
        
        Text("Now divide everything by 2")
            .padding()
        
        Text("And take the square root of the numerators")
            .padding()

    
        
        Spacer()
      }
      .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
    TutorialView08()
}
