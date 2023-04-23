//
//  UserSettings.swift
//  Design_Patterns
//
//  Created by AndreMacBook on 2023-04-23.
//

import Foundation

final public class UserSettings {
  
  private var settings: [String: Any] = [
    "Theme": "Vivid", "Brightness": 50
  ]
  
  //-> Hide the initializer
  private init() {}
  
  public static let shared = UserSettings()
  
  // MARK: Get string
  public func string(forKey key: String) -> String? {
    return settings[key] as? String
  }
  
  
}
