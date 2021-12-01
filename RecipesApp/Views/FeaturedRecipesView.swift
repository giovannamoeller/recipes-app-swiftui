//
//  FeaturedRecipesView.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 26/11/21.
//

import SwiftUI

struct FeaturedRecipesView: View {
  
  // @ObservedObject var model = RecipeModel() -> recreate the list (two sets of data)
  @EnvironmentObject var recipeModel:RecipeModel
  
  var body: some View {
    Text("Hello, World!")
  }
}

struct FeaturedRecipesView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedRecipesView()
  }
}
