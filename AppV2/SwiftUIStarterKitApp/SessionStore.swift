//
//  SessionStore.swift
//  SwiftUIStarterKitApp
//
//  Created by shuanglu  liu on 2021-03-14.
//  Copyright © 2021 NexThings. All rights reserved.
//

import SwiftUI
import Firebase
import Combine

class SessionStore: ObservableObject{
    var didChange = PassthroughSubject<SessionStore, Never>()
    @Published var session : User? {didSet {self.didChange.send(self)}}
    var handle :AuthStateDidChangeListenerHandle?
    
    func listen() {
        handle = Auth.auth().addStateDidChangeListener({(auth, user ) in
            if let user = user{self.session = User(uid: user.uid, email: user.email)
            }else{
                self.session = nil
            }
        })
    }
    
    func signUp(email:String, password: String, handler: @escaping AuthDataResultCallback)  {
        Auth.auth().createUser(withEmail: email, password: password, completion: handler)
        
    }
    
    func signIn(email: String, password: String, handler: @escaping AuthDataResultCallback) {
        Auth.auth().signIn(withEmail: email, password: password, completion: handler)
    }
    
    func signOut(){
        do {
            try Auth.auth().signOut()
            self.session=nil
            
        }catch{
            print("error when signing the user out")
        }
    }
    
    func unbind(){
        if let handle = handle{
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
    
    deinit {
        unbind()
    }
}

struct User {
    var uid: String
    var email:String?
    
    init(uid: String, email:String?) {
        self.uid = uid
        self.email = email
    }
}
