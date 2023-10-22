    //
    //  ExtractToSeperateStruct.swift
    //  SwiftUiCodeOrganizer
    //
    //  Created by Saiful Islam Sagor on 22/10/23.
    //

import Foundation
import SwiftUI


struct ExtractToSeperateStructView : View {
    var body: some View{
        NavigationView {
            VStack {
                List{
                    NavigationLink("Settings") {
                        SettingsView()
                            .navigationTitle("Settings")
                    }
                }.listStyle(.insetGrouped)
            }
            .navigationTitle("1st List")
        }
        .navigationViewStyle(.stack)
    }
}



struct SettingsView: View {
    @State var notificationOn: Bool = false
    @State var soundOn: Bool = false
    @State var hapticsOn: Bool = false
    var body: some View {
        
        List {
            
            NavigationLink("Notifications") {
                NotificationsView(notificationOn: $notificationOn)
                    .navigationTitle("Notification")
            }
            NavigationLink("Sound and Haptics") {
                SoundAndHapticsView(soundOn: $soundOn, hapticsOn: $hapticsOn)
                    .navigationTitle("Sound and Haptics")
            }
            
        }.listStyle(.insetGrouped)
    }
}



struct NotificationsView : View {
    @Binding var notificationOn: Bool
    var body : some View {
        
        List {
            Toggle("Notifications" , isOn: $notificationOn )
        }.listStyle(.insetGrouped)
        
    }
}




struct SoundAndHapticsView: View {
    @Binding var soundOn: Bool
    @Binding var hapticsOn: Bool
    
    var body: some View{
        
        List {
            Toggle("Sound", isOn: $soundOn)
            Toggle("Haptics", isOn: $hapticsOn)
        }.listStyle(.insetGrouped)
        
    }
}




struct FirstView_preview: PreviewProvider{
    static var previews: some View{
        ExtractToSeperateStructView()
    }
}

    //struct SettingsView_preview: PreviewProvider{
    //    static var previews: some View{
    //       SettingsView()
    //    }
    //}
    //
    //struct NotificationView_preview: PreviewProvider{
    //    static var previews: some View{
    //        NotificationsView(notificationOn: .constant(true))
    //    }
    //}

    //struct SoundAndHapticsView_preview: PreviewProvider{
    //    static var previews: some View{
    //        SoundAndHapticsView(soundOn: .constant(true), hapticsOn: .constant(false))
    //    }
    //}
