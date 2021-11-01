//
//  Signup.swift
//  LoginPageSWIFTUI
//
//  Created by Gulam Ali on 01/11/21.
//

import SwiftUI

struct Signup: View {
    
    @State var emaill = ""
    @State var passwordd = ""
    @State var confirmpasswordd = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("Sign Up")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("dark"))
            //for letter spacing
                .kerning(1.9)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            //for email...
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text("Username")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("xyz@gmail.com", text: $emaill)
                //increasing font size and text color
                    .font(.system(size: 20.0, weight: .semibold, design: .default))
                    .foregroundColor(Color("dark"))
                    .padding(.top, 5)
                
                Divider()
            }
            .padding(.top, 25)
            
            
            // for password...
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text("Password")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                SecureField("123456", text: $passwordd)
                //increasing font size and text color
                    .font(.system(size: 20.0, weight: .semibold, design: .default))
                    .foregroundColor(Color("dark"))
                    .padding(.top, 5)
                
                Divider()
            }
            .padding(.top, 15)
            
            //for confirm passsword
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text("Confirm Password")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                SecureField("123456", text: $confirmpasswordd)
                //increasing font size and text color
                    .font(.system(size: 20.0, weight: .semibold, design: .default))
                    .foregroundColor(Color("dark"))
                    .padding(.top, 5)
                
                Divider()
            }
            .padding(.top, 15)
            
            //forget password....
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Forgot Password?")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top, 10)
            
            //Next button ...
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "arrow.right")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("dark"))
                    .clipShape(Circle())
                    .shadow(color: Color("light"), radius: 5.0, x: 5, y: 5)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
            
            
            //Not a member
            Spacer()
            HStack{
                Text("Already have account?")
                    .foregroundColor(Color("dark"))
                    .font(.system(size: 17.0, weight: .bold))
                    
                Button(action: {
                    print("SignIn tapped")
                }) {
                    Text("SignIn")
                        .font(.system(size: 17.0, weight: .bold))
                        
                }
                    
            }
            
        }
        .padding()
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
