//
//  MainView.swift
//  Custom_SideMenu
//
//  Created by Krunal on 02/02/24.
//

import SwiftUI

struct MainView: View {
    
    //Selected Tab .....
    @State var SelectedTab = "Home"
    @State var showMenu = false
   
    var body: some View {
        
        ZStack{
            Color("blue")
                .ignoresSafeArea()
            
            //Side Menu .....
            SideMenu(showMenu: $showMenu, SelectedTab: $SelectedTab)
            
            ZStack{
            
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 15 : 0)
                    .offset(x: showMenu ? -25 : 0)
                    .padding(.vertical, 30)
            
                Color.white
                    .opacity(0.4)
                    .cornerRadius(showMenu ? 15 : 0)
                    .offset(x: showMenu ? -50 : 0)
                    .padding(.vertical, 60)
                
                Home(SelectedTab: $SelectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
                   
            }
            .scaleEffect(showMenu ? 0.84 : 1) //Scaling and moving the View
            .offset(x: showMenu ? getRect().width - 120 : 0)
            .ignoresSafeArea()
            .overlay(
                
                //Menu Button ....!
                Button(action: {
                    withAnimation(.spring()) {
                        showMenu.toggle()
                    }
                }, label: {
                    
                    VStack(spacing:5){
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30, height: 3)
                        
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30, height: 3)
                        
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30, height: 3)
                            .offset(y: showMenu ? -8 : 0)
                        
                    }
                })
                .padding(),alignment: .topLeading
            )
        }
    }
}

#Preview {
    MainView()
}


extension View{
    
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
