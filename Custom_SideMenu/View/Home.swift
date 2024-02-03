//
//  Home.swift
//  Custom_SideMenu
//
//  Created by Krunal on 02/02/24.
//

import SwiftUI

struct Home: View {
    
    @Binding var SelectedTab : String
    
    //Hiding Tab Bar.....
    init(SelectedTab: Binding<String>) {
        self._SelectedTab = SelectedTab 
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        //Tab View with tabs....!
        TabView(selection: $SelectedTab){
            
            //All Views....!
            HomePage()
                .tag("Home")
            
            notification()
                .tag("Notification")
            
            Message()
                .tag("Message")
            
            Settings()
                .tag("Settings")
            
            FAQ()
                .tag("FAQ")
                
        }
        
    }
}

#Preview {
    ContentView()
}

struct HomePage : View {
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading, spacing: 20){
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)

                VStack(alignment: .leading, spacing: 5){
                    
                    Text("Natalie Portman")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        
                    Text("Natalie Portman is an Israeli-born American actress.")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                
            }
            .navigationTitle("Home")
        }
    }
}

struct notification : View {
    var body: some View {
        NavigationView{
        
            Text("Notification")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notification")
        }
    }
}

struct Message : View {
    var body: some View {
        NavigationView{
        
            Text("Message")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Message")
        }
    }
}

struct Settings : View {
    var body: some View {
        NavigationView{
        
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct FAQ : View {
    var body: some View {
        NavigationView{
        
            Text("FAQ")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("FAQ")
        }
    }
}
