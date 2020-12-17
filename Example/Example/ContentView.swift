//
//  ContentView.swift
//  Example
//
//  Created by ac on 2020/12/17.
//  Copyright © 2020 ancc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            AlertButton(Text("show alert").setButtonStyle(),
                        title: Text("title"),
                        message: Text("Message"),
                        buttons: [
                            .cancel(Text("取消"),action: {
                                print("cancel")
                            }),
                            .destructive(Text("警告样式"),action:{
                                print("destructive")
                            })
                        ])
            
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
            
            SheetButton(Text("show modalView").setButtonStyle()) {
                Text("modalView")
                    .bold()
                    .font(.system(size: 50))
            }
        }
    }
}

extension Text{
    func setButtonStyle()->Text{
        self
            .foregroundColor(.randomColor)
            .bold()
            .font(.system(size:50))
    }
}

extension Color {
    static var randomColor: Color {
        let red = Double.random(in: 0.0..<1.0)
        let green = Double.random(in: 0.0..<1.0)
        let blue = Double.random(in: 0.0..<1.0)
        return Color(red: red,green: green,blue: blue)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
