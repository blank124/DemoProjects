//
//  BlobThree.swift
//  DemoProjects
//
//  Created by Michael Blank on 5/23/21.
//

import SwiftUI

struct BlobThree: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.16003*width, y: 0.67839*height))
        path.addCurve(to: CGPoint(x: -0.41598*width, y: 0.36094*height), control1: CGPoint(x: -0.13489*width, y: 0.78639*height), control2: CGPoint(x: -0.46877*width, y: 0.56581*height))
        path.addCurve(to: CGPoint(x: 0.16003*width, y: 0.36094*height), control1: CGPoint(x: -0.39302*width, y: 0.27182*height), control2: CGPoint(x: 0.03173*width, y: 0.40792*height))
        path.addCurve(to: CGPoint(x: 0.92023*width, y: 0.5785*height), control1: CGPoint(x: 0.45495*width, y: 0.25295*height), control2: CGPoint(x: 0.97302*width, y: 0.37363*height))
        path.addCurve(to: CGPoint(x: 0.16003*width, y: 0.67839*height), control1: CGPoint(x: 0.89726*width, y: 0.66762*height), control2: CGPoint(x: 0.28833*width, y: 0.63141*height))
        path.closeSubpath()
        return path
    }
}


struct BlobThree_Previews: PreviewProvider {
    static var previews: some View {
        BlobThree()
    }
}
