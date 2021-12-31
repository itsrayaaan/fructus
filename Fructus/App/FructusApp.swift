//
//  FructusApp.swift
//  Fructus
//
//  Created by Mohammed Rayan on 30/12/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnboardingView() }
            else{
                ContentView()
            }
            }
        }
}
