//
//  PrimaryButton.swift
//  thread-app
//
//  Created by Hashan Ranasinghe on 2025-09-01.
//

import SwiftUI

struct PrimaryButton: View {
    @State var title: String
    var body: some View {
        Button{
        } label: {
            Text(
                title
            )
            .font(
                .subheadline
            )
            .foregroundColor(
                .white
            )
            .padding()
            .frame(
                width: 352,
                height: 44
            )
            .background(
                .black
            )
            .cornerRadius(
                8
            )
        }
    }
}

#Preview {
    PrimaryButton(
        title: "Login"
    )
}
