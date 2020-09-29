//
//  SFSymbolToggleStyle.swift
//  SwitchCustomStyle
//
//  Created by Shunzhe Ma on R 2/09/29.
//

/*
 SF Symbolの画像をトグル
 */

import SwiftUI

struct SFSymbolTogglestyle: ToggleStyle {
    
    var onSystemImageName: String = "checkmark.circle.fill"
    var offSystemImageName: String = "xmark.circle.fill"
    
    static let backgroundColor = Color(.label)
    static let switchColor = Color(.systemBackground)
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            
            configuration.label
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 50, height: 30, alignment: .center)
                .overlay((
                    Image(systemName: configuration.isOn ? onSystemImageName : offSystemImageName)
                        .font(.system(size: 20))
                        .foregroundColor(configuration.isOn ? .white : SFSymbolTogglestyle.switchColor)
                        .padding(3)
                        .offset(x: configuration.isOn ? 10 : -10, y: 0)
                        .animation(.linear)
                ))
                .foregroundColor(configuration.isOn ? .green : SFSymbolTogglestyle.backgroundColor)
                .onTapGesture(perform: {
                    configuration.isOn.toggle()
                })
            
        }
        
    }
    
}
