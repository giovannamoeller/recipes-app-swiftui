//
//  JSONDecoder.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 23/11/21.
//

import Foundation

struct DataService {
    
  func getLocalData() -> [Recipe] {
    let pathString = Bundle.main.path(forResource: "recipes", ofType: "json") // Main Bundle (our app's bundle)
    guard let path = pathString else { return [] }
    let url = URL(fileURLWithPath: path)
    var recipeData: [Recipe] = []
    do {
      let data = try Data(contentsOf: url)
      let decoder = JSONDecoder()
      do {
        recipeData = try decoder.decode([Recipe].self, from: data)
        for r in recipeData {
          r.id = UUID()
        }
        return recipeData
      } catch {
        print(error)
      }
    } catch {
      print(error)
    }
    return [Recipe]()
  }
}
