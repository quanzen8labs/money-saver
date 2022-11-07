//
//  AppDelegateStore.swift
//  MoneySaver
//
//  Created by macbook on 07/11/2022.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import SwiftyBeaver

class AppDelegate: UIResponder, UIApplicationDelegate {
    let store = Store(initialState: AppReducer.State(), reducer: AppReducer())
}
