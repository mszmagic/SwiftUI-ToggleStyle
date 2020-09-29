//
//  PlainToggleStyle.swift
//  SwitchCustomStyle
//
//  Created by Shunzhe Ma on R 2/09/29.
//

/*
 デフォルトスタイルのスイッチ
 */

import SwiftUI

struct PlainToggleStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        HStack {
            
            configuration.label
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 50, height: 30, alignment: .center)
                .overlay((
                    Circle()
                        .foregroundColor(Color(.systemBackground))
                        .padding(3)
                        .offset(x: configuration.isOn ? 10 : -10, y: 0)
                        .animation(.linear)
                ))
                .foregroundColor(Color(.label))
                .onTapGesture(perform: {
                    configuration.isOn.toggle()
                })
            
        }
        
    }
    
}
