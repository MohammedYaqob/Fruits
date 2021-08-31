//
//  SettingsRowView.swift
//  fruits
//
//  Created by Mohammed Yaqob's MacBook on 27/07/2021.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - Proprities
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Mohammed Yaqob")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
