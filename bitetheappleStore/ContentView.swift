//
//  ContentView.swift
//  bitetheappleStore
//
//  Created by dylan on 5/24/26.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""

    let apps = [
        AppEntry(
            name: "bitetheappleStore",
            subtitle: "your apps. one place.",
            iconName: "bitetheapplestore",
            githubURL: "https://github.com/thatpicoder/bitetheappleStore",
            tagline: "apps. all the way down.",
            category: "utilities",
            version: "1.0"
        ),
        AppEntry(
            name: "TipTap",
            subtitle: "quick tip calculator",
            iconName: "tiptap",
            githubURL: "https://github.com/thatpicoder/TipTap",
            tagline: "quick math, no awkwardness.",
            category: "utilities",
            version: "1.0"
        ),
        AppEntry(
            name: "AfterFees",
            subtitle: "ebay seller fee calculator",
            iconName: "afterfees",
            githubURL: "https://github.com/thatpicoder/AfterFees",
            tagline: "ebay takes enough already.",
            category: "finance",
            version: "1.0"
        ),
        AppEntry(
            name: "SPOD",
            subtitle: "space picture of the day",
            iconName: "spod",
            githubURL: "https://github.com/thatpicoder/SPOD",
            tagline: "today's universe, delivered.",
            category: "education",
            version: "1.0"
        ),
        AppEntry(
            name: "QR Drop",
            subtitle: "scan + generate qr codes",
            iconName: "qrdrop",
            githubURL: "https://github.com/thatpicoder/QR-Drop",
            tagline: "scan. generate. done.",
            category: "utilities",
            version: "1.0"
        ),
        AppEntry(
            name: "101 Jokes",
            subtitle: "random jokes on demand",
            iconName: "jokes101",
            githubURL: "https://github.com/thatpicoder/101-Jokes",
            tagline: "legally too many jokes.",
            category: "entertainment",
            version: "1.0"
        ),
        AppEntry(
            name: "nope!",
            subtitle: "tiny dodge game",
            iconName: "nope",
            githubURL: "https://github.com/thatpicoder/nope",
            tagline: "avoid the inevitable.",
            category: "games",
            version: "1.0"
        ),
        AppEntry(
            name: "TripWeather",
            subtitle: "estimated weather for specific dates",
            iconName: "tripweather",
            githubURL: "https://github.com/thatpicoder/tripweather",
            tagline: "beat the weather.",
            category: "utilities",
            version: "1.0"
        )
    ]

    var filteredApps: [AppEntry] {
        if searchText.isEmpty {
            return apps
        }

        return apps.filter {
            $0.name.lowercased().contains(searchText.lowercased())
        }
    }

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("bitetheappleStore")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)

                    TextField("search apps", text: $searchText)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(14)
                        .padding(.horizontal)

                    Text("featured")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)

                    HeroCarousel(apps: apps)

                    Text("apps")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)

                    VStack(spacing: 20) {
                        ForEach(filteredApps) { app in
                            AppRow(app: app)
                        }
                    }

                    Spacer()
                }
                .padding(.top)
            }
        }
    }
}
