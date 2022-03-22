//
//  TabContentView.swift
//  SwiftUI-navigation-test
//
//  Created by Javier Loucim on 22/03/2022.
//

import Foundation
import SwiftUI

struct TabContentView: View {
    var coordinator = TabCoordinator()
    
    var body: some View {
        TabView {
            coordinator.tab1View()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("SwiftUI World")
                }
            coordinator.tab2View()
                .tabItem {
                    Image(systemName: "network")
                    Text("UIKit world")
                }
        }
    }
}

struct TabContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabContentView()
    }
}
