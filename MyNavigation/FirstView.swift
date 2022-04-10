//
//  ThirdView.swift
//  MyNavigation
//
//  Created by 杉本匠 on 2022/04/09.
//

import SwiftUI

struct FirstView: View {
  @EnvironmentObject var navModel: Navigation
  
  var body: some View {
    Button {
      navModel.move(.second)
    } label: {
      Text("next")
    }
    Button {
      navModel.popToRoot()
    } label: {
      Text("back")
    }
    .navigationTitle("FirstView")
    
    NavigationLink(destination: navModel.destination, tag: navModel.activePage ?? .first, selection: $navModel.activePage) {
      EmptyView()
    }
  }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
      FirstView()
    }
}
