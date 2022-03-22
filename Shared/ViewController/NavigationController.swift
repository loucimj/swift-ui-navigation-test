//
//  NavigationController.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 22/03/2022.
//

import Foundation
import UIKit
import SwiftUI

struct NavigationController: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController
    let viewControllers: [UIViewController]

    init(viewControllers: [UIViewController]) {
        self.viewControllers = viewControllers
    }
    func makeUIViewController(context: Context) -> UINavigationController {
        let navigationController = UINavigationController()
        navigationController.viewControllers = viewControllers
        return navigationController
    }
        
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
    }
}
