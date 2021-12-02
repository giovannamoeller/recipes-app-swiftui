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
    
    VStack(alignment: .leading) {
      
      Text("Featured Recipes")
        .bold()
        .padding(.leading)
        .padding(.top, 40)
        .font(.largeTitle)
      
      GeometryReader { geo in
        TabView {
          
          ForEach(0..<recipeModel.recipes.count) { index in
            if recipeModel.recipes[index].featured {
              ZStack {
                Rectangle()
                  .foregroundColor(.white)
                  
                
                ZStack {
                  Image(recipeModel.recipes[index].image)
                    .resizable()
                    .scaledToFill()
                    .clipped()
                  Text(recipeModel.recipes[index].name)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                }
              }.frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                .cornerRadius(12.0)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 20, x: 0, y: 10)
            }
            
          }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
          .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
          .offset(y: -30)
      }
      
      VStack(alignment: .leading, spacing: 4) {
        Text("Preparation Time:")
          .font(.headline)
        Text("1 hour")
        Text("Highlights")
          .font(.headline)
        Text("Healthy, Hearty")
      }.padding(.leading)
    }
  }
}

struct FeaturedRecipesView_Previews: PreviewProvider {
  static var previews: some View {
    FeaturedRecipesView()
      .environmentObject(RecipeModel())
  }
}
