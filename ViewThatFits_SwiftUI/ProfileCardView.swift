//
        //
    //  Project: ViewThatFits_SwiftUI
    //  File: ProfileCardView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

// A responsive profile card that picks the best layout for the available horizontal space
struct ProfileCardView: View {
    let profile: Profile
    var body: some View {
        // Try wider-to-narrower variants; SwiftUI picks the first that fits horizontally
        ViewThatFits(in: .horizontal) {
            WideCard(profile: profile)  // Preferred when there's ample width
            CompactCard(profile: profile)  // Medium-width fallback
            MinimalCard(profile: profile)  // Last resort for tight spaces
        }
        .padding()  // breathing room around the card
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))  // subtle, adaptable background style
    }
}

#Preview {
    ProfileCardView(profile: Profile.sample)
}

// Wide layout: shows avatar, full text, and stats
private struct WideCard: View {
    let profile: Profile
    var body: some View {
        // Horizontal layout with generous spacing
        HStack(spacing: 20) {
            Image(systemName: profile.avatarSystemImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)  // large avatar size
                .foregroundStyle(.blue)
                .clipShape(Circle())
           
            VStack{
                Text(profile.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(profile.role)
                    .font(.caption2)
                    .foregroundStyle(.secondary)
                Text(profile.bio)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)  // avoid overly tall cards
            }
            Spacer()
            
           StatView(value: profile.followers, label: "Followers")  // quick stats
            StatView(value: profile.posts, label: "Posts")
        }
    }
}

// Reusable small stat presentation
private struct StatView: View {
    let value: Int
    let label: String
    var body: some View {

        // Value on top, label below
        VStack{
            Text(value, format: .number)
                .font(.headline)
                .fontWeight(.bold)
            Text(label)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        
    }
}

// Compact layout: smaller avatar and reduced text
private struct CompactCard: View {
    let profile: Profile
    var body: some View {
        
        HStack{
            Image(systemName: profile.avatarSystemImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 44, height: 44)  // compact avatar size
                .foregroundStyle(.blue)
                .clipShape(Circle())
            
            VStack{
                Text(profile.name)
                    .font(.headline)
                Text(profile.role)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        
        
    }
}

// Minimal layout: name only with tiny avatar
private struct MinimalCard: View {
    let profile: Profile
    var body: some View {
        HStack{
            Image(systemName: profile.avatarSystemImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)  // tiny avatar
                .foregroundStyle(.blue)
                .clipShape(Circle())
            
            VStack{
                Text(profile.name)
                    .font(.caption)
                    .fontWeight(.medium)
                    .lineLimit(1)  // truncate to keep height small

            }
            Spacer()
        }
    }
}

// Responsive button label using ViewThatFits
struct FollowButton: View {
    var body: some View {
        Button(action: { }){
            // Prefer longer, more descriptive labels when space allows
            ViewThatFits{
                Label("Add to following", systemImage: "person.badge.plus")  // most descriptive
                Label("Follow", systemImage: "person.badge.plus")  // shorter alternative
                Image(systemName: "person.badge.plus")  // icon-only fallback
            }
        }
        .buttonStyle(.borderedProminent)  // make the button stand out
    }
}
