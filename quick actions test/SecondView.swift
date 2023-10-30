//
//  SecondView.swift
//  quick actions test
//
//  Created by Ameen Mustafa on 10/24/23.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("this is the second view")
                .background(Color.white)
            Button("dismiss") {
                dismiss()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.purple)
        .edgesIgnoringSafeArea(.all)
    }
        
}

//#Preview {
//    SecondView()
//}
