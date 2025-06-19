# 🏋️‍♂️ Rursus - Your AI-Powered Gym Coach

Rursus is an iOS application that generates hyper-personalized gym programs based on body morphology using AI (LLM + Computer Vision). Get customized workouts that adapt to your body type, fitness level, and goals.

## ✨ Features

### 🧍‍♂️ Smart Authentication
- Email + Password sign-in
- Apple Sign-In integration
- Google Sign-In support
- Secure onboarding flow

### 📷 Body Analysis
- Capture or upload 3 body photos (front, side, back)
- AI-powered body composition analysis
- In-app guidance with silhouette overlays
- Secure image storage

### 🤖 AI-Powered Program Generation
- Personalized workout plans based on:
  - Body ratios and symmetry
  - Muscle distribution analysis
  - Fitness goals (bulking, cutting, recomposition)
  - Training experience level
- Weekly program optimization

### 📋 Smart Workout Tracking
- Real-time workout logging
- RPE (Rate of Perceived Exertion) tracking
- Weight and rep tracking
- Exercise feedback system
- Rest timer between sets

### 🔁 Adaptive AI Feedback
- Daily session analysis
- Weekly program adjustments
- Volume and intensity optimization
- Exercise substitution suggestions

### 📈 Progress Analytics
- Workout history timeline
- Exercise-specific progress graphs
- Trend detection (plateaus, improvements)
- Performance insights

## 🛠️ Technical Stack

- **Platform**: iOS 16.0+
- **Language**: Swift 5.9+
- **UI Framework**: SwiftUI
- **Architecture**: MVVM
- **Backend**: Firebase (Auth, Firestore, Storage)
- **Authentication**: Firebase Auth, GoogleSignIn SDK, AuthenticationServices
- **AI Integration**: OpenAI API / Custom CV models
- **Package Management**: Swift Package Manager

## 📱 Screenshots

*Coming soon...*

## 🚀 Getting Started

### Prerequisites
- Xcode 15.0+
- iOS 16.0+ device or simulator
- Firebase project setup
- Google Sign-In configuration

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/rursus.git
   cd rursus
   ```

2. **Open in Xcode**
   ```bash
   open Rursus.xcodeproj
   ```

3. **Install Dependencies**
   - Firebase SDK (via Swift Package Manager)
   - GoogleSignIn SDK (via Swift Package Manager)

4. **Configure Firebase**
   - Add `GoogleService-Info.plist` to your project
   - Enable Authentication, Firestore, and Storage in Firebase Console

5. **Configure Google Sign-In**
   - Set up OAuth 2.0 client in Google Cloud Console
   - Add URL schemes to Info.plist

## 📊 Project Structure

```
Rursus/
├── Models/                 # Data models
│   ├── User/              # User profile models
│   ├── Workout/           # Workout and exercise models
│   └── AI/                # Body scan and analysis models
├── ViewModels/            # MVVM ViewModels
│   ├── Authentication/    # Auth logic
│   ├── BodyScanning/      # Body scan functionality
│   ├── WorkoutTracker/    # Workout session management
│   └── Progress/          # Analytics and progress
├── Views/                 # SwiftUI Views
│   ├── Authentication/    # Sign-in/up screens
│   ├── Onboarding/        # First-time user flow
│   ├── BodyScanning/      # Photo capture screens
│   ├── WorkoutTracker/    # Workout session UI
│   ├── Progress/          # Analytics dashboard
│   ├── Settings/          # App settings
│   └── Components/        # Reusable UI components
├── Services/              # External services
│   ├── Firebase/          # Firebase integration
│   ├── AI/                # AI service calls
│   └── Network/           # API communication
├── Utilities/             # Helper utilities
│   ├── Constants/         # App constants
│   └── Helpers/           # Utility functions
└── Extensions/            # Swift extensions
    ├── SwiftUI/           # SwiftUI extensions
    └── Foundation/        # Foundation extensions
```

## 📋 Development Status

See [Implementation Guide](implementation_guide.md) for detailed development progress.

### Phase 1: Project Setup ✅
- [x] Initialize Xcode project
- [x] Set up MVVM folder structure
- [ ] Install Firebase SDK
- [ ] Install GoogleSignIn SDK
- [ ] Configure Firebase project

### Phase 2: Authentication 🚧
- [ ] Implement Sign Up/Log In screens
- [ ] Integrate Firebase Auth
- [ ] Add Apple Sign-In support
- [ ] Add Google Sign-In support

### Upcoming Phases
- Phase 3: Onboarding & Profile
- Phase 4: Body Scanning
- Phase 5: AI Program Generation
- Phase 6: Workout Tracker
- Phase 7: AI Feedback Loop
- Phase 8: Progress Dashboard

## 🤝 Contributing

We welcome contributions! Please read our [Contributing Guidelines](CONTRIBUTING.md) before submitting pull requests.

### Development Setup
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔐 Privacy & Security

Rursus takes user privacy seriously:
- All body photos are encrypted and securely stored
- User data is processed in compliance with privacy regulations
- Users have full control over their data and can delete it at any time
- Transparent privacy policy available in-app

## 📞 Support

- 📧 Email: support@rursus.app
- 🐛 Bug Reports: [GitHub Issues](https://github.com/yourusername/rursus/issues)
- 💬 Discussions: [GitHub Discussions](https://github.com/yourusername/rursus/discussions)

## 🙏 Acknowledgments

- Firebase for backend infrastructure
- OpenAI for AI capabilities
- Apple for development tools and platform
- The fitness community for inspiration and feedback

---

**Rursus** - Transform your fitness journey with AI-powered personalization. 💪