//
//  Before.swift
//  Example
//
//  Created by ac on 2020/12/17.
//  Copyright © 2020 ancc. All rights reserved.
//

import SwiftUI

struct AlertDemo: View {
    @State private var isPresented = false
    var body: some View {
        VStack{
            Button(action: {
                self.isPresented = true
            }) {
                Text("show alert").setButtonStyle()
            }
            .alert(isPresented: $isPresented) {
                Alert(title: Text("title"),
                      message: Text("message"),
                      dismissButton:
                          .cancel(Text("取消"),action: {
                              print("cancel")
                          })
                      )
            }

            AlertButton(Text("show alert").setButtonStyle(),
                        title: Text("title"),
                        message: Text("Message"),
                        buttons: [
                            .cancel(Text("取消"),action: {
                                print("cancel")
                            })
                        ])

        }
    }
}

struct AlertDemo_Previews: PreviewProvider {
    static var previews: some View {
        AlertDemo()
    }
}
