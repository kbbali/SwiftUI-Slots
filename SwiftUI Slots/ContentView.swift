//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Ali Karababa on 11.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits: Int = 1025
    @State private var firstImg: String = "apple"
    @State private var secondImg: String = "cherry"
    @State private var thirdImg: String = "star"
    private var imgArray = ["apple", "star","cherry"]
    
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            Spacer()
            Text("Credits:" + String(credits))
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color.red)
            Spacer()
            HStack(spacing: 20.0) {
                Image(firstImg)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                Image(secondImg)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                Image(thirdImg)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
            }
            .padding(.horizontal, 20.0)
            Spacer()
            Button("Spin") {
                self.credits -= 5
              firstImg = imgArray.randomElement()!
              secondImg = imgArray.randomElement()!
              thirdImg = imgArray.randomElement()!
                print("Credits: \(credits)")
                if firstImg == secondImg && secondImg == thirdImg {
                    self.credits += 50
                }
            }
            .frame(width: 75.0, height: 35.0)
            .foregroundColor(.white)
            .background(Color.pink)
            .cornerRadius(50)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
