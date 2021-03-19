
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var session: SessionStore
    @State private var isSignUp = false
    @State var emailAddress: String = ""
    @State var name: String = ""
    @State var phone: String = ""
    @State var password: String = ""
    @State var error: String = ""
    
    func signUp(){
        session.signUp(email: emailAddress, password: password){
            (result, error) in
            if let error = error {
                self.error = error.localizedDescription
            }else{
                self.emailAddress = ""
                self.password = ""
            }
        }
    }
    var body: some View {

    GeometryReader { geometry in
        VStack (alignment: .center){
//            HStack {
//                Image("2")
//                .resizable()
//                .frame(width: 20, height: 20)
//                Text("Social App")
//                    .font(.system(size: 12))
//                
//            }
            
            Text("Create an Account")
                .font(.title)
                .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                .padding(.bottom, 50)
            
//            Button(action: {
//                print("Add photo")
//            }) {
//                VStack(alignment: .center) {
//                    Text("+")
//                    .font(.system(size: 18))
//                    Text("Add Photo")
//                        .font(.system(size: 10))
//                }.padding()
//                .frame(width: 100, height: 100)
//                .foregroundColor(Color.white)
//                .background(Color.blue)
//            }
//            .clipShape(Circle())
//            .padding(.bottom, 10)
            
            VStack {
            TextField("Name", text: self.$name)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .textContentType(.emailAddress)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .accentColor(.red)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .cornerRadius(5)
            
            TextField("Email", text: self.$emailAddress)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .textContentType(.emailAddress)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .accentColor(.red)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .cornerRadius(5)
                
            TextField("Phone", text: self.$phone)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .textContentType(.emailAddress)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .accentColor(.red)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .cornerRadius(5)
            
            SecureField("Password", text: self.$password)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .textContentType(.emailAddress)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .accentColor(.red)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .cornerRadius(5)
            }

            Text("Terms of Service and Privacy Policy")
                .foregroundColor(Color.blue)
                .padding(.bottom, 40)
                .font(.system(size: 12))
    
            Button(action:signUp) {
                HStack {
                    Text("Create Account")
                }
                .padding()
                .frame(width: geometry.size.width - 40, height: 40)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(5)
            }.padding(.bottom, 20)
            
            if error != "" {
                Text(error)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.red)
                    .padding(.bottom, 30)
            }
//            Button(action: {
//                        print("Sign up using Facebook Instead")
//                    }) {
//                        HStack {
//                            Image("f_logo_RGB-Blue_58")
//                                .resizable()
//                                .frame(width: 20, height: 20)
//                            Text("Sign Up with Facebook")
//                        }
//
//            }
            
            Spacer()
            
        }.padding(.horizontal, 10)
    }
  }
    
}
