//
//  AppState.swift
//  ReSwift-Template
//
//  Created by Roland Tolnay on 17/06/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

public struct AppState: StateType, Codable, Equatable {
  
  var isInitialized: Bool
  
  init() {
    isInitialized = false
  }
}
