//
        //
    //  Project: ViewThatFits_SwiftUI
    //  File: Profile.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    import Foundation

// Simple model representing a user's public profile
struct Profile {
    let name: String            // display name
    let role:  String           // short role or title
    let bio: String             // brief description
    let avatarSystemImage: String // SF Symbol name for avatar
    let followers: Int          // follower count
    let posts: Int              // number of posts
}

// Convenience sample data for previews
extension Profile {
    static let sample = Profile(name: "Ron", role: "iOS Dev", bio: "I love building apps! Especially with SwiftUI", avatarSystemImage:"person.fill" , followers: 2_400, posts: 87) // used throughout previews
}
