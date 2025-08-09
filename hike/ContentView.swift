//
//  ContentView.swift
//  hike
//
//  Created by Abhishek Bhalerao on 09/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("image-1")
                .resizable()
                .scaledToFit()
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
