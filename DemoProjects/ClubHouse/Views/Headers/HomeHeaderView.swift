//
//  HomeHeaderView.swift
//  DemoProjects
//
//  Created by Michael Blank on 2/20/21.
//

import SwiftUI

struct HomeHeaderView: View {
    
    enum HomeHeaderActions {
        case profile
    }
    
    typealias HomeHeaderActionsHandler = (_ action: HomeHeaderActions) -> Void
    
    let handler: HomeHeaderActionsHandler
    
    init(handler: @escaping HomeHeaderView.HomeHeaderActionsHandler) {
        self.handler = handler
    }

    
    var body: some View {
        HStack(spacing: 20) {
            Image.search
            Spacer()
            Image.invite
            Image.calendar
            Image.notificationBell
            Button(action: {
                handler(.profile)
            }, label: {
                Image.profile_pic
                    .resizable()
                    .frame(width: 32, height: 32)
                    .cornerRadius (11)
            })

        }
        .font(Font.Nunito.bold(size: 24))
        .frame(maxWidth: .infinity,
               maxHeight: 50)
        .padding(.horizontal, 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView{ _ in }
            .previewLayout(.sizeThatFits)
    }
}
