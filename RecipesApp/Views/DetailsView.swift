//
//  RecipeView.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 23/11/21.
//

import SwiftUI

struct DetailsView: View {
  var recipe: Recipe
  var body: some View {
    ScrollView(showsIndicators: false) {
      VStack(alignment: .leading) {
        Image(recipe.image)
          .resizable()
          .scaledToFill()
          .frame(width: UIScreen.main.bounds.width, height: 300, alignment: .leading)
          .clipped()
        
        VStack(alignment: .leading) {
          Text("Ingredients")
            .bold()
            .padding(.vertical, 8)
          ForEach(recipe.ingredients, id: \.self) { ingredient in
            Text("- " + ingredient)
              .padding(.vertical, 1)
          }
          Divider()
          Text("Directions")
            .bold()
            .padding(.vertical, 8)
          ForEach(recipe.directions, id: \.self) { direction in
            Text("- " + direction)
              .padding(.vertical, 1)
          }
          
        }.padding(.leading)
        
        Spacer()
      }
    }.navigationTitle(recipe.name)
  }
}

extension UINavigationController {
  override open func viewDidLoad() {
    super.viewDidLoad()
    interactivePopGestureRecognizer?.delegate = nil
  }
}

struct DetailsView_Previews: PreviewProvider {
  static var previews: some View {
    DetailsView(recipe: RecipeModel().recipes[0])
  }
}
