//
//  ExtractToViewBuilder.swift
//  SwiftUiCodeOrganizer
//
//  Created by Saiful Islam Sagor on 22/10/23.
//

import SwiftUI

struct ExtractToViewBuilder: View {
    @State var notificationOn:Bool = false
    @State var soundOn:Bool = false
    @State var hapticsOn:Bool = false
    
        // body Computed property
    var body: some View{
        NavigationView {
            VStack {
                List{
                    NavigationLink("Settings") {
                        Settings()
                            .navigationTitle("Settings")
                    }
                }.listStyle(.insetGrouped)
            }
            .navigationTitle("1st List")
        }
        .navigationViewStyle(.stack)
    }
    @ViewBuilder
    func Settings() -> some View {
      
        List {
                NavigationLink("Notifications") {
                    Notifications()
                        .navigationTitle("Notification")
                }
                NavigationLink("Sound and Haptics") {
                    SoundAndHaptics(isPremium: true)
                        .navigationTitle("Sound and Haptics")
                }
            }.listStyle(.insetGrouped)
    }
    
    @ViewBuilder
    func Notifications() -> some View {
     
        List{
            Toggle("Notifications", isOn: $notificationOn)
        }.listStyle(.insetGrouped)
    }
    
    @ViewBuilder
    func SoundAndHaptics(isPremium: Bool) -> some View {
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

struct ExtractToViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
        ExtractToViewBuilder()
    }
}
