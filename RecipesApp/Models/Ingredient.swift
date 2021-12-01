//
//  Ingredient.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 30/11/21.
//

import Foundation

class Ingredient: Decodable, Identifiable {
  var id: UUID?
  var name: String
  var num: Int?
  var unit: String?
  var denom: Int?
}
