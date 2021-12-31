//
//  SettingsView.swift
//  Fructus
//
//  Created by Mohammed Rayan on 31/12/21.
//

import SwiftUI

struct SettingsView: View {
    
    
    
    //props
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
    
    //body
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20) {
                    
                    //S1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus",labelImage: "info.circle")){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fats, sodium and calories. None have cholesterol. Fruits are sources of many nutrients including potassium, dietary fiber, vitamins and much more.").font(.footnote)
                        }
                    }
                    
                    //Sec2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can toggle the application by using the toggle switch here. This way, it starts the onboarding process and you can see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased()
                                        )
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }}
                    .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    
                    }
                    //sec3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){                     
                       SettingsRowView(name: "Developer",content: "Mohammed Rayan")
                        
                        SettingsRowView(name: "Designer", content: "Mohammed Rayan")
                        
                        SettingsRowView(name:"Compatibality",content: "iOS 15")
                        
                        SettingsRowView(name:"Github",linklabel: "itsrayaaan",linkDestination: "github.com/itsrayaaan")
                        SettingsRowView(name:"Twitter",linklabel: "@itsrayaaan",linkDestination: "twitter.com/itsrayaaan")
                        
                        SettingsRowView(name: "SwiftUI",content: "2.0")
                        SettingsRowView(name:"Version",content: "1.1.0")
                    }
                }//VStack
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .padding()
                .navigationBarItems(trailing:Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
            )
            }//Scroll
        }//Navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
