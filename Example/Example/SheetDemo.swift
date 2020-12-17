//
//  SheetDemo.swift
//  Example
//
//  Created by ac on 2020/12/17.
//  Copyright © 2020 ancc. All rights reserved.
//

import SwiftUI

struct SheetDemo: View {
    @State private var isPresented = false
    var body: some View {
        VStack{
            Button(action: {
                self.isPresented = true
            }) {
                Text("show modalView").setButtonStyle()
            }
            .sheet(isPresented: $isPresented) {
                Text("modalView")
                    .bold()
                    .font(.system(size: 50))
            }
            SheetButton(Text("show modalView").setButtonStyle()) {
                Text("modalView")
                    .bold()
                    .font(.system(size: 50))
            }
        }
    }
}

struct SheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        SheetDemo()
    }
}
