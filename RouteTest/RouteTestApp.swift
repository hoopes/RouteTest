//
//  RouteTestApp.swift
//  RouteTest
//
//  Created by Matthew Hoopes on 12/30/20.
//

import SwiftUI
import SwiftDux
import AppNavigation

func configureStore() -> Store<AppState> {
  Store(
    state: AppState(),
    reducer: rootReducer,
    middleware: rootMiddleware
  )
}

@main
struct RouteTestApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView()
            .provideStore(configureStore())
        }
    }
}
