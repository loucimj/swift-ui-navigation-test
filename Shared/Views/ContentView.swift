//
//  ContentView.swift
//  Shared
//
//  Created by Javier Loucim on 22/03/2022.
//

import SwiftUI

struct ContentView: View {
    var coordinator = Coordinator()
    @State var uiTabarController: UITabBarController?

    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .padding()
                NavigationLink(destination: coordinator.content2View()) {
                    Text("Link to content view 2")
                }
            }
            .navigationTitle("First screen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
