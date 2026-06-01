//
        //
    //  Project: ViewThatFits_SwiftUI
    //  File: ContentView.swift
    //  Created by Noah Carpenter 
    //
    //  📺 YouTube: Noah Does Coding
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Dream Big. Code Bigger 🚀
    //

    

import SwiftUI

struct ContentView: View {
    // Root view showcasing how ViewThatFits adapts layouts at different container widths
    var body: some View {

        // Scroll to make it easy to preview multiple sizes vertically
        ScrollView{
            // Stack a few cards and buttons at different fixed widths to demonstrate fitting
            VStack{
                // Same content rendered at a wider width — should pick the WideCard
                ProfileCardView(profile: .sample)
                    .frame(width: 420)
                // Medium width — should pick the CompactCard
                ProfileCardView(profile: .sample)
                    .frame(width: 240)
                // Narrow width — should pick the MinimalCard
                ProfileCardView(profile: .sample)
                    .frame(width: 100)
                
                
                // Follow button demonstrates ViewThatFits choosing between label lengths
                FollowButton()
                    .frame(width: 240) // full text fits
                FollowButton()
                    .frame(width: 120) // shortened text fits
                FollowButton()
                    .frame(width: 60) // only the icon fits
            }
        }

    }
}

#Preview {
    ContentView()
}
