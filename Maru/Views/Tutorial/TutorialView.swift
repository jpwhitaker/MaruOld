//
//  TutorialView.swift
//  Maru
//
//  Created by John-Patrick Whitaker on 6/27/24.
//

import SwiftUI

struct TutorialView: View {
    private let pages: [AnyView] = [
      AnyView(TutorialView01()),
      AnyView(TutorialView02()),
//      AnyView(TutorialView03()),
//      AnyView(TutorialView04()),
//      AnyView(TutorialView05()),
//      AnyView(TutorialView06()),
//      AnyView(TutorialView07()),
//      AnyView(TutorialView08()),
//      AnyView(TutorialView09()),
    ] // Wrap the views in AnyView
    
    var body: some View {
        VStack {
            TabView {
                ForEach(0..<pages.count, id: \.self) { index in
                    ZStack {
                        pages[index]
                    }
                }
            }
            .tabViewStyle(.page)
        }
        .navigationBarTitle("Tutorial", displayMode: .inline)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .cornerRadius(30)
        .padding(10)
        .onAppear {
                  UIPageControl.appearance().currentPageIndicatorTintColor = .gray
                  UIPageControl.appearance().pageIndicatorTintColor = .lightGray
              }
    }
}


#Preview {
    TutorialView()
}



//Text("The Unit Circle")
//    .font(.largeTitle)
//    .padding()
//
//Text("The unit may appear complex at first, but you only need to remember a small portion of it to fill out the rest.  I'll show you!")
//    .font(.subheadline)
//    .padding()
//
//Spacer()
