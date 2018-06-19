//
//  MainStore.swift
//  ReSwift-Template
//
//  Created by Roland Tolnay on 17/06/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import Foundation
import ReSwift

let store: Store = Store<AppState>(
  reducer: mainReducer,
  state: AppState.load(),
  middleware: [
    savingMiddleware,
    loggingMiddleware
  ]
)
