//
//  NSPDContentView.swift
//  Cases
//
//  Created by Big Teddy on 24/11/2023.
//

import SwiftUI

struct NSPDContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Choose Heads or Tails")
                
                NavigationLink(destination: FileView_2(choice: "Heads" ), label: {Text("Heads")})
                NavigationLink(destination: SeparateFileVieww(passedData: "Tails"), label: {Text("Tails")})
                    . navigationTitle("Flip a Coin")
            }
        }
    }
}

struct FileView_2: View {
    var choice: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You chose = \(choice)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}


#Preview("TEST SEP", body: { NSPDContentView() })
#Preview("file view 2", body: { FileView_2(choice: "")})

