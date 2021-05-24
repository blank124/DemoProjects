//
//  MuteView.swift
//  DemoProjects
//
//  Created by Michael Blank on 2/23/21.
//

import SwiftUI

struct MuteView: View {
    
    var body: some View {
        
        Image
            .mute
            .foregroundColor(Color.black)
            .padding(5)
            .background(Color.white)
            .clipShape(Circle())
            .shadow(color: Color.cardShadowTint,
                    radius: 1,
                    x: 0.0,
                    y: 1)
    }
}

struct MuteView_Previews: PreviewProvider {
    static var previews: some View {
        MuteView()
    }
}
