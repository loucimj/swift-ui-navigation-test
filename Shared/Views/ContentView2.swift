//
//  ContentView.swift
//  Shared
//
//  Created by Javier Loucim on 22/03/2022.
//

import SwiftUI

struct SecondView: View {
    let coordinator: Coordinator 
    var body: some View {
        NavigationView {
            VStack {
                Text("You are here")
                    .padding()
                NavigationLink("Navigate to another screen", destination: {
                    
                })
            }
            .navigationTitle("Second screen")
        }
        .onAppear {
            coordinator.view2HasAppeared()
        }
        .onDisappear {
            coordinator.view2HasDisappeared()
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(coordinator: Coordinator())
    }
}
