//
//  UIKitCoordinator.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 23/03/2022.
//

import Foundation
import SwiftUI

class UIKitCoordinator {
    let viewController = ViewController()
    var navigationController: UINavigationController? {
        viewController.navigationController
    }
    
    
    // I would love to have an initializer like:
    // but how  to initalize a navigationController from swift UI??
    /*
     init(navigationController: UINavigationController) {
        self.navigationController = navigationController
     }
     */
    func startingSwiftUIView() -> some View {
        viewController.delegate = self
        viewController.title = "UIKit ViewController"

        return NavigationControllerView(viewControllers: [
            viewController
        ])
    }
}

extension UIKitCoordinator: ViewControllerDelegate {
    func didTapButtonToNavigateToSwiftUI() {
        var goBackView = GoBackView()
        goBackView.delegate = self
        let hostedViewController = UIHostingController(rootView: goBackView)
        navigationController?.pushViewController(hostedViewController, animated: UIView.areAnimationsEnabled)
    }
    
    func didTapButtonToNavigate() {
        let newViewController = ViewController()
        newViewController.delegate = self
        newViewController.title = "New ViewController"
        navigationController?.pushViewController(newViewController, animated: UIView.areAnimationsEnabled)
    }
}

extension UIKitCoordinator: GoBackViewDelegate {
    func goAllTheWayBack() {
        navigationController?.popToRootViewController(animated: UIView.areAnimationsEnabled)
    }
}
