//
//  HostingViewController.swift
//  MQF
//
//  Created by Christian Brechbuhl on 2/14/21.
//  Copyright © 2021 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//

import UIKit
import SwiftUI

class HostingViewController: UIHostingController<MainScreenView> {

    required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder, rootView: MainScreenView())
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



//struct HostingViewController_Previews: PreviewProvider {
//    static var previews: some View {
//        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
//    }
//}
