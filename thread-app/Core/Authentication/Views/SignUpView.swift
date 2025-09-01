import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var fullName: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
       
            VStack {
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
                
                VStack(
                    spacing: 16
                ) {
                    PrimaryTextField(
                        title: "Enter Your Email",
                        text: $email
                    )
                    PrimaryTextField(
                        title: "Enter Your Full Name",
                        text: $fullName
                    )
                    PrimaryTextField(
                        title: "Enter Your Username",
                        text: $username
                    )
                    PrimaryPasswordField(
                        title: "Enter Your Password",
                        text: $password
                    )
                    
                    PrimaryButton(
                        title: "Sign Up"
                    )
                }
                .padding(
                    .top,
                    32
                )
                
                Spacer()
                Divider()
               Button {
                   dismiss()
               }label: {
                   HStack(
                       spacing: 3
                   ){
                       Text(
                           "Already have an account?"
                       )
                       
                       
                       Text(
                           "Sign In"
                       ).fontWeight(
                           .semibold
                       )
                       
                   }.font(
                       .footnote
                   )
                   .foregroundColor(
                       .black
                   )
                   
               }.padding(.vertical,16)
                
            }
  
        
    }
}

#Preview {
    SignUpView()
}
