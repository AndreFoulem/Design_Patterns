//
//  UserSettingsView.swift
//  Design_Patterns
//
//  Created by AndreMacBook on 2023-04-23.
//

import SwiftUI

let theme = UserSettings.shared.string(forKey: "Theme") ?? ""
let brightness = UserSettings.shared.int(forKey: "Brightness") ?? 0

struct UserSettingsView: View {
  
  var body: some View {
    
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("\(theme)")
    }
    .padding()
  }
}

struct UserSettingsView_Previews: PreviewProvider {
  static var previews: some View {
    UserSettingsView()
  }
}
