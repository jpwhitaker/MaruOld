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
                        CircleContainer()

                            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.8)
                        Spacer()
                    }
                    Spacer()
                    
                    NavigationLink(destination: TutorialView()) {
                        Text("Learn the Unit Circle")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                }
                .frame(maxHeight: .infinity)
                .ignoresSafeArea(.all, edges: .vertical)
            }
            .environmentObject(viewModel)
            .navigationBarTitle("Unit Circle App", displayMode: .inline)
        }
    }
}


#Preview {
  ContentView()
    .environmentObject(UnitCircleViewModel())

}
