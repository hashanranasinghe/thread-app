//
//  LoginView.swift
//  thread-app
//
//  Created by Hashan Ranasinghe on 2025-09-01.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email : String = ""
    @State private var password : String = ""
    
    
    var body: some View {
        NavigationStack {
            
            VStack{
                Spacer()
                Image(
                    "logo"
                )
                .resizable()
                .scaledToFit()
                .frame(
                    width: 120,
                    height: 120
                )
                .padding()
                
                VStack {
                    PrimaryTextField(title: "Enter Your Email", text: $email)
                    
                    PrimaryPasswordField(
                        title: "Enter Your password",
                        text: $password
                    )
                    
                    
                }
                
                NavigationLink{
                    Text(
                        "Forget Password"
                    )
                }label: {
                    Text(
                        "Forget Password"
                    )
                    .font(
                        .footnote
                    )
                    .foregroundColor(
                        .black
                    )
                    .padding(
                        .vertical
                    )
                    .padding(
                        .trailing,
                        28
                    )
                    .fontWeight(
                        .semibold
                    )
                    .frame(
                        maxWidth: .infinity,
                        alignment: .trailing
                    )
                }
                
                PrimaryButton(
                    title: "Login"
                )
                Spacer()
                Divider()
                NavigationLink{
                    SignUpView()
                        .navigationBarBackButtonHidden(true)
                }
                label: {
                    HStack(
                        spacing: 3
                    ){
                        Text(
                            "Don't have an account?"
                        )
                        
                        
                        Text(
                            "Sign Up"
                        ).fontWeight(
                            .semibold
                        )
                        
                    }.font(
                        .footnote
                    )
                    .foregroundColor(
                        .black
                    )
                    
                    
                }.padding(
                    .vertical,
                    16
                )
                
            }
        }
    }
}

#Preview {
    LoginView()
}
