//
//  AppState.swift
//  RouteTest
//
//  Created by Matthew Hoopes on 12/30/20.
//

import SwiftUI
import AppNavigation

typealias StateType = Equatable & Codable

struct AppState: StateType, NavigationStateRoot {
  var navigation: NavigationState = NavigationState()
}
