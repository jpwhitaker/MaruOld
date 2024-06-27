//
//  ContentView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/26/24.
//

import SwiftUI



struct ContentView: View {
  @StateObject var viewModel = UnitCircleViewModel()
  
  var body: some View {
    GeometryReader { geometry in
      
      VStack {
        Spacer()
        HStack{
          Spacer()
          CircleContainer()
            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.8)
          Spacer()
        }
        Spacer()
      }
      .frame(maxHeight: .infinity)
      .ignoresSafeArea(.all, edges: .vertical)
    }
    .environmentObject(viewModel)
  }
}


#Preview {
  ContentView()
}
