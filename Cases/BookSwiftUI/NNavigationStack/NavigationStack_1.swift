//
//  NavigationStack_1.swift
//  Cases
//
//  Created by Big Teddy on 23/11/2023.
//

import SwiftUI

struct NavigationStack_1: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("The 1st view")
            } label: {
                Text("First link")
                    .font(.largeTitle)
            }
            NavigationLink {
                Text("The 2nd view")
            } label: {
                Label {
                    Text("Second link")
                } icon: {
                    Image(systemName: "sun.and.horizon.circle")
                }
            }
            .padding()
            NavigationLink {
                Image(systemName: "ellipsis.message")
                    .font(.system(size: 125))
            } label: {
                VStack {
                    Text("Third view")
                    Image(systemName: "figure.archery")
                }.font(.largeTitle)
            }.padding()
            NavigationLink("The 4th view") {
                VStack {
                    Image(systemName: "airplane.departure")
                    Text("Departure time is 12:15")
                        .font(.largeTitle)
                }
            }.padding()
        }
    }
}

#Preview {
    NavigationStack_1()
}
