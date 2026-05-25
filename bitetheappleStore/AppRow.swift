//
//  AppRow.swift
//  bitetheappleStore
//
//  Created by dylan on 5/24/26.
//

import SwiftUI

struct AppRow: View {
    let app: AppEntry

    var body: some View {
        HStack(spacing: 14) {
            Image(app.iconName)
                .resizable()
                .frame(width: 64, height: 64)
                .cornerRadius(14)

            VStack(alignment: .leading, spacing: 4) {
                Text(app.name)
                    .font(.headline)
                    .foregroundColor(.white)

                Text(app.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Text("\(app.category) • \(app.version)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Spacer()

            Button(action: {
                if let url = URL(string: app.githubURL) {
                    UIApplication.shared.open(url)
                }
            }) {
                Text("GET")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
            }
        }
        .padding(.horizontal)
    }
}
