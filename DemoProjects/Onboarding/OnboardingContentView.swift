//
//  OnboardingContentView.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI
import SwiftUIX

struct OnboardingContentView: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            TabView {
                OnboardingCardView(title: "Welcome \nto the Demo", description: "This is a demo onboarding flow. Built 100% in SwiftUI. The shapes and gradients are all made in SwiftUI as well.")
                OnboardingCardView(title: "Page Two \nof the Demo", description: "This is a demo onboarding flow. Built 100% in SwiftUI. The shapes and gradients are all made in SwiftUI as well. Testing... 1, 2, 3. This is the second onboarding screen.")
                OnboardingCardView(title: "Page Three \nof the Demo", description: "This is a demo onboarding flow. Built 100% in SwiftUI. The shapes and gradients are all made in SwiftUI as well. This is the third onboarding screen. I hope you enjoyed looking at this flow!")
                
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}


struct OnboardingContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContentView()
    }
}
