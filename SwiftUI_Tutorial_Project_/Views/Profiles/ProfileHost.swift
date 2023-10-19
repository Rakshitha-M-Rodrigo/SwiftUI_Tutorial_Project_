//
//  ProfileHost.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-19.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        Text("Profile For \(draftProfile.username)")
    }
}

#Preview {
    ProfileHost()
}

//struct ProfileHost_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHost()
//    }
//}
