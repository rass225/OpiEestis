//
//  ResultsView.swift
//  Estonian Universities
//
//  Created by Rasmus Tauts on 07.12.2019.
//  Copyright © 2019 Rasmus Tauts. All rights reserved.
//
//19.1
import SwiftUI
/*
struct ResultsView: View {
    @EnvironmentObject var query: FinderQuery
    
       
      
       var body: some View {
        
           ZStack{
               LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .top, endPoint: .center)
               .edgesIgnoringSafeArea(.all)
               GeometryReader { g in
                   VStack{
                    
                    List(self.query.matchingSchools()) { hey in
                        
                           NavigationLink(destination: School_Description_View(passedschools: hey)  ){
                            
                               HStack{
                                   Image(hey.logo)
                                       .resizable()
                                       .frame(width: 60, height: 60)
                                       .foregroundColor(.black)
                                   VStack{
                                       Text(hey.name)
                                           .foregroundColor(Color.white.opacity(0.9))
                                           .font(.custom("Roboto", size: 22))
                                           .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                       Text(hey.location.city + ", Estonia")
                                           .foregroundColor(Color.black.opacity(0.9))
                                           .font(.custom("Roboto", size: 13))
                                           .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                   }
                               }
                           }
                    }.id(UUID())
                   }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: g.size.height / 1.05)
                   .navigationBarTitle("Ülikoolid")
               }
           }
       }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}

*/
