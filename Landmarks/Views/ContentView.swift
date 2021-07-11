//
//  ContentView.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Seoul Station")
                    .font(.title)
                HStack {
                    Text("Seoul Station")
                    Spacer()
                    Text("Seoul")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Seoul Station")
                    .font(.title2)
                Text("Station for line #1, #4 and KTX")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
