//
//  GroupSection.swift
//  Custom_SideMenu
//
//  Created by Krunal on 15/02/24.
//

import SwiftUI

struct GroupSection: View {
    var body: some View {
        
        NavigationView{
            
            //            VStack{
            
            //            }
            //            .navigationTitle("Groups")
            //            .padding(.top, 10)
            
            VStack{
                let spectrum = Gradient(colors: [
                    .red, .yellow, .green, .blue, .cyan, .purple, .red
                ])
                let conic = AngularGradient(gradient: spectrum, center: .center, angle: .degrees(-90))
                
                Circle().strokeBorder(conic, lineWidth: 50)
                    .padding(40)
            Spacer()
                
            ScrollView{
                    Text("jhfdgkuyhesjgc")
                }
            }
            
            
        }
        
    }
}

#Preview {
//    GroupSection()
    ContentView()
}
