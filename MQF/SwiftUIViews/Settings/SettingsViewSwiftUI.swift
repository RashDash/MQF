//
//  SettingsViewSwiftUI.swift
//  MQF
//
//  Created by Christian Brechbuhl on 3/14/21.
//  Copyright © 2021 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//

import Foundation
import SwiftUI

struct SettingsView: UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIViewController(context: Context) -> SettingsViewController {
        let settingsViewController = SettingsViewController()
        
        return settingsViewController
    }
    
    func updateUIViewController(_ uiViewController: SettingsViewController, context: Context) {
        
    }
 }
