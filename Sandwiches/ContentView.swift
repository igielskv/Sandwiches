//
//  ContentView.swift
//  Sandwiches
//
//  Created by Manoli on 19/07/2020.
//  Copyright © 2020 macForce. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    
    var body: some View {
        NavigationView {
            List(sandwiches) { sandwich in
                NavigationLink(destination: Text(sandwich.name)) {
                    Image(sandwich.thumbnailName)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading) {
                        Text(sandwich.name)
                        Text("\(sandwich.ingredientCount) ingredients")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle("Sandwiches")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}
