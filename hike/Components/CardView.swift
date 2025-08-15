//
//  CardView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 09/08/25.
//

import SwiftUI

struct CardView: View {

    @State private var randomNumber: Int = 0
    @State private var imageNumber: Int = 1
    @State private var isShowingSettings = false

    func changeImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }

    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {

                VStack {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        Color.colorGrayLight,
                                        Color.colorGrayMedium,
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                        Spacer()
                        Button(
                            action: {
                                isShowingSettings = true
                            },
                            label: {
                                CustomButtonView()
                            }
                        )
                    }
                    Text(
                        "Enjoy outdoor adventures fun activity with family and friends"
                    )
                    .multilineTextAlignment(.leading)
                    .italic()
                    .foregroundStyle(Color.colorGrayMedium)
                }
                .padding(.horizontal, 10)

                ZStack {
                    CustomCircleView()

                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 2), value: imageNumber)
                }

                Button(
                    action: {
                        changeImage()
                    },
                    label: {
                        Text("Explore")
                            .fontWeight(.heavy)
                            .font(.title2)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        Color.colorGreenMedium,
                                        Color.colorGreenDark,
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            ).shadow(
                                color: .black.opacity(0.25),
                                radius: 0.25,
                                x: 1.0,
                                y: 2.0
                            )

                    }
                )
                .buttonStyle(GradientButtonStyle())
                .buttonStyle(.glass)

            }
            .frame(width: 320, height: 570)
        }.sheet(
            isPresented: $isShowingSettings,
            content: {
                SettingsView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium, .large])
            }
        )
    }
}

#Preview {
    CardView()
}
