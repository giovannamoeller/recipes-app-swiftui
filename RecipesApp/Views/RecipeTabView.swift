//
//  TabView.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 26/11/21.
//

import SwiftUI

struct RecipeTabView: View {
  var body: some View {
    TabView {
      RecipesView()
        .tabItem {
          VStack {
            Image(systemName: "list.bullet")
            Text("Recipes")
          }
        }
      
      FeaturedRecipesView()
        .tabItem {
          VStack {
            Image(systemName: "star.fill")
            Text("Featured")
          }
          
        }
    }
  }
}

struct TabView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeTabView()
  }
}
