//
//  RecipesAppApp.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 23/11/21.
//

import SwiftUI

@main
struct RecipesAppApp: App {
  var body: some Scene {
    WindowGroup {
      RecipesView()
        //.environmentObject(RecipeModel())
    }
  }
}
