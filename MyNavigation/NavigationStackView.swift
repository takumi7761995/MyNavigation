//
//  NavigationStackView.swift
//  MyNavigation
//
//  Created by 杉本匠 on 2022/04/09.
//

import SwiftUI


struct NavigationStackView: View {
  @EnvironmentObject var navModel: Navigation
  
  var body: some View {
    NavigationView {
      VStack  {
        Button(action: {
          navModel.move(.first)
        }) {
          Text("to 1stView")
        }
        Button(action: {
          navModel.move(.second)
        }) {
          Text("to 2ndView")
        }
        
        NavigationLink(destination: navModel.destination, tag: navModel.activePage ?? .first, selection: $navModel.activePage) {
          EmptyView()
        }
        //        ForEach(Navigation.Page.allCases, id: \.self) { page in
        //          NavigationLink(destination: navModel.destination, tag: page, selection: $navModel.activePage) {
        //            EmptyView()
        //          }
        //        }
      }
    }
  }
}



class Navigation: ObservableObject {
  @Published var activePage: Page?
  @Published var destination: AnyView? = nil
  var root: Page = .first
  
  
  enum Page: Int, CaseIterable {
    case first
    case second
    case third
    case fourth
    
    var view: AnyView {
      switch self {
      case .first: return AnyView(FirstView())
      case .second: return AnyView(SecondView())
      case .third: return AnyView(ThirdView())
      case .fourth: return AnyView(FourthView())
      }
    }
  }
  
  func move(_ next: Page) {
    self.destination = next.view
    self.activePage = next
  }
  
  //  func pop() {
  //    self.destination = Page.allCases[self.activePage?.rawValue ?? 1 - 1].view
  //    self.activePage = next
  //  }
  
  func popToRoot() {
    activePage = nil
  }
}
