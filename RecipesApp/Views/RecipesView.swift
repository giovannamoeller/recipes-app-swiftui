//
//  RecipesView.swift
//  RecipesApp
//
//  Created by Giovanna Moeller on 23/11/21.
//

import SwiftUI

struct RecipesView: View {
  
  @EnvironmentObject var recipeModel:RecipeModel
    
  var body: some View {
    NavigationView {
      VStack(alignment: .leading) {
        Text("All Recipes")
          .bold()
          .padding(.leading)
          .padding(.top, 40)
          .font(.largeTitle)
        
        ScrollView(showsIndicators: false) {
          LazyVStack(alignment: .leading) {
            ForEach(recipeModel.recipes) { recipe in
              NavigationLink {
                DetailsView(recipe: recipe)
              } label: {
                HStack(spacing: 16) {
                  Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(8.0)
                  Text(recipe.name)
                    .bold()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                  Spacer()
                  Image(systemName: "chevron.right")
                    .foregroundColor(.black.opacity(0.1))
                }.padding(.vertical, 8)
                
              }
              
              Divider()
              
              
            }.listStyle(.plain)
          }.padding(.horizontal)
        }
      }
      //.navigationTitle("My Recipes")
      .navigationBarHidden(true)
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    RecipesView().environmentObject(RecipeModel())
  }
}
