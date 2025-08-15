//
//  CustomListRowView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 15/08/25.
//

import SwiftUI

struct CustomListRowView: View {

    @State var rowIcon: String
    @State var rowTitle: String
    @State var rowContent: String
    @State var rowTintColor: Color

    var body: some View {
        LabeledContent(
            content: {
                Text(rowContent)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            },
            label: {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 30, height: 30)
                            .foregroundStyle(rowTintColor)
                        Image(systemName: rowIcon)
                            .foregroundStyle(Color.white)
                    }
                    Text(rowTitle)
                }
            }
        )
    }
}

#Preview {
    CustomListRowView(
        rowIcon: "app.grid",
        rowTitle: "Application",
        rowContent: "Hike",
        rowTintColor: .blue
    )
}
