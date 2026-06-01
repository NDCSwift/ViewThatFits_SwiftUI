# 📐 ViewThatFits — SwiftUI
A hands-on demo showing how SwiftUI's `ViewThatFits` container automatically picks the right layout for the available space.

---

## 🤔 What this is
This project demonstrates `ViewThatFits`, a SwiftUI container that tries each child view in order and renders the first one that fits the available space. It uses a profile card with three layout tiers (wide, compact, minimal) and a follow button whose label shrinks down to an icon when space runs out — all without a single conditional or geometry reader.

## ✅ Why you'd use it
- **Adaptive layouts** — let SwiftUI choose the best layout automatically instead of writing manual size checks
- **No GeometryReader hacks** — `ViewThatFits` is the clean, declarative way to respond to container width
- **Reusable components** — the same view renders correctly at any size, making it safe to use in widgets, lists, and split-view sidebars

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtube.com/watch?v=PLACEHOLDER)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone
```bash
git clone https://github.com/NDCSwift/ViewThatFits_SwiftUI.git
```

### 2. Open
Open **`ViewThatFits_SwiftUI.xcodeproj`** in Xcode.

### 3. Set your Team
In the project navigator select the **ViewThatFits_SwiftUI** target → **Signing & Capabilities** → choose your Apple Developer team.

### 4. Set your Bundle ID
Change the Bundle Identifier to something unique (e.g. `com.yourname.ViewThatFits`).

Run on Simulator or a real device — no additional setup required.

---

## 🛠️ Notes
- `ContentView.swift` renders the same `ProfileCardView` and `FollowButton` at several fixed widths so you can see all three tiers side-by-side without resizing the simulator.
- `ProfileCardView` wraps three private sub-views (`WideCard`, `CompactCard`, `MinimalCard`) inside `ViewThatFits(in: .horizontal)`.
- `FollowButton` uses `ViewThatFits` to cascade from a full `Label` → short `Label` → icon-only `Image`.

## 📦 Requirements
| | |
|---|---|
| Xcode | 15+ |
| iOS | 16+ |
| Swift | 5.9+ |

---

📺 [Watch the guide on YouTube](https://youtube.com/watch?v=PLACEHOLDER)
