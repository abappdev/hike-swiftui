//
//  CustomBackgroundView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 10/08/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            
            Color.colorGreenDark
                .cornerRadius(60)
                .offset(y: 12)
            
            
            Color.colorGreenLight
                .cornerRadius(60)
                .offset(y: 3)
                .opacity(0.8)
            
            
            LinearGradient(
                colors: [Color.colorGreenLight, Color.colorGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            ).cornerRadius(60)
            
            
            
        }
    }
}

#Preview {
    CustomBackgroundView()
}
