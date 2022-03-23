//
//  SecondViewViewModel.swift
//  SwiftUI-navigation-test (iOS)
//
//  Created by Javier Loucim on 23/03/2022.
//

import Foundation
import UIKit
import SwiftUI

class SecondViewViewModel {
    func buildUIKitView() -> some View {
        let view = UIKitViewController(delegate: self)
        return view
    }
}

extension SecondViewViewModel: ViewControllerDelegate {
    func didTapButtonToNavigate() {
        
    }
    
    func didTapButtonToNavigateToSwiftUI() {
        
    }
}
