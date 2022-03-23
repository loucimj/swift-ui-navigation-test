//
//  ContentView.swift
//  Shared
//
//  Created by Javier Loucim on 22/03/2022.
//

import SwiftUI

struct FirstView: View {
    let viewModel: FirstViewViewModel
    @State var uiTabarController: UITabBarController?

    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .padding()
                NavigationLink(destination: viewModel.buildSecondView()) {
                    Text("Link to content view 2")
                }
            }
            .navigationTitle("First screen")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(viewModel: FirstViewViewModel())
    }
}
