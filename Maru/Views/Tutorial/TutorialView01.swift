//
//  TutorialView01.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView01: View {
    @EnvironmentObject var viewModel: UnitCircleViewModel
  
  private var unitCircleOptions: UnitCircleOptions {
      UnitCircleOptions(
          drawAngles: [(0, 180), (90, 270)],
          drawDots: []
      )
  }
    var body: some View {
        VStack {
          Text("The unit may appear complex at first, but you only need to remember a small portion of it to fill out the rest.  I'll show you!")
              .font(.subheadline)
              .padding()
          
          Text("First, lets draw our circle.  Then add lines splitting the circle into four quadrants.")
              .font(.subheadline)
              .padding()
          
          CircleContainer(onlyAngles: [(0,180), (90,270)])
            .environmentObject(UnitCircleViewModel())
            .padding()
          

          Spacer()
        }
        .navigationBarTitle("Tutorial", displayMode: .inline)
    }
}

#Preview {
    TutorialView01()
      .environmentObject(UnitCircleViewModel())
}
