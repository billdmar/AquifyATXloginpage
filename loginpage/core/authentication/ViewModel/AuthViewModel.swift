//
//  AuthViewModel.swift
//  loginpage
//
//  Created by Bill Mar on 6/20/24.
//

import Foundation

import Firebase

class AuthViewModel : ObservableObject{
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    init(){
        
    }
    func signIN(withEmail email: String, password: String) async throws{
        
    }
    func CreateUser(withEmail email:String, password:String, fullname:String) async throws{
        
    }
    func signOut(){
        
    }
    func deleteAccount(){
        
    }
    func fetchUser() async{
        
    }
    
    
    
    
}
