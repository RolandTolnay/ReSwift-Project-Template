//
//  MainReducer.swift
//  ReSwift-Template
//
//  Created by Roland Tolnay on 17/06/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

func mainReducer(action: Action, state: AppState?) -> AppState {
  var state = state ?? AppState()
  
  switch action {
    case _ as AppAction.Initialized:
      state.isInitialized = true
    
  default:
    break
  }
  
  return state
}
