//
//  HeroCarousel.swift
//  bitetheappleStore
//
//  Created by dylan on 5/24/26.
//

import SwiftUI

struct HeroCarousel: View {
    let apps: [AppEntry]

    var body: some View {
        TabView {
            ForEach(apps) { app in
                Button(action: {
                    if let url = URL(string: app.githubURL) {
                        UIApplication.shared.open(url)
                    }
                }) {
                    ZStack(alignment: .bottomLeading) {
                        RoundedRectangle(cornerRadius: 24)
                            .fill(
                                LinearGradient(
                                    colors: [.black, .gray.opacity(0.5)],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )

                        VStack(alignment: .leading, spacing: 12) {
                            Spacer()

                            Image(app.iconName)
                                .resizable()
                                .frame(width: 90, height: 90)
                                .cornerRadius(20)

                            Text(app.name)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)

                            Text(app.tagline)
                                .font(.headline)
                                .foregroundColor(.gray)

                            Spacer()
                        }
                        .padding()
                    }
                    .frame(height: 280)
                    .padding(.horizontal)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
    }
}
