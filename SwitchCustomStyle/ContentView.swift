//
//  ContentView.swift
//  SwitchCustomStyle
//
//  Created by Shunzhe Ma on R 2/09/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSwitchOn = false
    
    var body: some View {
        Toggle("Toggle", isOn: $isSwitchOn)
            .toggleStyle(FlashLightToggleStyle())
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
