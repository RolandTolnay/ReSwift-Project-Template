//
//  ViewController.swift
//  ReSwift-Template
//
//  Created by Roland Tolnay on 17/06/2018.
//  Copyright © 2018 Roland Tolnay. All rights reserved.
//

import UIKit
import ReSwift

class MainViewController: UIViewController, StoreSubscriber {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    store.subscribe(self)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    store.unsubscribe(self)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    store.dispatch(AppAction.Initialized())
  }
  
  func newState(state: AppState) {
    
    print("MainViewController received state. isInitialized: \(state.isInitialized)")
  }
}
