
//

import SwiftUI

struct LogInView: View {
    @EnvironmentObject var session: SessionStore
    @State private var isLoggedIn = false
    @State private var isSignUp = false
    @State  private var emailAddress: String = ""
    @State  private var password: String = ""
    @State private var error: String = ""
    func signIn(){
        session.signIn(email: emailAddress, password: password){
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
        NavigationView {
            VStack (alignment: .center){
                HStack {
                    Image("2")
                    .resizable()
                    .frame(width: 20, height: 20)
                    Text("Investpal")
                        .font(.system(size: 12))
                        
                }.padding(.top, 30)
                .padding(.bottom, 10)
                
                Text("Log Into Your Account")
                    .font(.title)
                    .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                    .padding(.bottom, 50)
                
                TextField("Email", text: self.$emailAddress)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .textContentType(.emailAddress)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .accentColor(.red)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .cornerRadius(5)
                
                
                SecureField("Password", text: self.$password)
                    .frame(width: geometry.size.width - 45, height: 50)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .foregroundColor(.gray)
                    .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                    .textContentType(.password)
                    .cornerRadius(5)

                

                 Button(action: signIn) {
                        HStack {
                            Text("Log In")
                        }
                            .padding()
                            .frame(width: geometry.size.width - 40, height: 40)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(5)
                    }
                     .padding(.bottom, 20)

                
                
                NavigationLink(
                    destination: SignUpView(),
                    isActive: $isSignUp
                    ){
                 Button(action: {
                    self.isSignUp = true
                 }) {
                        HStack {
                            Text("Sign Up")
                        }
                            .padding()
                            .frame(width: geometry.size.width - 40, height: 40)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(5)
                    }
                     .padding(.bottom, 20)

                }
                
                if error != "" {
                    Text("Email or Password is not correct")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.red)
                        .padding(.bottom, 30)
                    
                }
                
                
                Divider()
                
                Button(action: {
                        print("Take to forget password VC")
                        }) {
                        Text("Forgot your password?")
                }
                
                Spacer()
                
            }
            .padding(.bottom, 90)
            }
        
        

    }
        
    }
    

    
}





