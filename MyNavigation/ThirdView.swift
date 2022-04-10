//
//  ThirdView.swift
//  MyNavigation
//
//  Created by 杉本匠 on 2022/04/09.
//

import SwiftUI

struct ThirdView: View {
  @EnvironmentObject var navModel: Navigation
  
  var body: some View {
    VStack {
      Button {
        navModel.move(.fourth)
      } label: {
        Text("next")
      }
      Button {
        navModel.move(.first)
      } label: {
        Text("back")
      }
    }
    .navigationTitle("ThirdView")
    
    NavigationLink(destination: navModel.destination, tag: navModel.activePage ?? .first, selection: $navModel.activePage) {
      EmptyView()
    }
  }
}

struct ThirdView_Previews: PreviewProvider {
  static var previews: some View {
    ThirdView()
  }
}
