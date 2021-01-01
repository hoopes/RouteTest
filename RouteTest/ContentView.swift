//
//  ContentView.swift
//  RouteTest
//
//  Created by Matthew Hoopes on 12/30/20.
//

import SwiftUI
import SwiftDux
import AppNavigation



struct RootContentView: View {

  @Environment(\.actionDispatcher) private var dispatch
  @Environment(\.waypoint) private var waypoint

  var body: some View {
    NavigationView {
      VStack {
        Text("Hello, world!")
          .padding()

        RouteLink(path: "/one") { Text("ONE") }
        RouteLink(path: "/two") { Text("TWO") }

        // Error: Route completion timed out for the 'main' route.
        RouteLink(path: "/settings") { Text("Settings 1") }

        // Error: Route completion timed out for the 'settings' route.
        RouteLink(path: "/", routeName: "settings") { Text("Settings 2") }
      }

      // These will create the Waypoint for you and will push their views onto the NavigationView.
      .stackItem(.name("one")) { OneView() }
      .stackItem(.name("two")) { TwoView() }
    }
    .navigationViewStyle(StackNavigationViewStyle()) // act correctly on an ipad for this example
  }
}

struct RootSettingsView: View {
  var body: some View {
    Route(name: "settings") {
      Text("Settings!")
    }
  }
}


struct OneView: View {

  var body: some View {
    Text("One!")
      .padding()

    RouteLink(path: "/two") { Text("GO TO TWO") }
  }
}

struct TwoView: View {

  var body: some View {
    Text("Two!")
      .padding()

    RouteLink(path: "/one") { Text("GO TO ONE") }
  }
}

