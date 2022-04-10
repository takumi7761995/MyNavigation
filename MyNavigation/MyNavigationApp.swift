//
//  MyNavigationApp.swift
//  MyNavigation
//
//  Created by 杉本匠 on 2022/04/09.
//

import SwiftUI

@main
struct MyNavigationApp: App {
  @StateObject var navModel = Navigation()
  
  var body: some Scene {
    WindowGroup {
      NavigationStackView()
        .environmentObject(navModel)
    }
  }
}
