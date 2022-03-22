//
//  Coordinator.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 22/03/2022.
//

import Foundation
import SwiftUI
import UIKit

class Coordinator {
    
    var tabBar: UITabBar? {
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

    @ViewBuilder
    func content2View() -> some View {
        let view = ContentView2(coordinator: self)
        view
    }
    func view2HasAppeared() {
        hideTabBar()
    }
    func view2HasDisappeared() {
        print("view 2 has disappeared!")
        showTabBar()
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
//        tabBar?.isHidden = false
    }

}
