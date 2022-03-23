//
//  ContentView.swift
//  Shared
//
//  Created by Javier Loucim on 22/03/2022.
//

import SwiftUI

protocol SecondViewDelegate: AnyObject {
    func secondViewHasAppeared()
    func secondViewHasDisappeared()
}

struct SecondView: View {
    let viewModel: SecondViewViewModel
    weak var delegate: SecondViewDelegate?
    var body: some View {
        VStack {
            NavigationLink("Navigate to another screen", destination: viewModel.buildUIKitView())
            Text("You are here")
                .padding()
        }
        .navigationTitle("Second screen")
        .onAppear {
            delegate?.secondViewHasAppeared()
        }
        .onDisappear {
            delegate?.secondViewHasDisappeared()
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(viewModel: SecondViewViewModel())
    }
}
