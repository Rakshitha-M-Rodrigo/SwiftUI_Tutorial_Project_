//
//  ProfileSummary.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-19.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 10){
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile(username: "Dark Knight"))
}
