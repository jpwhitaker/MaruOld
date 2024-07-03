//
//  CircleContainer.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI



struct CircleContainer: View {
  @EnvironmentObject var viewModel: UnitCircleViewModel
  @State var id = UUID()
  var options: UnitCircleOptions
  
  
  init(options: UnitCircleOptions? = nil) {
    // Use the provided options if available, otherwise use the default options from the view model
    self.options = options ?? UnitCircleOptions()
  }
  
  var body: some View {
    
    ZStack {
      //ids used to reset animation when view changes.
      AngleView(onlyAngles: options.onlyAngles).id(id)
      CircleView().id(id)
      DotView(onlyDots: options.onlyDots).id(id)
      if options.showLabels {
        LabelsView().id(id)
      }
      Quadrant()
      // Rectangle with a clear background to capture taps
      Rectangle()
        .foregroundColor(.clear)
        .contentShape(Rectangle())
        .onTapGesture {
          generateNewIDs()
        }
    }
    .aspectRatio(1, contentMode: .fit)
//    .border(Color.red, width: 1)
    .onAppear {
      generateNewIDs()
    }
  }
    
  
  private func generateNewIDs() {
    id = UUID()
  }
}

#Preview {
  GeometryReader { geometry in
    VStack {
      Spacer()
      HStack {
        Spacer()
        CircleContainer()
          .environmentObject(UnitCircleViewModel())
          .frame(width: geometry.size.width * 0.75)
        Spacer()
      }
      Spacer()
    }
  }
}
