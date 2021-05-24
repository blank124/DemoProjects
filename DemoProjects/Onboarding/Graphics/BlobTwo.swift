//
//  BlobTwo.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI

struct BlobTwo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.46813*width, y: 0.86337*height))
        path.addCurve(to: CGPoint(x: 0.24909*width, y: 0.37822*height), control1: CGPoint(x: 0.16064*width, y: 0.9382*height), control2: CGPoint(x: 0.07574*width, y: 0.65937*height))
        path.addCurve(to: CGPoint(x: 0.54555*width, y: 0.1272*height), control1: CGPoint(x: 0.3245*width, y: 0.25592*height), control2: CGPoint(x: 0.41178*width, y: 0.15975*height))
        path.addCurve(to: CGPoint(x: 0.73012*width, y: 0.63659*height), control1: CGPoint(x: 0.85304*width, y: 0.05237*height), control2: CGPoint(x: 0.90347*width, y: 0.35544*height))
        path.addCurve(to: CGPoint(x: 0.46813*width, y: 0.86337*height), control1: CGPoint(x: 0.65471*width, y: 0.75889*height), control2: CGPoint(x: 0.60189*width, y: 0.83082*height))
        path.closeSubpath()
        return path
    }
}

struct BlobTwo_Previews: PreviewProvider {
    static var previews: some View {
        BlobTwo()
    }
}
