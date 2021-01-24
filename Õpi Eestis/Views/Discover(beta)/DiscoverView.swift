//
//  DiscoverView.swift
//  Estonian Universities
//
//  Created by Rasmus Tauts on 09.11.2019.
//  Copyright © 2019 Rasmus Tauts. All rights reserved.
//

import SwiftUI
/*
struct DiscoverView: View {
    @EnvironmentObject var finder: FinderQuery
    @State var resetLabels = false
    var body: some View {
        GeometryReader { g in
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(.all)
            GeometryReader{ g in
            VStack{
                Group{
                    Linn(resetLabels: self.$resetLabels)
                    Spacer()
                    //Kraad(resetLabels: self.$resetLabels)
                    Spacer()
                    ErialaSuund(resetLabels: self.$resetLabels)
                }
                Spacer()
                Õpilased(resetLabels: self.$resetLabels)
                Spacer()
                maailmaEdetabel(resetLabels: self.$resetLabels)
                Spacer()
                NavigationLink(destination: ResultsView()) {
                        Text("Otsi")
                            .font(.custom("Roboto", size: 25))
                            .accentColor(.white)
                            .padding([.leading, .trailing], 20)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                }
                    .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height / 8.96)
                    .background(Color.black)
                    .accentColor(Color.white)
                .edgesIgnoringSafeArea(.bottom)
            .shadow(radius: 150)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: g.size.height / 1.05, maxHeight: .infinity)
                .padding([.top],20)
                .edgesIgnoringSafeArea(.bottom)
             
            }
            
            }.navigationBarTitle("Leia Oma")
            .navigationBarItems(trailing: Button(action: {
                self.resetFinderQuery()
                self.resetLabels = true
            }) {
               Text("Reset")
            })
          
        }//.edgesIgnoringSafeArea(.bottom)
        
    }
    
    func resetFinderQuery(){
           finder.location = " "
        finder.level = level.XemptyX
           finder.type = " "
           finder.students = " "
           finder.worldRanking = " "
           
        //customColor = true
       }
}
/*
struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
*/
struct DiscoverButtonModifier: ViewModifier{
    
    @State var backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black, Color.white]), startPoint: .top, endPoint: .bottom)
    
    func body(content: Content) -> some View {
        return content
        
        .font(.custom("Roboto", size: 25))
        .accentColor(.white)
        .background(backgroundColor)
    }
}

struct Linn : View {
    
    @EnvironmentObject var finder: FinderQuery
    @State var expand = false
    @State var customeColor = false
    @Binding var resetLabels: Bool
    
    var body : some View {
        
        VStack{
            Button(action: {
                self.expand.toggle()
                self.resetLabels = false
            }) {
                HStack{
                    Text(customeColor ? "Linn:" : "Linn")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                        .padding(.leading, 20)
                        //.frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: UIScreen.main.bounds.height / 13)
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(finder.location ?? "")").padding(.trailing, 20)
                    .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 13)
            }
            VStack(alignment: .trailing){
            if expand {
                Button(action: {
                    self.finder.location = "Tallinn"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Tallinn")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                    
                .frame(minWidth: 0, maxWidth: .infinity)
                Button(action: {
                    self.finder.location = "Tartu"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Tartu")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                Button(action: {
                    self.finder.location = "Pärnu"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Pärnu")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                
            }
            }
        }.onTapGesture { self.expand.toggle() }
            
        .frame(height: expand ? (UIScreen.main.bounds.height / 17) * 4 : UIScreen.main.bounds.height / 13)
        .animation(.spring())
            .background( resetLabels ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center) : (customeColor ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .center, endPoint: .leading) : LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center)))
         .accentColor(.white)
         .animation(Animation.easeInOut(duration: 0.2))
        
        
          //DiscoverView(customColor: self.$customeColor)
    }
    
}/*
struct Kraad : View {
    
    @EnvironmentObject var finder: FinderQuery
    @State var expand = false
    @State var customeColor = false
    @Binding var resetLabels: Bool
    
    
    var body : some View {
        VStack{
            Button(action: {
                self.expand.toggle()
            }) {
                HStack{
                    Text(customeColor ? "Kraad:" : "Kraad")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                        .padding(.leading, 20)
                        //.frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: UIScreen.main.bounds.height / 13)
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(finder.level.map { $0.rawValue } ?? "")").padding(.trailing, 20)
                    .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 13)
            }
            
            if expand {
                
                Button(action: {
                    self.finder.level = level.bachelor
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Bakalaureus")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.level = level.masters
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Magister")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.level = level.doctor
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Doktor")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
            }
            
        }.onTapGesture { self.expand.toggle() }
        .frame(height: expand ? (UIScreen.main.bounds.height / 17) * 4 : UIScreen.main.bounds.height / 13)
        .animation(.spring())
        .background( resetLabels ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center) : (customeColor ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .center, endPoint: .leading) : LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center)))
        .accentColor(.white)
         .animation(Animation.easeInOut(duration: 0.2))
            
    }
}
 */
struct ErialaSuund : View {
    @EnvironmentObject var finder: FinderQuery
    @State var expand = false
    @State var customeColor = false
    @Binding var resetLabels: Bool
   
    
    var body : some View {
        VStack{
            Button(action: {
                self.expand.toggle()
            }) {
                HStack{
                    Text(customeColor ? "Eriala Suund:" : "Eriala Suund")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                        .padding(.leading, 20)
                        //.frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: UIScreen.main.bounds.height / 13)
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(finder.type ?? "")").padding(.trailing, 20)
                    .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 13)
            }
            
            if expand {
                
                Button(action: {
                    self.finder.type = "Humanitaarteadus"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Humanitaarteadus")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.type = "Sotsiaalteadus"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Sotsiaalteadus")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.type = "Meditsiinteadus"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Meditsiinteadused")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.type = "Loodus- ja Täppisteadus"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Loodus- ja Täppisteadused")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
            }
            
        }.onTapGesture { self.expand.toggle() }
        .frame(height: expand ? (UIScreen.main.bounds.height / 17) * 5 : UIScreen.main.bounds.height / 13)        .animation(.spring())
         .background( resetLabels ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center) : (customeColor ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .center, endPoint: .leading) : LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center)))
         .accentColor(.white)
         .animation(Animation.easeInOut(duration: 0.2))
            
    }
}
struct Õpilased : View {
    @EnvironmentObject var finder: FinderQuery
    @State var expand = false
    @State var customeColor = false
    @Binding var resetLabels: Bool
    
    var body : some View {
        VStack{
            Button(action: {
                self.expand.toggle()
            }) {
                HStack{
                    Text(customeColor ? "Õpilased:" : "Õpilased")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                        .padding(.leading, 20)
                        .frame(height: UIScreen.main.bounds.height / 13)
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(finder.students ?? "")").padding(.trailing, 20)
                    .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 13)
            }
            
            if expand {
                
                Button(action: {
                    self.finder.students = "100 - 1,000"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("100 - 1,000")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.students = "1,000 - 5,000"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("1,000 - 5,000")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.students = "5,000 - 10,000"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("5,000 - 10,000")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.students = "more than 10,000"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("more than 10,000")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
            }
            
        }.onTapGesture { self.expand.toggle() }
         .frame(height: expand ? (UIScreen.main.bounds.height / 17) * 5 : UIScreen.main.bounds.height / 13)        .animation(.spring())
         .background( resetLabels ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center) : (customeColor ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .center, endPoint: .leading) : LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center)))
         .accentColor(.white)
         .animation(Animation.easeInOut(duration: 0.2))
            
    }
}
struct maailmaEdetabel : View {
    @EnvironmentObject var finder: FinderQuery
    @State var expand = false
    @State var customeColor = false
    @Binding var resetLabels: Bool
    
    var body : some View {
        VStack{
            Button(action: {
                self.expand.toggle()
            }) {
                HStack{
                    Text(customeColor ? "Koht Maailma Edetabelis:" : "Koht Maailma Edetabelis")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                        .padding(.leading, 20)
                        //.frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: UIScreen.main.bounds.height / 13)
                        .foregroundColor(.white)
                    Spacer()
                    Text("\(finder.worldRanking ?? "")").padding(.trailing, 20)
                    .font(.custom("Roboto", size: UIScreen.main.bounds.height / 34))
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 13)
            }
            
            if expand {
                
                Button(action: {
                    self.finder.worldRanking = "Top 500"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("Top 500")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.worldRanking = "500 - 1,000"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("500 - 1,000")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    self.finder.worldRanking = "> 1,000"
                    self.expand.toggle()
                    self.customeColor = true
                }) {
                    Text("> 1,000")
                        .font(.custom("Roboto", size: UIScreen.main.bounds.height / 36))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 17)
                }.frame(height: UIScreen.main.bounds.height / 17)
                 .frame(minWidth: 0, maxWidth: .infinity)
            }
            
        }.onTapGesture { self.expand.toggle() }
         .frame(height: expand ? (UIScreen.main.bounds.height / 17) * 4 : UIScreen.main.bounds.height / 13)
         .animation(.spring())
         .background( resetLabels ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center) : (customeColor ? LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .center, endPoint: .leading) : LinearGradient(gradient: Gradient(colors: [Color.init(red: 160/255, green: 80/255, blue: 255/255), Color.init(red: 100/255, green: 100/255, blue: 255/255)]), startPoint: .trailing, endPoint: .center)))
         .accentColor(.white)
         .animation(Animation.easeInOut(duration: 0.2))
            
    }
}
*/
