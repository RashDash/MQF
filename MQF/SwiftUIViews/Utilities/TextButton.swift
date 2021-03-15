//
//  TextButton.swift
//  MQF
//
//  Created by Christian Brechbuhl on 2/14/21.
//  Copyright © 2021 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//

import SwiftUI

struct TextButton: View {
    var text = "TEST"
    var action = {}
    var body: some View {
        Button {
            action()
        }label: {
          Text(text)
            .padding(10)
            .foregroundColor(.white)
            .frame(minWidth: 250)
            .font(.system(size: 55))
        }
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color(UIColor.lightText), lineWidth: 1))
    }
}

struct TextButton_Previews: PreviewProvider {
    static var previews: some View {
        TextButton()
    }
}
