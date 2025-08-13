//
//  MotionAnimationView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 10/08/25.
//

import SwiftUI

struct MotionAnimationView: View {

    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating = false

    func randomCoordinates() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }

    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }

    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }

    func randomSpeed() -> Double {
        return Double.random(in: 0.65...1.0)
    }

    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }

    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(Color.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinates(),
                        y: randomCoordinates()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(
                                .init(stiffness: 0.25, damping: 0.25)
                            )
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                            isAnimating = true
                        }
                    }
                    )
            }
        }
        .frame(width: 256, height: 256)
        .mask({
            Circle()
        })
        .drawingGroup()

    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
}
