//
//  CircleContainer.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI

struct CircleContainer: View {
  @EnvironmentObject var viewModel: UnitCircleViewModel
  
  var body: some View {
    ZStack {
      CircleView()
    }
    .border(Color.red, width: 2)
  }
}

#Preview {
  ContentView()
}
