//
//  NavigationStackButtons.swift
//  Cases
//
//  Created by Big Teddy on 23/11/2023.
//

import SwiftUI

struct NavigationStackButtons: View {
    
    @State var titleType = NavigationBarItem.TitleDisplayMode.large
    @State var message = ""
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("The 1st view")
            } label: {
                Text("First link")
                    .font(.largeTitle)
            }
            .padding()
            .navigationTitle("Navigation Stack")
            .navigationBarTitleDisplayMode(titleType)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink {
                            NavigationStack_1()
                        } label: {
                            Image(systemName: "icloud")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        message = "Done button tapped"
                    } label: {
                        Text("Done")
                    }
                }
            }
            Text(message)
            HStack(spacing: 50) {
                Button(".large") {
                    titleType = NavigationBarItem.TitleDisplayMode.large
                }
                Button(".inline") {
                    titleType = NavigationBarItem.TitleDisplayMode.inline
                }
            }
            
        }.accentColor(.purple)
    }
}

#Preview {
    NavigationStackButtons()
}
