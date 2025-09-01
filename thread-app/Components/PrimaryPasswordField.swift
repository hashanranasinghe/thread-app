//
//  PrimaryPasswordField.swift
//  thread-app
//
//  Created by Hashan Ranasinghe on 2025-09-01.
//

import SwiftUI

struct PrimaryPasswordField: View {
    @State var title: String
    @Binding var text: String
    var body: some View {
        SecureField(
            title,
            text: $text
        )
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal,24)    }
}

#Preview {
    PrimaryPasswordField(
        title: "Password", text: .constant("")
    )
}
