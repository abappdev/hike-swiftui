//
//  CustomCircleView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 10/08/25.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimate = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.colorIndigoMedium,
                            Color.colorSalmonLight,
                        ],
                        startPoint: isAnimate ? .topLeading : .bottomLeading,
                        endPoint: isAnimate ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(
                        .linear(duration: 3).repeatForever(autoreverses: true)
                    ) {
                        isAnimate.toggle()
                    }
                }
            
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
