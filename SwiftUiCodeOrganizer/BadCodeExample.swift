    //
    //  BadCodeExample.swift
    //  SwiftUiCodeOrganizer
    //
    //  Created by Saiful Islam Sagor on 22/10/23.
    //

import Foundation
import SwiftUI

struct NestedListExample: View {
    @State var notificationsOn: Bool = false
    @State var soundOn: Bool = true
    @State var hapticsOn: Bool = true
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Settings", destination:
                                List {
                    NavigationLink( "Notifications", destination:
                                        List {
                        Toggle("Notifications: ", isOn: $notificationsOn)
                    }
                        .listStyle(.insetGrouped)
                        .navigationTitle("Notifications")
                    )
                    NavigationLink("Sound and Haptics", destination:
                                    List {
                        Toggle("Sound: ", isOn: $soundOn)
                        Toggle("Haptics: ", isOn: $hapticsOn)
                    }.navigationTitle("Notifications")
                    )
                }.listStyle(.insetGrouped)
                    .navigationTitle("Settings")
                )
            }.listStyle(.insetGrouped)
            .navigationTitle("1st List")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct NestedListExample_Previews: PreviewProvider {
    static var previews: some View {
        NestedListExample()
    }
}
