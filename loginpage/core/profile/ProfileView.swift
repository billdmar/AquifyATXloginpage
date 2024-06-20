//
//  ProfileView.swift
//  loginpage
//
//  Created by Bill Mar on 6/19/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray))
                        .clipShape(Circle())
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text(User.MOCK_USER.fullname)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.top, 4)
                    Text(User.MOCK_USER.email)
                        .font(.footnote)
                        .accentColor(.gray)
                }
            }
            Section("General"){
                HStack{
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    Spacer()
                    
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Section("Account"){
                    Button{
                        print("Sign out...")
                    } label:{
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: Color(.red))
                    }
                    Button{
                        print("Delete Account")
                    } label:{
                        SettingsRowView(imageName: "xmark.circle.fill", title: "Delete Account", tintColor: Color(.red))
                    }
                }
            }
            
        }
    }
}
    
    struct ProfileView_Previews: PreviewProvider{
        static var previews: some View{
            ProfileView()
        }
    }
