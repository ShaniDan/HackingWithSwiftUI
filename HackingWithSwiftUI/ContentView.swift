//
//  ContentView.swift
//  HackingWithSwiftUI
//
//  Created by Shakhnoza Mirabzalova on 12/27/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let students = ["Tom", "John", "Harry"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
