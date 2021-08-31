//
//  ContentView.swift
//  fruits
//
//  Created by Mohammed Yaqob's MacBook on 26/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Proprities
    
    var fruits : [Fruit] = fruitData
    
    @State private var isShowSettings : Bool = false
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruits: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowSettings, content: {
                SettingsView()
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
