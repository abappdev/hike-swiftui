//
//  SettingsView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 13/08/25.
//

import SwiftUI

struct SettingsView: View {

    private let appIcons: [String] = [
        "AppIcon-Map",
        "AppIcon-Campfire",
        "AppIcon-Camera",
        "AppIcon-Backpack",
    ]

    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "laurel.leading").font(
                    .system(size: 80, weight: .bold)
                )

                VStack(spacing: -10) {
                    Text("Hike").font(.system(size: 66, weight: .bold))
                    Text("Editor's Choice").font(
                        .system(size: 24, weight: .bold)
                    )
                }

                Image(systemName: "laurel.trailing").font(
                    .system(size: 80, weight: .bold)
                )
                Spacer()
            }
            .foregroundStyle(
                LinearGradient(
                    colors: [
                        Color.customGreenLight, Color.customGreenMedium,
                        Color.customGreenDark,
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )

            VStack(spacing: 8) {

                Text("Where can you find \nperfect tracks?")
                    .font(.title2)
                    .fontWeight(.heavy)

                Text(
                    "The hike which look like a dream, \nbut you can't find it."
                )
                .font(.footnote)
                .italic()

                Text("Dust off your compass, \nand set off on a new adventure!")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.customGreenMedium)
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity)

            Section(
                header: Text("Change app icon"),
            ) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(appIcons.indices, id: \.self) { item in
                            Button(
                                action: {
                                    UIApplication.shared.setAlternateIconName(
                                        appIcons[item]
                                    ) {
                                        error in

                                        if let error = error {
                                            print("Unable to set alternate icon: \(error.localizedDescription)")
                                        } else {
                                            print("Icon changed successfully!")
                                        }

                                    }

                                },
                                label: {
                                    Image("\(appIcons[item])-Preview")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(16)
                                }

                            ).buttonStyle(.borderless)
                        }
                    }

                }.padding(.top, 12)

                Text(
                    "Choose your favourite one, \nand save it as your new app icon!"
                )
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            }

            Section(
                header: Text("About the app"),
                footer: HStack {
                    Spacer()
                    Text("Made with 💖 in India 🇮🇳")
                    Spacer()
                }
            ) {

                CustomListRowView(
                    rowIcon: "app.grid",
                    rowTitle: "Application",
                    rowContent: "Hike",
                    rowTintColor: .blue
                )

                CustomListRowView(
                    rowIcon: "info.square.fill",
                    rowTitle: "Compability",
                    rowContent: "iOS, iPadOS",
                    rowTintColor: .green
                )

                CustomListRowView(
                    rowIcon: "swift",
                    rowTitle: "Technology",
                    rowContent: "Swift",
                    rowTintColor: .orange
                )

                CustomListRowView(
                    rowIcon: "lessthan.square.fill",
                    rowTitle: "Developer",
                    rowContent: "Abhishek Bhalerao",
                    rowTintColor: .pink
                )

                CustomListRowView(
                    rowIcon: "globe.fill",
                    rowTitle: "Website",
                    rowContent: "www.abappdev.in",
                    rowTintColor: .purple
                )
            }

        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    SettingsView()
}
