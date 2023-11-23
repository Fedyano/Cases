//
//  NavigationStackTitle.swift
//  Cases
//
//  Created by Big Teddy on 23/11/2023.
//

import SwiftUI

struct NavigationStackTitle: View {
    
    @State var titleType = NavigationBarItem.TitleDisplayMode.large
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                NavigationStack_1()
            } label: {
                Text("First link")
                    .font(.largeTitle)
            }
            .padding()
            .navigationTitle("Navigation Stack")
            .navigationBarTitleDisplayMode(titleType)
            
            HStack(spacing: 50) {
                Button(".large") {
                    titleType = NavigationBarItem.TitleDisplayMode.large
                }
                
                Button (".inline") {
                    titleType = NavigationBarItem.TitleDisplayMode.inline
                }
            }
        }
    }
}


#Preview {
    NavigationStackTitle()
}
