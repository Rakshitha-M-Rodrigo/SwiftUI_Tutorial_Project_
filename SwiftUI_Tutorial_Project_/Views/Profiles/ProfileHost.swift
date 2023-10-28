//
//  ProfileHost.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-19.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Spacer()
                EditButton()
            }
            
            if(editMode?.wrappedValue == .inactive){
                ProfileSummary(profile: modelData.profile)
            } else {
                Text("Profile Button Editor")
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}

//struct ProfileHost_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHost()
//    }
//}
