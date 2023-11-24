//
//  NSContentView.swift
//  Cases
//
//  Created by Big Teddy on 23/11/2023.
//

import SwiftUI

struct NSContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink(destination: FileView(), label: {Text("Link to structure in same file")})
                NavigationLink(destination: SeparateFileView(), label: {Text("Separate file link")})
                    .navigationTitle("Navigation Title")
            }
        }
    }
}

struct FileView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is a separate structure")
                Text("that's stored in the same file")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

#Preview {
    NSContentView()
}
