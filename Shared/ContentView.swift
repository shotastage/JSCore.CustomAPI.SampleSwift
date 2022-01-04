//
//  ContentView.swift
//  Shared
//
//  Created by Shota Shimazu on 2022/01/04.
//

import SwiftUI

struct ContentView: View {
    
    @State var resText: String = "NO VALUE"
    var body: some View {
        VStack {
            Text(resText)
                .padding()
            Button("Execute JavaScript") {
                let js = SampleJSAPI()
                
                js.execute()
                let res = js.receiveResult()
                resText = String(describing: res)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
