//
//  GoBackView.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 23/03/2022.
//
import SwiftUI
protocol GoBackViewDelegate: AnyObject {
    func goAllTheWayBack()
}
struct GoBackView: View {
    weak var delegate: GoBackViewDelegate?
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Go Back") {
                    delegate?.goAllTheWayBack()
                }
            }
            .navigationTitle("Go Back View")
        }
    }
}

struct GoBackView_Previews: PreviewProvider {
    static var previews: some View {
        GoBackView()
    }
}

