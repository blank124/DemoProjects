//
//  Blob.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI

struct Blob: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49523*width, y: 0.82481*height))
        path.addCurve(to: CGPoint(x: -0.19244*width, y: 0.15155*height), control1: CGPoint(x: 0.16009*width, y: 1.02333*height), control2: CGPoint(x: -0.25243*width, y: 0.52815*height))
        path.addCurve(to: CGPoint(x: 0.1239*width, y: -0.04254*height), control1: CGPoint(x: -0.16634*width, y: -0.01228*height), control2: CGPoint(x: -0.02189*width, y: 0.04382*height))
        path.addCurve(to: CGPoint(x: 0.80818*width, y: 0.30711*height), control1: CGPoint(x: 0.45903*width, y: -0.24107*height), control2: CGPoint(x: 0.86818*width, y: -0.06949*height))
        path.addCurve(to: CGPoint(x: 0.49523*width, y: 0.82481*height), control1: CGPoint(x: 0.78209*width, y: 0.47094*height), control2: CGPoint(x: 0.64102*width, y: 0.73845*height))
        path.closeSubpath()
        return path
    }
}

struct Blob_Previews: PreviewProvider {
    static var previews: some View {
        Blob()
    }
}
