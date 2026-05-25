//
//  AppEntry.swift
//  bitetheappleStore
//
//  Created by dylan on 5/24/26.
//

import Foundation

struct AppEntry: Identifiable {
    let id = UUID()
    let name: String
    let subtitle: String
    let iconName: String
    let githubURL: String
    let tagline: String
    let category: String
    let version: String
}
