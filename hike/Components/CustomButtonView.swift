//
//  CustomButtonView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 10/08/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.colorGreenLight, Color.customGreenMedium,
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )

            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            Color.colorGrayLight, Color.colorGrayMedium,
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 2
                )

            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            Color.colorGrayLight, Color.colorGrayMedium,
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )

        }.frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
}
