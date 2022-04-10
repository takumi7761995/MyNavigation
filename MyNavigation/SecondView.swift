//
//  SecondView.swift
//  MyNavigation
//
//  Created by 杉本匠 on 2022/04/09.
//

import SwiftUI

struct SecondView: View {
  @EnvironmentObject var navModel: Navigation
  
  var body: some View {
    VStack {
      Button {
        navModel.move(.third)
      } label: {
        Text("next")
      }
      Button {
        navModel.move(.first)
      } label: {
        Text("back")
      }
    }
    .navigationTitle("SecondView")
    
    NavigationLink(destination: navModel.destination, tag: navModel.activePage ?? .first, selection: $navModel.activePage) {
      EmptyView()
    }
  }
}

struct SecondView_Previews: PreviewProvider {
  static var previews: some View {
    SecondView()
  }
}
