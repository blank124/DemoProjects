//
//  OtherPersonView.swift
//  DemoProjects
//
//  Created by Michael Blank on 2/23/21.
//

import SwiftUI

struct OtherPersonView: View {
    
    let person: Person
    
    var body: some View {
        
        VStack {
            
            Group {
                
                PersonImageView(image: person.img)
                
                Text(person.firstName)
                    .foregroundColor(Color.textBlack)
                    .font(Font.Nunito.extraBold(size: 13))
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
            }
            .cornerRadius(25)
        }
        .overlay(NewView()
                    .offset(x: -20, y: 5)
                    .opacity(person.state.contains(.new) ? 1 : 0))
    }
}

struct OtherPersonView_Previews: PreviewProvider {
    static var previews: some View {
        OtherPersonView(person: FeedRoom.dummyData[0].hosts[0])
    }
}
