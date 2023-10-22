    //
    //  ExtractToLocalComputedPropertyView.swift
    //  SwiftUiCodeOrganizer
    //
    //  Created by Saiful Islam Sagor on 22/10/23.
    //

import SwiftUI

struct ExtractToLocalComputedProperty: View {
    @State var notificationOn:Bool = false
    @State var soundOn:Bool = false
    @State var hapticsOn:Bool = false

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

        //Settings Computed property
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

        //Notifications Computed property
    var Notifications: some View {
        List{
            Toggle("Notifications", isOn: $notificationOn)
        }.listStyle(.insetGrouped)
    }

        //SoundAndHaptics Computed property
    var SoundAndHaptics: some View{
        List{
            Toggle("Sound", isOn: $soundOn)
            Toggle("Haptics", isOn: $hapticsOn)
        }.listStyle(.insetGrouped)
    }
}

struct ExtractToLocalComputedPropertyView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractToLocalComputedProperty()
    }
}
