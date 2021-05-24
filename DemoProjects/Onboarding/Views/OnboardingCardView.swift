//
//  OnboardingCardView.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/24/21.
//

import SwiftUI
import SwiftUIX

struct OnboardingCardView: View {
    
    let title: String
    
    let description: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("Michael Blank Demo's")
                    .font(.footnote)
                    .fontWeight(.semibold)
                LinearGradient(
                    gradient: Gradient(stops: [
                                        .init(color: Color(#colorLiteral(red: 0.548494041, green: 0.7676163316, blue: 0.9205970764, alpha: 1)), location: 0),
                                        .init(color: Color(#colorLiteral(red: 1, green: 0.3529411554336548, blue: 0.8039214611053467, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: -0.685333318282647, y: 0.2592364620323061),
                    endPoint: UnitPoint(x: 0.8606194338710705, y: 0.7550607351758897))
                    .frame(height: 140)
                    .mask(Text("\(title)")
                            .font(.largeTitle)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading))
                
                Text("\(description)")
                    .font(.subheadline)
                
            }
            .padding(30)
            .background(LinearGradient(
                            gradient: Gradient(stops: [
                                                .init(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                                                ), location: 0),
                                                .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
                                                ), location: 1)]),
                            startPoint: UnitPoint(x:
                                                    0.49999988837676157, y:
                                                        2.9497591284275417e-15),
                            endPoint: UnitPoint(x:
                                                    0.4999999443689973, y:
                                                        0.9363635917143408))
                            .opacity(0.9))
            .mask(RoundedRectangle(cornerRadius: 30, style:
                                    .continuous))
            .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .stroke(LinearGradient(
                                    gradient: Gradient(stops: [
                                                        .init(color: Color(#colorLiteral(red: 0.7952535152, green: 0.7952535152, blue: 0.7952535152, alpha: 1)), location: 0),
                                                        .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                    startPoint: UnitPoint(x: 0.5, y:
                                                            -3.06161911669639e-17),
                                    endPoint: UnitPoint(x:
                                                            0.5000000000000001, y:
                                                                0.49999999999999994)), lineWidth:
                                                                    1)
                        .blendMode(.overlay)
                        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                                    .stroke(LinearGradient(
                                                gradient: Gradient(stops: [
                                                                    .init(color: Color(#colorLiteral(red: 0.7952535152, green: 0.7952535152, blue: 0.7952535152, alpha: 1)), location: 0),
                                                                    .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 1)]),
                                                startPoint: UnitPoint(x: 0.5, y:
                                                                        -3.06161911669639e-17),
                                                endPoint: UnitPoint(x:
                                                                        0.5000000000000001, y:
                                                                            0.49999999999999994)), lineWidth:
                                                                                1)
                                    .blur(radius: 10)
                        )
            )
            .background(VisualEffectBlurView(blurStyle:
                                                .systemUltraThinMaterialLight)
                            .mask(RoundedRectangle(cornerRadius: 30, style:
                                                    .continuous)
                                    .fill(LinearGradient(gradient:
                                                            Gradient(colors: [Color.pink,
                                                                              Color.pink, Color.white.opacity(0)]),
                                                         startPoint: .top, endPoint: .bottom)))
            )
            .padding(20)
        }
        .background(VisualEffectBlurView(blurStyle:                             .systemUltraThinMaterialLight)
                        .mask(RoundedRectangle(cornerRadius: 30, style:
                                                .continuous)
                                .fill(LinearGradient(gradient:
                                                        Gradient(colors: [Color.pink,
                                                                          Color.pink, Color.white.opacity(0)]),
                                                     startPoint: .top, endPoint: .bottom)))
        ).background(LinearGradient(
                        gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
                                            ), location: 0),
                                            .init(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                                            ), location: 1)]),
                        startPoint: UnitPoint(x:
                                                0.49999988837676157, y:
                                                    2.9497591284275417e-15),
                        endPoint: UnitPoint(x:
                                                0.4999999443689973, y:
                                                    0.9363635917143408))
                        .opacity(0.9))
        .mask(RoundedRectangle(cornerRadius: 30, style:
                                .continuous))
        .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .stroke(LinearGradient(
                                gradient: Gradient(stops: [
                                                    .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 0),
                                                    .init(color: Color(#colorLiteral(red: 0.7952535152, green: 0.7952535152, blue: 0.7952535152, alpha: 1)), location: 1)]),
                                startPoint: UnitPoint(x: 0.5, y:
                                                        -3.06161911669639e-17),
                                endPoint: UnitPoint(x:
                                                        0.5000000000000001, y:
                                                            0.49999999999999994)), lineWidth:
                                                                1)
                    .blendMode(.overlay)
                    .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .stroke(LinearGradient(
                                            gradient: Gradient(stops: [
                                                                .init(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), location: 0),
                                                                .init(color: Color(#colorLiteral(red: 0.7952535152, green: 0.7952535152, blue: 0.7952535152, alpha: 1)), location: 1)]),
                                            startPoint: UnitPoint(x: 0.5, y:
                                                                    -3.06161911669639e-17),
                                            endPoint: UnitPoint(x:
                                                                    0.5000000000000001, y:
                                                                        0.49999999999999994)), lineWidth:
                                                                            1)
                                .blur(radius: 10)
                    )
        )
        .background(VisualEffectBlurView(blurStyle:                             .systemUltraThinMaterialLight)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .blur(radius: 10)
        )
        .padding(20)
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(title: "Welcome \nto the Demo", description: "This is a demo onboarding flow. Built 100% in SwiftUI. The shapes and gradients are all made in SwiftUI as well.")
    }
}
