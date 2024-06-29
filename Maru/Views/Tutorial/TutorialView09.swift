//
//  TutorialView02.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView09: View {
  var body: some View {
      VStack {
        Text("The Unit Circle")
            .font(.largeTitle)
            .padding()
        
        Text("The last step is to simplify")
            .padding()
        
        Text("The square root of 0 is 0")
            .padding()
        
        Text("The square root of 1 is 1")
            .padding()
        
        Text("The square root of 4 is 2")
            .padding()
        
        
        Text("The square root of 2/2 is 1")
            .padding()


    
        
        Spacer()
      }
      .navigationBarTitle("Tutorial", displayMode: .inline)
  }
}

#Preview {
    TutorialView09()
}
