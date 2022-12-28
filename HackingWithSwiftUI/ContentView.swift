//
//  ContentView.swift
//  HackingWithSwiftUI
//
//  Created by Shakhnoza Mirabzalova on 12/27/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
