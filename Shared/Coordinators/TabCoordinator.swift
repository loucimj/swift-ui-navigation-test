//
//  TabCoordinator.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 22/03/2022.
//

import Foundation
import SwiftUI
import SwiftUIKitView

class TabCoordinator {
    

    @ViewBuilder
    func tab1View() -> some View {
        ContentView()
    }

    @ViewBuilder
    func tab2View() -> some View {
        NavigationController(viewControllers: [
            ViewController()
        ])
    }
}
