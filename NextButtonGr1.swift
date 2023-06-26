//
//  NextButtonGr1.swift
//  GreenLampApp
//
//  Created by Kain on 2023/06/26.
//

import SwiftUI

struct NextButtonGr1: View {
    @State var isCheckButton = false
    
    var body: some View {
        Button{
            if isCheckButton == true {
                isCheckButton = false
            } else {
                isCheckButton = true
            }
        } label: {
            if isCheckButton {
                Content2()
            } else {
                
                HStack {
                    //            RoundedRectangle(cornerRadius: 12)
                    //                .frame(width: 12, height: 12)
                    //                .foregroundColor(Color.orange)
                    
                    Text("다음")
                        .font(.system(size: 17))
                        .foregroundColor(Color.init(hex: "BABABA"))
                }
                .frame(width: 76, height: 42)
                .background {
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                        .strokeBorder(Color.init(hex: "F5F5F5"), lineWidth: 2)
                    
                    //                .background((Color.init(hex: "65AF86")))
                    //                .foregroundColor(Color.init(hex: "65AF86"))
                }
                .frame(width: 345, alignment: .trailing)
                .padding(.top, 40)
                .padding(.bottom, 115)
            }
        }
    }
    
    struct NextButtonGr1_Previews: PreviewProvider {
        static var previews: some View {
            NextButtonGr1()
        }
    }
}
