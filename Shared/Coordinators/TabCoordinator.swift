//
//  TabCoordinator.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 22/03/2022.
//

import Foundation
import SwiftUI

class TabCoordinator {
    
    let uiKitCoordinator = UIKitCoordinator()
    let swiftUICoordinator = SwiftUICoordinator()
    @ViewBuilder
    func tab1View() -> some View {
        swiftUICoordinator.startingSwiftUIView()
    }

    @ViewBuilder
    func tab2View() -> some View {
        uiKitCoordinator.startingSwiftUIView()
    }
}
