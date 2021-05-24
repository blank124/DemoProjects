//
//  BackgroundView.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI

struct BackgroundView: View {
    
    @State var appear = false
    
    var body: some View {
        ZStack {
            blobViewThree()
            blobViewFour()
            blobViewFive()
                .offset(x: appear ? 30: 0, y: appear ? -20: 0) 
            blobViewOne()
                .offset(x: appear ? 50: 0, y: 0)
            blobViewTwo()
                .offset(x: appear ? 40: 0, y: appear ? 40: 0)
            radialBlur()

        }
        .onAppear {
            withAnimation(.linear(duration: 6)) {
                appear = true
            }
        }
        .background(backgroundGradient())
        .ignoresSafeArea()
    }
}


struct backgroundGradient: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(stops: [
                                .init(color: Color(#colorLiteral(red: 0.9843137264251709, green: 0.854901909828186, blue: 0.3803921937942505, alpha: 0)), location: 0),
                                .init(color: Color(#colorLiteral(red: 1, green: 0.3529411554336548, blue: 0.8039214611053467, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: -0.685333318282647, y: 0.2592364620323061),
            endPoint: UnitPoint(x: 0.8606194338710705, y: 0.7550607351758897))
            .opacity(0.7)
    }
    
}
struct blobViewOne: View {
    var body: some View {
        LinearGradient(gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.9842694402, green: 0.8546031117, blue: 0.3797004223, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.4889419079, green: 0.7691486478, blue: 0.91356498, alpha: 1)), location:
                                                    0.48761284351348877),
                                            .init(color: Color(#colorLiteral(red: 0.9610106349, green: 0.3521209061, blue: 0.8029046059, alpha: 1)), location: 1)]),
                       startPoint: UnitPoint(x: 0.833066204816261,
                                             y: 0.0170961727150654),
                       endPoint: UnitPoint(x: 0.5303716612757082, y:
                                            0.561377283647647))
            .mask(BlobTwo().frame(width: 280, height: 360))
            .offset(x: 180, y: 230)
            .rotationEffect(.degrees(35))
    }
}

struct blobViewTwo: View {
    var body: some View {
        LinearGradient(gradient: Gradient(stops: [
                                            .init(color: Color(#colorLiteral(red: 0.9842694402, green: 0.8546031117, blue: 0.3797004223, alpha: 1)), location: 0),
                                            .init(color: Color(#colorLiteral(red: 0.4889419079, green: 0.7691486478, blue: 0.91356498, alpha: 1)), location:
                                                    0.48761284351348877),
                                            .init(color: Color(#colorLiteral(red: 0.9610106349, green: 0.3521209061, blue: 0.8029046059, alpha: 1)), location: 1)]),
                       startPoint: UnitPoint(x: 0.6633066204816261,
                                             y: 0.3170961727150654),
                       endPoint: UnitPoint(x: 0.6303716612757082, y:
                                            0.7061377283647647))
            
            .mask(Blob().frame(width: 335, height: 342))
            .offset(x: -200, y: 200)
            .rotationEffect(.degrees(100))
    }
}

struct blobViewThree: View {
    var body: some View {
        LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.33725491166114807, green: 0.800000011920929, blue: 0.9490196108818054, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.33725491166114807, green: 0.800000011920929, blue: 0.9490196108818054, alpha: 0)), location: 1)]),
                    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))
            .mask(BlobThree().frame(width: 347, height: 600))
            .offset(x: 0, y: 40)
            .blur(radius: 20)
            .opacity(0.7)
        
    }
}

struct blobViewFour: View {
    var body: some View {
        AngularGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.4431372582912445, green: 0.7490196228027344, blue: 0.9333333373069763, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.9607843160629272, green: 0.9686274528503418, blue: 0.7372549176216125, alpha: 1)), location: 0.453125),
                .init(color: Color(#colorLiteral(red: 0.9725490212440491, green: 0.5882353186607361, blue: 0.6078432202339172, alpha: 1)), location: 0.9322916865348816)]),
                    center: UnitPoint(x: 0.5, y: 0.49999999999999994)
                  )
            .mask(BlobFour().frame(width: 247, height: 400))
            .offset(x: 0, y: 200)
            .blur(radius: 20)
            .opacity(0.8)
        
    }
}

struct blobViewFive: View {
    var body: some View {
        LinearGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.9843137264251709, green: 0.854901909828186, blue: 0.3803921937942505, alpha: 1)), location: 0.1927083283662796),
                .init(color: Color(#colorLiteral(red: 0.4901960790157318, green: 0.768627405166626, blue: 0.9137254953384399, alpha: 0.8700000047683716)), location: 0.5904850959777832),
                .init(color: Color(#colorLiteral(red: 1, green: 0.3529411554336548, blue: 0.8039214611053467, alpha: 1)), location: 1)]),
                    startPoint: UnitPoint(x: 0.02566478063081177, y: 0.6373077741607558),
                    endPoint: UnitPoint(x: 1.1302952442331435, y: 0.5732423992936235))
            .mask(BlobFive().frame(width: 160, height: 150))
            .offset(x: -90, y: 260)

    }
}

    

struct radialBlur: View {
    var body: some View {
        Ellipse()
            .fill(RadialGradient(
                gradient: Gradient(stops: [
                                    .init(color: Color(#colorLiteral(red: 0.9764705896377563, green: 0.48235294222831726, blue: 0.8156862854957581, alpha: 1)), location: 0),
                                    .init(color: Color(#colorLiteral(red: 0.658823549747467, green: 0.8599998950958252, blue: 0.9235293865203857, alpha: 0.7875000238418579)), location: 0.625),
                                    .init(color: Color(#colorLiteral(red: 0.8784313797950745, green: 0.7647058963775635, blue: 0.9882352948188782, alpha: 0.6600000262260437)), location: 1)]),
                center: UnitPoint(x: 0.5, y: 0.49999999999999994),
                startRadius: 1,
                endRadius: 100
            ))
            .blur(radius: 10)
            .frame(width: 265, height: 263)
            .offset(x: -140, y: -300)
            .opacity(0.3)
        
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
