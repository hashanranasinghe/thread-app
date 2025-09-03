//
//  UserFollowCard.swift
//  thread-app
//
//  Created by Hashan Ranasinghe on 2025-09-03.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Hassan Ranasinghe")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("@hassanranasinghe")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
                Button(action: {}) {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                        .foregroundColor(.black)
                        .frame(width: 100,height: 32)
                        .overlay{
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.systemGray4),lineWidth: 1)
                        }
                }
            }
            Divider()
        }.padding(.vertical,4)
            .padding(.horizontal,10)
    }
}

#Preview {
    UserCell()
}
