//
//  BlobFive.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI

struct BlobFive: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.48193*width, y: 0.99171*height))
        path.addCurve(to: CGPoint(x: 0.1261*width, y: 0.22337*height), control1: CGPoint(x: 0.02297*width, y: 1.05859*height), control2: CGPoint(x: -0.11983*width, y: 0.6232*height))
        path.addCurve(to: CGPoint(x: 0.5678*width, y: 0.01465*height), control1: CGPoint(x: 0.23308*width, y: 0.04943*height), control2: CGPoint(x: 0.36814*width, y: 0.04374*height))
        path.addCurve(to: CGPoint(x: 0.86424*width, y: 0.68766*height), control1: CGPoint(x: 1.02675*width, y: -0.05223*height), control2: CGPoint(x: 1.11016*width, y: 0.28784*height))
        path.addCurve(to: CGPoint(x: 0.48193*width, y: 0.99171*height), control1: CGPoint(x: 0.75726*width, y: 0.8616*height), control2: CGPoint(x: 0.68159*width, y: 0.96261*height))
        path.closeSubpath()
        return path
    }
}

struct BlobFive_Previews: PreviewProvider {
    static var previews: some View {
        BlobFive()
    }
}
