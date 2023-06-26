//
//  ButtonPage1_No.swift
//  GreenLampApp
//
//  Created by Kain on 2023/06/22.
//


import SwiftUI

struct ButtonPage1_No: View {
    var body: some View {
        Button{
            print("다음페이지로 이동")
        } label: {
            HStack (spacing: 155){
                Text("아니요, 처음이에요")
                    .font(.system(size: 17))
                    .foregroundColor(Color.init(hex: "A7A7A7"))
                    .padding(.leading, 24)
                
                Image(systemName: "checkmark")
                    .imageScale(.small)
                    .foregroundColor(Color.init(hex: "FFFFFF"))
                    .background {
                        Circle()
                            .frame(width: 21, height: 21)
                            .foregroundColor(Color.init(hex: "E8E8E8"))
                    }
                    .padding(.trailing, 24)
            }
                .frame(width: 351, height: 67, alignment: .leading)
                .background {
                    Rectangle()
                        .strokeBorder(Color.init(hex: "F5F5F5"), lineWidth: 2)
                        .foregroundColor(Color.init(hex: "FFFFFF"))
                }
                .cornerRadius(5)
        }
        
    }
}

struct ButtonPage1_No_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPage1_No()
    }
}
