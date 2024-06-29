//
//  TutorialView01.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

import SwiftUI

struct TutorialView01: View {
    @EnvironmentObject var viewModel: UnitCircleViewModel
    var body: some View {
        VStack {
          CircleContainer()
            .environmentObject(UnitCircleViewModel())
            .padding()
          
          Text("The unit may appear complex at first, but you only need to remember a small portion of it to fill out the rest.  I'll show you!")
              .font(.subheadline)
              .padding()
          
          Text("First, lets draw our circle.  Then add lines splitting the circle into four quadrants.")
              .font(.subheadline)
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
