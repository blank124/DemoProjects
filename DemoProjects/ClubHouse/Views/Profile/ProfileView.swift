//
//  ProfileView.swift
//  DemoProjects
//
//  Created by Michael Blank on 2/22/21.
//

import SwiftUI

struct ProfileView: View {
    
    private let profilePicSize: CGFloat = 76
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading) {
                ProfileHeaderView { action in
                    switch action {
                    case .back:
                        presentationMode.wrappedValue.dismiss()
                    }
                }
                Group {
                    Image
                        .profile_pic
                        .resizable()
                        .frame(width: profilePicSize,
                        height: profilePicSize)
                        .cornerRadius (30)
                    
                    Text("Michael Blank")
                        .font(Font.Nunito.bold(size: 16))
                    
                    Text("@michaeldblank")
                        .font (Font.Nunito.bold(size: 12))
                        .padding(.top, 1)
                    HStack {
                        
                        HStack(spacing: 0) {
                            
                            Text("117")
                                .font (Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            Text("followers")
                                .font (Font.Nunito.semiBold(size: 12))
                                .padding(.trailing, 5)
                        }
                        .padding(.trailing, 30)
                        
                        HStack(spacing: 0) {
                            
                            Text("21")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            
                            Text("following")
                            .font (Font.Nunito.semiBold(size: 12))
                        }
                        .padding (.trailing, 30)
                    }
                    .padding(.top, 15)
                    
                    Text("iOS Engineer | Senior at Yale\n\n michaeldblank.com")
                        .padding(.top, 10)
                        .font(Font.Nunito.semiBold(size: 14))
                    
                    HStack(alignment: .top) {
                        
                        Image("person_3")
                            .resizable()
                            .frame(width: 38, height: 38)
                            .cornerRadius (15)
                        
                        VStack(alignment: .leading) {
                        
                        Text("Joined 18 Jan 2021")
                            .font(Font.Nunito.regular(size: 12))
                        
                        Text("Nominated by ")
                            .font(Font.Nunito.regular(size: 12)) +
                        
                        Text("John Doe")
                            .font(Font.Nunito.bold(size: 12))
                        }
                    }
                }
                .foregroundColor(Color.textBlack)
                .padding(.horizontal, 15)
                
                Spacer()
            }
            .padding (.top, 65)
        }
        .frame (maxWidth: .infinity,
                maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
