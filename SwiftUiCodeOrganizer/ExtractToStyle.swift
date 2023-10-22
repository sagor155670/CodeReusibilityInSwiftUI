//
//  ExtractToStyle.swift
//  SwiftUiCodeOrganizer
//
//  Created by Saiful Islam Sagor on 22/10/23.
//

import SwiftUI

struct ExtractToStyle: View {
    var body: some View {
        List{
            Button("Button1") {}
                .buttonStyle(DemoButtonStyle(backgroundColor: .blue, foregroundColor: .white))
            Button("Button1") {}
                .buttonStyle(DemoButtonStyle(backgroundColor: .green, foregroundColor: .white))
            Button("Button1") {}
                .buttonStyle(DemoButtonStyle(backgroundColor: .yellow, foregroundColor: .white))
            Button("Button1") {}
                .buttonStyle(DemoButtonStyle(backgroundColor: .orange, foregroundColor: .white))
            Button("Button1") {}
                .buttonStyle(DemoButtonStyle(backgroundColor:  .gray , foregroundColor: .white))
        }.listStyle(.insetGrouped)
    }
}

struct DemoButtonStyle: ButtonStyle {
    var backgroundColor: Color
    var foregroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(foregroundColor)
            .font(.headline)
                .frame(maxWidth: .infinity)
                .frame(height: 50.0)
                .foregroundColor(.black)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct ExtractToStyle_Previews: PreviewProvider {
    static var previews: some View {
        ExtractToStyle()
    }
}
