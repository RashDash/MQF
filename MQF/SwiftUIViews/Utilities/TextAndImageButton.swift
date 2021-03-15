//
//  TextAndImageButton.swift
//  MQF
//
//  Created by Christian Brechbuhl on 2/14/21.
//  Copyright © 2021 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//

import SwiftUI


//struct CustomButtonStyle: ButtonStyle {
//    let text:String
//    let image:Image
//    func makeBody(configuration: Self.Configuration) -> some View {
//        return configuration.label
//            .padding()
//            .background(Color.green)
//            .foregroundColor(Color.white)
//            .opacity(configuration.isPressed ? 0.7 : 1)
//            .scaleEffect(configuration.isPressed ? 0.8 : 1)
//            .animation(.easeInOut(duration: 0.2))
//    }
//}

struct TextAndImageButton: View {
    var text = "TEST"
    var imageName = "feedback"
    var action = {}
    @State private var showingAlert = false
    var body: some View {
        
        Button {
            action()
        } label: {
            VStack{
                Image(imageName)
                    .resizable()
                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
            
          Text(text)
            .padding(5)
            .foregroundColor(.white)
            .font(.system(size: 15))
            }
        }

    }
}


struct TextAndImageButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
        TextAndImageButton()
        }
        .background(Color.purple)
    }
}
