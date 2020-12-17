//
//  ActionSheetDemo.swift
//  Example
//
//  Created by ac on 2020/12/17.
//  Copyright © 2020 ancc. All rights reserved.
//

import SwiftUI

struct ActionSheetDemo: View {
    @State private var isPresented = false
    var body: some View {
        VStack{
            Button(action: {
                self.isPresented = true
            }) {
                Text("show action").setButtonStyle()
            }
            .actionSheet(isPresented: $isPresented) {
                ActionSheet(title: Text("title"),
                message: Text("message"),
                buttons: [
                    .default(Text("默认样式"), action: {
                        print("default")
                    }),
                    .destructive(Text("警告样式"), action: {
                        print("destructive")
                    }),
                    .cancel(Text("关闭样式"), action: {
                        print("cancel")
                    })
                ])
            }
            ActionSheetButton(Text("show action").setButtonStyle(),
                              title: Text("title"),
                              message: Text("message"),
                              buttons: [
                                  .default(Text("默认样式"), action: {
                                      print("default")
                                  }),
                                  .destructive(Text("警告样式"), action: {
                                      print("destructive")
                                  }),
                                  .cancel(Text("关闭样式"), action: {
                                      print("cancel")
                                  })
                              ])
        }
    }
}

struct ActionSheetDemo_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetDemo()
    }
}
