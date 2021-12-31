//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Mohammed Rayan on 30/12/21.
//

import SwiftUI

struct FruitDetailView: View {
    //Properties
    
    var fruit : Fruit
    
    //Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //headline
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //nutrients
                        FruitNutrientsView(fruit: fruit)
                        
                        //subheading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //description
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }//Vstack
                    .padding(.horizontal,20)
                    .frame(maxWidth:620,alignment: .center)
                }//Vstack
                .navigationBarTitle(Text(fruit.title), displayMode: .inline)
                .navigationBarHidden(true)
            }//Scroll
            .edgesIgnoringSafeArea(.all)
        }//Navigation
        
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit:fruitsData[0])
    }
}
