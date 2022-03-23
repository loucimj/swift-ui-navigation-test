//
//  UIKitView.swift
//  SwiftUI-navigation-test (iOS)
//
//  Created by Javier Loucim on 23/03/2022.
//

import Foundation
import SwiftUI

struct UIKitViewControllerWrapperView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ViewController
    weak var delegate: ViewControllerDelegate?
    private var title: String?
    
    init(delegate: ViewControllerDelegate?, title: String?) {
        self.delegate = delegate
        self.title = title
    }
    func makeUIViewController(context: Context) -> ViewController {
        let viewController = ViewController()
        viewController.title = title
        viewController.delegate = delegate
        return viewController
    }
        
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}
