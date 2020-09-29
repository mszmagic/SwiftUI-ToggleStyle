//
//  FlashlightToggleStyle.swift
//  SwitchCustomStyle
//
//  Created by Shunzhe Ma on R 2/09/29.
//

/*
 懐中電灯スタイルのスイッチ
 */

import SwiftUI

struct FlashLightToggleStyle: ToggleStyle {
    
    static let backgroundColor = Color(.label)
    static let switchColor = Color(.systemBackground)
    
    func makeBody(configuration: Configuration) -> some View {
        
        VStack {
            
            ZStack {
                Image(systemName: "arrowtriangle.down.fill")
                    .frame(width: 30, height: 30, alignment: .top)
                    .font(.system(size: 50))
                    .offset(y: -30)
                    .foregroundColor(.yellow)
                    .opacity(configuration.isOn ? 1 : 0)
                    .animation(.easeInOut)
                Image(systemName: configuration.isOn ? "flashlight.on.fill": "flashlight.off.fill")
                    .font(.system(size: 50))
                    .opacity(configuration.isOn ? 1 : 0.7)
                    .animation(.default)
            }
            .onTapGesture(perform: {
                configuration.isOn.toggle()
            })
            
            configuration.label
            
        }
        
    }
    
}
