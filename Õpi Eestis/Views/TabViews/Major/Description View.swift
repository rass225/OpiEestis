//
//  Description View.swift
//  Estonian Universities
//
//  Created by Rasmus Tauts on 24.11.2019.
//  Copyright © 2019 Rasmus Tauts. All rights reserved.
//

import SwiftUI

struct Description_View: View {
    var passedMajor: majorsMinors
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            Color.black.opacity(0.5).edgesIgnoringSafeArea(.bottom)
            ScrollView{
                VStack(spacing: 0){
                    ForEach(passedMajor.description, id: \.self) { hey in
                        Text(hey)
                            .font(Font.callout.weight(.light))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color.white.opacity(1))
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity)
                    }.lineSpacing(10)
                }.padding(.horizontal, 16)
            }
        }.navigationBarTitle(Text("Eriala kirjeldus"))
    }
}

