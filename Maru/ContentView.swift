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
    NavigationView {
      GeometryReader { geometry in
        VStack {
          Spacer()
          
          HStack {
            Spacer()
            CircleContainer(options: UnitCircleOptions(showLabels: false))
              .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)
            Spacer()
          }
          
          Spacer()
          
          VStack(spacing: 10) {
            NavigationLink("Learn to Draw the Unit Circle") {
              TutorialView()
                .environmentObject(UnitCircleViewModel())
            }
            NavigationLink("Quiz Yourself") {
              UnitCircleQuizView()
                .environmentObject(UnitCircleViewModel())
            }
            NavigationLink("View Unit Circle") {
              UnitCircleView()
                .environmentObject(UnitCircleViewModel())
            }
          }
          .frame(maxWidth: .infinity)
          .padding()
          
          Spacer()
        }
        .frame(width: geometry.size.width, height: geometry.size.height)
        .environmentObject(viewModel)
        .navigationBarTitle("Maru - Unit Circle", displayMode: .inline)
      }
    }
  }
}

struct UnitCircleView: View {
  var body: some View {
    GeometryReader { geometry in
      VStack {
        Spacer()
        
        HStack {
          Spacer()
          CircleContainer(options: UnitCircleOptions())
            .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.8)
          Spacer()
        }
        Spacer()
      }
    }
      .navigationTitle("View the Unit Circle")
  }
}

struct UnitCircleQuizView: View {
  var body: some View {
    Text("Quiz View")
      .navigationTitle("Quiz Yourself")
  }
}


#Preview {
  ContentView()
    .environmentObject(UnitCircleViewModel())
}

