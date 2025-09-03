import SwiftUI

struct PrimaryTextField: View {
    let title: String
    @Binding var text: String
    
    var body: some View {
        TextField(title, text: $text)
            .autocapitalization(.none)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}

#Preview {
    PrimaryTextField(title: "Email", text: .constant(""))
}
