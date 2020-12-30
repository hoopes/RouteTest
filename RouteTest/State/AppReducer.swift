//
//  AppReducer.swift
//  RouteTest
//
//  Created by Matthew Hoopes on 12/30/20.
//

import Foundation
import SwiftDux
import AppNavigation

let rootReducer =  NavigationReducer<AppState>()
let rootMiddleware = NavigationMiddleware<AppState>()
