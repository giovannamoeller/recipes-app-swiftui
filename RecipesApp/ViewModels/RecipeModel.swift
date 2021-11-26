//
//  RecipeModel.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 23/11/21.
//

import Foundation

class RecipeModel: ObservableObject   {
  @Published var recipes: [Recipe] = []
  
  init() {
    self.recipes = DataService().getLocalData()
  }
}
