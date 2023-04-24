//
//  ContentView.swift
//  Design_Patterns
//
//  Created by AndreMacBook on 2023-04-23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
          Text("Hello World")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
