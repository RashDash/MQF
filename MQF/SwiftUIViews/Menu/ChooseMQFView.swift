//
//  MenuView.swift
//  MQF
//
//  Created by Christian Brechbuhl on 3/14/21.
//  Copyright © 2021 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//


import Foundation
import SwiftUI

struct ChooseMQFView: UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIViewController(context: Context) ->ChooseMQFViewController {
        let menuViewController = ChooseMQFViewController()
        return menuViewController
    }
    
    func updateUIViewController(_ uiViewController: ChooseMQFViewController, context: Context) {
        
    }
 }
