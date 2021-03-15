//
//  MainScreenView.swift
//  MQF
//
//  Created by Christian Brechbuhl on 2/13/21.
//  Copyright © 2021 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//

import SwiftUI

struct MainScreenView: View {
    //State
    @State private var showingFeedbackAlert = false
    @State private var showingMenu: Bool = false
    @State private var showingSettings: Bool = false
    @State private var showingQuestions: Bool = false
    
    var body: some View {
        let mds = MQFDefaults().string(forKey: MQFDefaults.mds) ?? "C-17"
        let cp = MQFDefaults().string(forKey: MQFDefaults.crewPosition) ?? "Pilot"
        let mode = MQFDefaults().object(forKey: MQFDefaults.activeMode) as? String ?? "MQF"
        let activePresetID = MQFDefaults().object(forKey: MQFDefaults.activePresetID) as? String ?? "c17-Pilot.json"
 
        var activeMQFs = [MQFData]()
        
        NavigationView{
            

        ZStack{
            
            Image(mds)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Rectangle()                         // Shapes are resizable by default
                .foregroundColor(.clear)        // Making rectangle transparent
                .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 50, content: {
    
                VStack(spacing:15){
                    
                    Text(mds)
                        .font(.system(size: 100))
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                        
                    
                    Text(cp)
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                    VStack{
                        
                        if (mode == "MQF") {
                            let mqf = DataManager.shared.getMQFData(for: activePresetID) ?? MQFData()
                           let _ = activeMQFs.append(mqf)
                            Text(mqf.name)
                                .font(.system(size: 17))
                                .foregroundColor(.white)
                        }else{
                            let preset = DataManager.shared.getPreset(for: activePresetID) ?? MQFPreset()
                            ForEach(preset.mqfs, id: \.self) { mqf in
                                //self.setTestNumFromPreset(mqf: mqf, preset: preset)
                                Text(mqf.name)
                                    .font(.system(size: 17))
                                    .foregroundColor(.white)
                                let _ = activeMQFs.append(mqf)
                            }
                 
                        }
                    }
                    
                }
          
                VStack(spacing:10){
                    NavigationLink(destination: QuestionView(mode: .study).navigationBarTitle(Text("Study"), displayMode: .inline), isActive: $showingQuestions) { EmptyView() }
                    TextButton(text: "Study"){
                        showingQuestions.toggle()
                    }
                    TextButton(text: "QUIZ")
                }
       
                HStack{

                    TextAndImageButton(text: "Feedback", imageName: "feedback", action: {
                        showingFeedbackAlert = true
                    }).alert(isPresented: $showingFeedbackAlert) {
                        Alert(title: Text("We'd love to hear from you!"), message: Text("This app was built for aircrew by aircrew to make one small part of your life simpler and easier. Help us achieve that goal with your feedback. Please email it to AirmenCoders@afwerx.af.mil. Thanks!"), dismissButton: .default(Text("Will Do!")))
                    }
                    NavigationLink(destination: SettingsView().navigationBarTitle(Text("Settings"), displayMode: .inline), isActive: $showingSettings) { EmptyView() }
                        
                    NavigationLink(destination: ChooseMQFView().navigationBarTitle(Text("Choose MQF(s)"), displayMode: .inline), isActive: $showingMenu) { EmptyView() }
                                
                    
                    TextAndImageButton(text: "Choose MQF", imageName: "database"){
                        showingMenu.toggle()

                    }
                    
                    TextAndImageButton(text: "Settings", imageName: "settings"){
                        showingSettings.toggle()
                    }
                  
                }
                
            })

        }
        
    }
        .navigationViewStyle(StackNavigationViewStyle())
    }

}

func getWindow() -> UIWindow{
    
    return UIApplication.shared.windows.first!
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
