//
//  ExtractToFunction.swift
//  SwiftUiCodeOrganizer
//
//  Created by Saiful Islam Sagor on 22/10/23.
//

import SwiftUI

struct ExtractToFunction: View {
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
    
    func Settings() -> some View {
        let anyView : AnyView
       anyView = AnyView( List {
                NavigationLink("Notifications") {
                    Notifications()
                        .navigationTitle("Notification")
                }
                NavigationLink("Sound and Haptics") {
                    SoundAndHaptics(isPremium: true)
                        .navigationTitle("Sound and Haptics")
                }
            }.listStyle(.insetGrouped)
        )
        
        return anyView
    }
    
    func Notifications() -> some View {
        let anyView : AnyView
        anyView =  AnyView ( List{
            Toggle("Notifications", isOn: $notificationOn)
        }.listStyle(.insetGrouped)
        )
        return anyView
    }
    
    func SoundAndHaptics(isPremium: Bool) -> some View {
        let anyView : AnyView
        if isPremium{
            anyView = AnyView ( List{
                Toggle("Sound", isOn: $soundOn)
                Toggle("Haptics", isOn: $hapticsOn)
            }.listStyle(.insetGrouped))
        }else{
            anyView = AnyView ( List{
                Toggle("Sound", isOn: $soundOn)
//                Toggle("Haptics", isOn: $hapticsOn)
            }.listStyle(.insetGrouped)
        )
        }
        

        return anyView
    }
    
}

struct ExtractToFunction_Previews: PreviewProvider {
    static var previews: some View {
        ExtractToFunction()
    }
}
