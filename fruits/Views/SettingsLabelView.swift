//
//  SettingsLabelView.swift
//  fruits
//
//  Created by Mohammed Yaqob's MacBook on 27/07/2021.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - Proprities
    
    var labelText: String
    var labelImage: String
    
    //MARK: - Body
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - Preview

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "test", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
