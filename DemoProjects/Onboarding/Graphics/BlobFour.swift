//
//  BlobFour.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI

struct BlobFour: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.8187*width, y: 1.08162*height))
        path.addCurve(to: CGPoint(x: 0.24268*width, y: 0.57548*height), control1: CGPoint(x: 0.52378*width, y: 1.25381*height), control2: CGPoint(x: 0.18989*width, y: 0.90212*height))
        path.addCurve(to: CGPoint(x: 0.8187*width, y: 0.57548*height), control1: CGPoint(x: 0.26565*width, y: 0.43338*height), control2: CGPoint(x: 0.6904*width, y: 0.65039*height))
        path.addCurve(to: CGPoint(x: 1.5789*width, y: 0.92235*height), control1: CGPoint(x: 1.11362*width, y: 0.40329*height), control2: CGPoint(x: 1.63169*width, y: 0.5957*height))
        path.addCurve(to: CGPoint(x: 0.8187*width, y: 1.08162*height), control1: CGPoint(x: 1.55593*width, y: 1.06444*height), control2: CGPoint(x: 0.94699*width, y: 1.00671*height))
        path.closeSubpath()
        return path
    }
}

struct BlobFour_Previews: PreviewProvider {
    static var previews: some View {
        BlobFour()
    }
}
