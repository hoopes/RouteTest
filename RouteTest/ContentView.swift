//
//  ContentView.swift
//  RouteTest
//
//  Created by Matthew Hoopes on 12/30/20.
//

import SwiftUI
import SwiftDux
import AppNavigation

struct ContentView: View {

  @Environment(\.actionDispatcher) private var dispatch
  @Environment(\.waypoint) private var waypoint

  var body: some View {
    WaypointView(.name("root")) { wp in
      Text("Hello, world!")
        .padding()

      Button(action: {
        dispatch(NavigationAction.navigate(to: URL(string: "/one")!))
      }) { Text("Button to one") }

      Button(action: {
        dispatch(NavigationAction.navigate(to: URL(string: "/two")!))
      }) { Text("Button to two") }

      RouteLink(path: "/one") { Text("ONE") }
      RouteLink(path: "/two") { Text("TWO") }
    }
  }
}

struct OneView: View {

  @Environment(\.actionDispatcher) private var dispatch
  @Environment(\.waypoint) private var waypoint

  var body: some View {
    WaypointView(.name("one")) { wp in
      Text("One!")
        .padding()

      RouteLink(path: "/one") { Text("ONE") }
      RouteLink(path: "/two") { Text("TWO") }
    }
  }
}

struct TwoView: View {

  @Environment(\.actionDispatcher) private var dispatch
  @Environment(\.waypoint) private var waypoint

  var body: some View {
    WaypointView(.name("two")) { wp in
      Text("Two!")
        .padding()

      RouteLink(path: "/one") { Text("ONE") }
      RouteLink(path: "/two") { Text("TWO") }
    }
  }
}
