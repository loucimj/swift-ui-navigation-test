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
    @ViewBuilder
    func tab1View() -> some View {
        FirstView(viewModel: FirstViewViewModel())
    }

    @ViewBuilder
    func tab2View() -> some View {
        uiKitCoordinator.startingSwiftUIView()
    }
}
