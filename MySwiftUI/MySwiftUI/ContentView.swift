//
//  ContentView.swift
//  MySwiftUI
//
//  Created by 高明阳 on 2023/11/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem{Label("Characters", systemImage: "person.crop.square.fill.and.at.rectangle")}
            Text("tab2").tabItem{Label("Episodes", systemImage: "person.crop.square.fill.and.at.rectangle")}
            Text("tab3").tabItem{Label("Locations", systemImage: "person.crop.square.fill.and.at.rectangle")}
            Text("tab4").tabItem{Label("Seach", systemImage: "person.crop.square.fill.and.at.rectangle")}
            Text("tab5").tabItem{Label("My", systemImage: "person.crop.square.fill.and.at.rectangle")}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//VStack {
//    Image(systemName: "globe")
//        .imageScale(.large)
//        .foregroundColor(.accentColor)
//    Text("Hello, world!")
//}
//.padding()
