# 🧠 Project Requirements Document – Rursus

## 1. Overview

### 1.1 Name
**Rursus** – Personalized AI Gym Coach

### 1.2 Description
Rursus is an iOS-only application that enables users to generate a hyper-personalized gym program based on body morphology, using AI (LLM + Computer Vision). The app guides users through:
- Account creation
- Body photo scanning
- Custom program generation
- Real-time workout logging with RPE and feedback
- Continuous program adjustment by AI

### 1.3 Target Audience
- Gym enthusiasts (beginner → advanced)
- People looking for customized plans
- Privacy-conscious tech users (data stays secure)

---

## 2. Core Features

### 2.1 🧍‍♂️ User Authentication
- Email + password
- Apple Sign-In
- Google Sign-In
- Secure onboarding flow

### 2.2 📷 Body Scanning
- Capture or upload 3 photos (front, side, back)
- In-app photo guidance (silhouette overlay)
- Secure image storage
- AI processing (CV model)

### 2.3 🤖 AI-Powered Program Generation
- LLM-based generation based on:
  - Body ratios (shoulder/waist, symmetry, fat/muscle est.)
  - User goals: bulking, cutting, recomposition
  - Training history (newbie → advanced)
- Weekly program: split, volume, rest, tempo
- Program is editable with AI suggestions

### 2.4 📋 Workout Session Tracker
- Display daily workout (muscle group, exercises, sets)
- Log for each set:
  - Weight used
  - Reps
  - RPE (1–10)
  - Feedback: easy / hard / failed
- Add custom exercise
- Timer between sets (optional)

### 2.5 🔁 AI Feedback Loop
- Daily session feedback summary
- Weekly update proposal (auto or manual accept):
  - Add volume
  - Reduce intensity
  - Swap exercises

### 2.6 📈 Progress & Logs
- Timeline of completed workouts
- Exercise-specific graphs (weight, reps)
- Trend detection (plateau, fatigue)

### 2.7 🔔 Notifications
- Reminder for workout time
- Weekly progress summary
- Optional tips & motivation

### 2.8 🔐 Privacy & Data
- Consent screen for photo use
- Right to delete all data
- Transparent privacy policy

---

## 3. User Flow

```
→ Launch App
   → Onboarding (if first time)
     → Sign up / Log in
       → Profile setup (age, weight, height, level)
         → Upload body photos
           → AI processes photos + generates program
             → Home screen: Today’s workout
               → Start workout
                 → Log weights/reps/feedback in real time
                   → End session → Summary screen
                     → Weekly check-in → Adjust program
```

- Re-scan body manually (optional, encouraged monthly)
- View progress at any time via Progress tab
- Navigate via bottom tab bar (Home / Program / Progress / Settings)

---

## 4. UI & Screen Structure

### 4.1 Screens
| Screen Name            | Components                                                                 |
|------------------------|----------------------------------------------------------------------------|
| Onboarding             | Sign In / Sign Up, Profile Info, Consent                                   |
| Body Scanning          | Camera or Upload, Frame Guide, Progress Indicator                          |
| AI Program Result      | Split Overview, Exercises, Weekly Plan                                     |
| Today’s Workout        | Exercise list, Set tracker, Feedback inputs, Timer                         |
| Session Summary        | Feedback recap, AI recommendations, User notes                             |
| Progress Dashboard     | Graphs by exercise, Weekly summaries, Scans over time                      |
| Settings               | Profile, Notifications, Privacy, Re-scan body                              |

---

## 5. Design System

- **Framework:** SwiftUI (100%)
- **Style:** Minimalist, elegant fitness UI
- **Colors:** #000000 (primary), #1BD96A (accent), #FFFFFF (background)
- **Typography:** SF Pro – Headline + Body text
- **Icons:** SF Symbols + custom SVG for guidance overlays
- **Motion:** Smooth transitions, haptics for actions (set complete, feedback saved)

---

## 6. Technical Stack

### 6.1 Frontend – iOS App
- Language: Swift 5.9+
- UI Framework: SwiftUI
- Architecture: MVVM
- Navigation: SwiftUI `NavigationStack`
- Authentication: Firebase Auth, GoogleSignIn SDK, AuthenticationServices (Apple)
- Local Storage: UserDefaults, CoreData
- Secure Storage: Keychain
- Image Handling: PhotosUI

### 6.2 Backend
- Firebase Auth + Firestore (with Google & Apple Sign-In)
- Firebase Storage for images
- CV Model (e.g. FastAPI or serverless)
- LLM (e.g. OpenAI API)
- AI response → JSON workout plan

### 6.3 AI
- CV model: MediaPipe / OpenCV
- LLM: GPT-4-turbo / Claude
- Post-processing logic to SwiftUI models

### 6.4 Notifications
- Local: UNUserNotificationCenter
- Remote: Firebase Cloud Messaging (optional)

---

## 7. MVP Scope

### MUST HAVE
- Auth
- Photo upload
- AI program gen
- Workout tracker
- Feedback system
- Progress dashboard

### NICE TO HAVE
- Apple HealthKit sync
- Siri Shortcuts
- Apple Watch

---

## 8. Open Questions

1. Optional program without photo?
2. Offline logging?
3. AI update frequency?
4. AI hosted where?
5. Admin dashboard access?

---

## 9. Next Steps

- Finalize design
- Setup Firebase
- Build onboarding
- Create prompt → JSON structure
- Integrate CV + LLM
- Build training UI