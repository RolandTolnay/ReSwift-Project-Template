//
//  Middleware.swift
//  ReSwift-Template
//
//  Created by Roland Tolnay on 19/06/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

let loggingMiddleware: Middleware<AppState> = { dispatch, getState in
  return { next in
    return { action in
      
      print("Action received: \(action)")
      print("State: \(String(describing: getState()))")
      
      return next(action)
    }
  }
}

let savingMiddleware: Middleware<AppState> = { dispatch, getState in
  return { next in
    return { action in
      
      if let state = getState() {
        state.save()
        print("State saved")
      }
      
      return next(action)
    }
  }
}
