//
//  SeparateFileVieww.swift
//  Cases
//
//  Created by Big Teddy on 24/11/2023.
//

import SwiftUI

struct SeparateFileVieww: View {
    
    var passedData: String
    
    var body: some View {
//        Spacer()
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You chose = \(passedData)")
                Spacer()
            }
            Spacer()
        }.background(Color.orange)
    }
}

#Preview {
    SeparateFileVieww(passedData: "")
}
