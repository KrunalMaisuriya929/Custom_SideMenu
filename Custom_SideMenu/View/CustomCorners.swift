//
//  CustomCorners.swift
//  Custom_SideMenu
//
//  Created by Krunal on 02/02/24.
//

import SwiftUI

//Custom Corner Shape.....!
struct CustomCorners: Shape {
    
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
         let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
    
}


//#Preview {
//    CustomCorners()
//}
