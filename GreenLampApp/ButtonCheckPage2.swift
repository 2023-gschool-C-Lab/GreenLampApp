//
//  ButtonCheckPage2.swift
//  GreenLampApp
//
//  Created by Kain on 2023/06/24.
//

import SwiftUI

struct ButtonCheckPage2: View {
    var body: some View {
        HStack (spacing: 155){
            Text("아니요, 처음이에요")
                .font(.system(size: 17))
                .foregroundColor(Color.init(hex: "65AF86"))
                .padding(.leading, 24)
            
            Image(systemName: "checkmark")
                .imageScale(.small)
                .foregroundColor(Color.init(hex: "FFFFFF"))
                .background {
                    Circle()
                        .frame(width: 21, height: 21)
                        .foregroundColor(Color.init(hex: "65AF86"))
                }
                .padding(.trailing, 24)
        }
        .frame(width: 351, height: 67, alignment: .leading)
        .background {
            RoundedRectangle(cornerRadius: 5)
                .strokeBorder(Color.init(hex: "65AF86"), lineWidth: 1)
                .foregroundColor(Color.init(hex: "FFFFFF"))
        }
        .padding(.top, 13)
    }
}

struct ButtonCheckPage2_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCheckPage2()
    }
}
