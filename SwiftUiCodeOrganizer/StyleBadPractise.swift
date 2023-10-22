//
//  StyleBadPractise.swift
//  SwiftUiCodeOrganizer
//
//  Created by Saiful Islam Sagor on 22/10/23.
//

import SwiftUI

struct StyleBadPractise: View {

    var body: some View {
        
        VStack {
            
            List{
                Button("Button1") {}
                .foregroundColor(.white)
                .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50.0)
                    .background(Color.green)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Button("Button2") {}
                .foregroundColor(.white)
                .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 15))

                Button("Button3") {}
                .foregroundColor(.white)
                .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 15))

                Button("Button4") {}
                .foregroundColor(.white)
                .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Button("Button5") {}
                .foregroundColor(.white)
                .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 15))



            }.listStyle(.insetGrouped)
            
            ExtractToStyle()
        }
    }
}

struct StyleBadPractise_Previews: PreviewProvider {
    static var previews: some View {
        StyleBadPractise()
    }
}
