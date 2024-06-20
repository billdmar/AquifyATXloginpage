//
//  RegistrationView.swift
//  loginpage
//
//  Created by Bill Mar on 6/19/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            //image
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 224.0)
                .padding(.vertical, 32)
            
            //form fields
            VStack (spacing: 12){
                InputView(text: $email,
                          title: "Email Address",
                          placeHolder: "name@example.com")
                
                InputView(text: $fullName,
                          title: "Full Name",
                          placeHolder: "Enter your name")
                
                InputView(text: $password,
                          title: "Password",
                          placeHolder: "Enter your password",
                          isSecureField: true)
                
                InputView(text: $confirmPassword,
                          title: "Confirm Password",
                          placeHolder: "Confirm your password",
                          isSecureField: true)
                    
                
            }
            .padding(.horizontal)
            .padding(.top, 12)
            
            Button {
                print("Log user in..")
            } label:{
                HStack{
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: 350, height: 48)
            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 20)
            
            Spacer()
            
            Button{
                dismiss()
            } label:{
                HStack(spacing: 2){
                    Text("Already have an account?")
                    Text("Sign in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    RegistrationView()
}
