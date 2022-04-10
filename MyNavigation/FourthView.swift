//
//  FourthView.swift
//  MyNavigation
//
//  Created by 杉本匠 on 2022/04/09.
//

import SwiftUI

struct FourthView: View {
  @EnvironmentObject var navModel: Navigation
  
  var body: some View {
    VStack {
      Button {
        navModel.move(.third)
      } label: {
        Text("back")
      }
      Button {
        navModel.popToRoot()
      } label: {
        Text("back to root")
      }
    }
    .navigationTitle("FourthView")
    
    NavigationLink(destination: navModel.destination, tag: navModel.activePage ?? .first, selection: $navModel.activePage) {
      EmptyView()
    }
  }
}

struct FourthView_Previews: PreviewProvider {
  static var previews: some View {
    FourthView()
  }
}
