//
//  SideMenu.swift
//  Custom_SideMenu
//
//  Created by Krunal on 02/02/24.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var SelectedTab: String
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            
            //Profile Picture
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(35)
                .padding(.top, 50) // Top padding for Close button
            
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Natalie Portman")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
                
                //Tab button
                VStack(alignment: .leading, spacing: 10){
                    TabButton(image: "house", title: "Home", SelectedTab: $SelectedTab, animation: animation)
                    
                    TabButton(image: "bell.badge", title: "Notification", SelectedTab: $SelectedTab, animation: animation)
                    
                    TabButton(image: "star.fill", title: "Message", SelectedTab: $SelectedTab, animation: animation)
                    
                    TabButton(image: "gearshape", title: "Settings", SelectedTab: $SelectedTab, animation: animation)
                    
                    TabButton(image: "questionmark.circle", title: "FAQ", SelectedTab: $SelectedTab, animation: animation)
                    
                }
                .padding(.leading, -15)
                .padding(.top, 50)
                
                Spacer()
                
                //Signout Button.......!
                VStack(alignment: .leading, spacing: 6, content: {
                    TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log out", SelectedTab: .constant(""), animation: animation)
                        .padding(.leading,-15)
                    
                    Text("App Version 1.4.32")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.6)
                })
            })
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

    }
}

#Preview {
    ContentView()
}
