//
//  GradientButtonStyle.swift
//  hike
//
//  Created by Abhishek Bhalerao on 10/08/25.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical, 10)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed
                    ? LinearGradient(
                        colors: [
                            Color.colorGrayLight,
                            Color.colorGrayMedium,
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    : LinearGradient(
                        colors: [
                            Color.colorGrayMedium,
                            Color.colorGrayLight,
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
            ).cornerRadius(40)
    }
}
