//
//  ContentView.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/22/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showClubhouse: Bool?
    
    @State private var showOnboarding: Bool?

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ClubhouseContentView(),
                                tag: true,
                                selection: $showClubhouse) {
                    EmptyView()
                }
                
                NavigationLink(destination: OnboardingContentView(),
                                tag: true,
                                selection: $showOnboarding) {
                    EmptyView()
                }
                
                Text("Michael Blank SwiftUI Demos")
                    .padding(.vertical, 80)
                    .font(Font.Nunito.semiBold(size: 22))
                
                Button(action: {
                        showClubhouse = true
                }, label: {
                    Label("Clubhouse Clone", systemImage: "arrow.forward")
                })
                .padding()
                .buttonStyle(RedButton())
                
                Button(action: {
                        showOnboarding = true
                }, label: {
                    Label("Onboarding Demo", systemImage: "arrow.forward")
                })
                .buttonStyle(RedButton())
                
                Spacer()

            }
        }
    }
}

struct RedButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 16)
            .padding(.vertical, 9)
            .font(Font.Nunito.bold(size: 18))
            .foregroundColor(.white)
            .background(Color.customRed)
            .cornerRadius(21, antialiased: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RoomViewModel())
    }
}
