//
//  FruitRowView.swift
//  fruits
//
//  Created by Mohammed Yaqob's MacBook on 26/07/2021.
//

import SwiftUI

struct FruitRowView: View {
    
    //MARK: - Proprities
    
    var fruits : Fruit
    
    //MARK: - Body
    
    var body: some View {
        HStack {
            Image(fruits.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black, radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(fruits.title)
                    .font(.title2)
                    .bold()
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
        }
    }
}

//MARK: - Preview

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruits: fruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
