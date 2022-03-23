//
//  FirstViewViewModel.swift
//  SwiftUI-navigation-test (iOS)
//
//  Created by Javier Loucim on 23/03/2022.
//

import Foundation
import UIKit
import SwiftUI

class FirstViewViewModel {
    func buildSecondView() -> some View {
        var view = SecondView(viewModel: SecondViewViewModel())
        view.delegate = self
        return view
    }
    
    private var tabBar: UITabBar? {
        for window in UIApplication.shared.windows {
            for view in window.subviews {
                if let tabbar = getTabbar(view: view) {
                    return tabbar
                }
            }
        }
        return nil
    }
    
    private func getTabbar(view: UIView) -> UITabBar? {
        if let tabBar = view as? UITabBar {
            return tabBar
        }
        for view in view.subviews {
            if let tabbar = getTabbar(view: view) {
                return tabbar
            }
        }
        return nil
    }
            
    private func hideTabBar() {
        UIView.animate(withDuration: 0.3) {
            self.tabBar?.alpha = 0
        }
    }

    private func showTabBar() {
        UIView.animate(withDuration: 0.1) {
            self.tabBar?.alpha = 1
        }
    }

}

extension FirstViewViewModel: SecondViewDelegate {
    func secondViewHasAppeared() {
        hideTabBar()
    }
    
    func secondViewHasDisappeared() {
        showTabBar()
    }
}
