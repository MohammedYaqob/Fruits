//
//  fruitsApp.swift
//  fruits
//
//  Created by Mohammed Yaqob's MacBook on 26/07/2021.
//

import SwiftUI

@main
struct fruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if (isOnboarding) {
                OnboardinView()
            } else {
                ContentView()
            }
        }
    }
}
