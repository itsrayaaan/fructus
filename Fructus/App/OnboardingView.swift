//
//  OnboardingView.swift
//  Fructus
//
//  Created by Mohammed Rayan on 30/12/21.
//

import SwiftUI

struct OnboardingView: View {
    var fruits:[Fruit]=fruitsData
    var body: some View {

        TabView{
            ForEach(fruits[0...5]){item in
                FruitCardView(fruit:item)
//                Text("Cards")
            }//loop
        }.tabViewStyle(PageTabViewStyle())
            .padding(.vertical,20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
