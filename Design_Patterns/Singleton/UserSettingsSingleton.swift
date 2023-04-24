//
//  UserSettings.swift
//  Design_Patterns
//
//  Created by AndreMacBook on 2023-04-23.
//

// THE SINGLETON
//  1 -> Only one instance of the given type can be created
//  2 -> Shared instance can't be cloned
//  3 -> Singleton is thread-safe
//  * -> Classes that conform to NSCopying protocol cannot be used as singleton since they can be copied.

import Foundation

final public class UserSettings {
  
  private var settings: [String: Any] = [
    "Theme": "Vivid", "Brightness": 50
  ]
  
  //-> Hide the initializer
  private init() {}
  
  public static let shared = UserSettings()
  
  private let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
  
  //-> We can read concurrently
  public func string(forKey key: String) -> String? {
    concurrentQueue.sync {
      return settings[key] as? String
    }
  }
    
  //-> We can read concurrently
  public func int(forKey key: String) -> Int? {
    concurrentQueue.sync {
      return settings[key] as? Int
    }
  }
  

  //-> Write operation is wrapped in a barrier (serial) to ensure one access at a time
  public func set(_ value: Any, forKey key: String) {
    concurrentQueue.async(flags: .barrier) {
      self.settings[key] = value
    }
  }
  
}
