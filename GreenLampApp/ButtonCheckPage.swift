//
//  ButtonCheckPage.swift
//  GreenLampApp
//
//  Created by Kain on 2023/06/23.
//

import SwiftUI

struct ButtonCheckPage: View {
    var body: some View {
        HStack (spacing: 199){
            Text("네, 해봤어요")
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
//                .stroke(.green)
                .strokeBorder(Color.init(hex: "65AF86"), lineWidth: 1)
                .foregroundColor(Color.init(hex: "FFFFFF"))
        }
//        .cornerRadius(20)
        .padding(.top, 26)
    }
}

struct ButtonCheckPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonCheckPage()
    }
}
