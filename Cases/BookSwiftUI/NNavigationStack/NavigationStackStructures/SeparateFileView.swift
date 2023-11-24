//
//  SeparateFileView.swift
//  Cases
//
//  Created by Big Teddy on 23/11/2023.
//

import SwiftUI

struct SeparateFileView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is another structure")
                Text("but stored in a separate file")
                Spacer()
            }
            Spacer()
        }.background(Color.orange)
    }
}

#Preview {
    SeparateFileView()
}
