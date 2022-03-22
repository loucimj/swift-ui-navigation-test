//
//  ContentView2.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 22/03/2022.
//

import Foundation
//
//  ContentView.swift
//  Shared
//
//  Created by Javier Loucim on 22/03/2022.
//

import SwiftUI

struct ContentView2: View {
    let coordinator: Coordinator 
    var body: some View {
        NavigationView {
            VStack {
                Text("You are here")
                    .padding()
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
        ContentView2(coordinator: Coordinator())
    }
}
