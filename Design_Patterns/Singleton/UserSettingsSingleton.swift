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
  
  private let serialQueue = DispatchQueue(label: "serialQueue")
  
  // MARK: Get string
  public func string(forKey key: String) -> String? {
    serialQueue.sync {
      return settings[key] as? String
    }
  }
    
  // MARK: Get integer
  public func int(forKey key: String) -> Int? {
    serialQueue.sync {
      return settings[key] as? Int
    }
  }
  

  // MARK: Set
  public func set(_ value: Any, forKey key: String) {
    serialQueue.sync {
      settings[key] = value
    }
  }
  
}
