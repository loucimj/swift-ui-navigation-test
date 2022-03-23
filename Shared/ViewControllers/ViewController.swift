//
//  ViewController.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 22/03/2022.
//

import Foundation
import UIKit
import SwiftUI

protocol ViewControllerDelegate: AnyObject {
    func didTapButtonToNavigate()
    func didTapButtonToNavigateToSwiftUI()
}

class ViewController: UIViewController {
    weak var delegate: ViewControllerDelegate?
    
    lazy var navigateButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.setTitle("Navigate to next", for: .normal)
        button.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        button.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 56))
        button.center = view.center
        return button
    }()

    lazy var navigateSwiftUIButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.setTitle("Navigate to swift UI", for: .normal)
        button.addTarget(self, action: #selector(navigateToSwiftUI), for: .touchUpInside)
        button.frame = CGRect(origin: .zero, size: CGSize(width: 200, height: 56))
        button.center = CGPoint(x: view.center.x, y: view.center.y + 72)
        return button
    }()

    override func viewDidLoad() {
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(navigateButton)
        view.addSubview(navigateSwiftUIButton)
        view.backgroundColor = UIColor.white
    }
    
    @objc func navigate() {
        delegate?.didTapButtonToNavigate()
    }
    
    @objc func navigateToSwiftUI() {
        delegate?.didTapButtonToNavigateToSwiftUI()
    }
}

struct UIKitViewController: UIViewControllerRepresentable {    
    typealias UIViewControllerType = ViewController
    weak var delegate: ViewControllerDelegate?
    
    init(delegate: ViewControllerDelegate?) {
        self.delegate = delegate
    }
    func makeUIViewController(context: Context) -> ViewController {
        let viewController = ViewController()
        viewController.delegate = delegate
        return viewController
    }
        
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}
