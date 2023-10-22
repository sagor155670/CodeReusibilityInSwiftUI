//
//   ExtractToViewBuilderComputedProperty.swift
//  SwiftUiCodeOrganizer
//
//  Created by Saiful Islam Sagor on 22/10/23.
//

import SwiftUI

struct ExtractToViewBuilderComputedProperty: View {
    
    @State var notificationOn:Bool = false
    @State var soundOn:Bool = false
    @State var hapticsOn:Bool = false
    @State var isPremium:Bool = true
        // body Computed property
    var body: some View{
        NavigationView {
            VStack {
                List{
                    NavigationLink("Settings") {
                        Settings
                            .navigationTitle("Settings")
                    }
                }.listStyle(.insetGrouped)
            }
            .navigationTitle("1st List")
        }
        .navigationViewStyle(.stack)
    }
    @ViewBuilder
    var Settings: some View {
      
        List {
                NavigationLink("Notifications") {
                    Notifications
                        .navigationTitle("Notification")
                }
                NavigationLink("Sound and Haptics") {
                    SoundAndHaptics
                        .navigationTitle("Sound and Haptics")
                }
            }.listStyle(.insetGrouped)
    }
    
    @ViewBuilder
    var Notifications: some View {
     
        List{
            Toggle("Notifications", isOn: $notificationOn)
        }.listStyle(.insetGrouped)
    }
    
    @ViewBuilder
    var SoundAndHaptics: some View {
        if isPremium{
            List{
                Toggle("Sound", isOn: $soundOn)
                Toggle("Haptics", isOn: $hapticsOn)
            }.listStyle(.insetGrouped)
        }else{
            List{
                Toggle("Sound", isOn: $soundOn)
//                Toggle("Haptics", isOn: $hapticsOn)
            }.listStyle(.insetGrouped)
        }
    }
    
}

struct ExtractToViewBuilderComputedProperty_Previews: PreviewProvider {
    static var previews: some View {
        ExtractToViewBuilderComputedProperty()
    }
}
