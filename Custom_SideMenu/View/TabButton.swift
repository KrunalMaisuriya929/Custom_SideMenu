//
//  TabButton.swift
//  Custom_SideMenu
//
//  Created by Krunal on 02/02/24.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var title: String
    
    
    //Selected tab
    @Binding var SelectedTab: String
    @Binding var showMenu: Bool
    
    //For Animation Slide
    var animation: Namespace.ID
    
    var body: some View {
        
        Button(action: {
            print("Tab is \(title)")
            
            withAnimation(.spring()){
                SelectedTab = title
                showMenu.toggle()

            }
        }, label: {
            
            HStack(spacing : 10){
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(SelectedTab == title ? Color("blue") : .white) //
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            .frame(maxWidth: getRect().width - 170, alignment: .leading)
            .background(
                
                ZStack{
                    if SelectedTab == title {
                        Color.white
                            .opacity(SelectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight,.bottomRight], radius: 20))
                            .matchedGeometryEffect(id: "", in: animation)
                    }
                }
                
            )
        })
    }
}

#Preview {
    ContentView()
}
