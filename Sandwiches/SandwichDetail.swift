//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Manoli on 19/07/2020.
//  Copyright © 2020 macForce. All rights reserved.
//

import SwiftUI

struct SandwichDetail: View {
    let sandwich: Sandwich
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps())
                .background(Color.red)
                .foregroundColor(.yellow)
            }
        }
        .navigationBarTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: testData[1])
            }
            NavigationView {
                SandwichDetail(sandwich: testData[0])
            }
        }
    }
}

struct Label: View {
    let text: String
    let image: Image
    
    init(_ text: String, systemImage: String) {
        self.text = text
        self.image = Image(systemName: systemImage)
    }
    
    var body: some View {
        HStack {
            image
            Text(text)
        }
    }
}
