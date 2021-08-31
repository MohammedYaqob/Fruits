//
//  OnboardinView.swift
//  fruits
//
//  Created by Mohammed Yaqob's MacBook on 26/07/2021.
//

import SwiftUI

struct OnboardinView: View {
    
    //MARK: - Proprities
    
    var fruits : [Fruit] = fruitData
    
    //MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0..<5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - Preview

struct OnboardinView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardinView(fruits: fruitData)
    }
}
