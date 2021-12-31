//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Mohammed Rayan on 31/12/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    
    var name :String
    var content : String? = nil
    
    var linklabel:String? = nil
    var linkDestination:String? = nil
    
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linklabel != nil && linkDestination != nil) {
                    Link(linklabel!,destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
            }
        }
        }
    }

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content:"Mohammed Rayan").preferredColorScheme(.dark).previewLayout(.fixed(width: 375, height: 60)).padding()
            SettingsRowView(name:"Github",linklabel: "itsrayaaaan", linkDestination: "www.github.com/itsrayaaaan").previewLayout(.fixed(width: 375, height: 60)).padding()
        }
    }
}
