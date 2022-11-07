//
//  MoneySaverApp.swift
//  MoneySaver
//
//  Created by macbook on 05/11/2022.
//

import SwiftUI

@main
struct MoneySaverApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            TabBarView(store: appDelegate.store)
        }
    }
}
