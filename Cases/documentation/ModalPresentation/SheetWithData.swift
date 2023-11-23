//
//  SheetWithData.swift
//  Cases
//
//  Created by Big Teddy on 20/11/2023.
//  https://developer.apple.com/documentation/swiftui/view/sheet(item:ondismiss:content:)

import SwiftUI

struct SheetWithData: View {
    
    @State private var sheetDetail: Inventoryitem?
    
    var body: some View {
        Button("Show Part Details") {
            sheetDetail = Inventoryitem(id: "02093485347854", partNumber: "Z-23424", quantity: 100, name: "Widget")
        }
        .sheet(item: $sheetDetail, onDismiss: didDismiss) { detail in
            VStack(alignment: .leading, spacing: 20, content: {
                Text("Part Number: \(detail.partNumber)")
                Text("Name: \(detail.name)")
                Text("Quatity On-Hand: \(detail.quantity)")
            })
            .onTapGesture {
                sheetDetail = nil
            }
            
        }
    }
    
    func didDismiss(){}
}

struct Inventoryitem: Identifiable {
    var id: String
    let partNumber: String
    let quantity: Int
    let name: String
}

#Preview {
    SheetWithData()
}
