//
//  ContentView.swift
//  GreenLampApp
//
//  Created by Kain on 2023/06/19.
//

import SwiftUI

struct ContentView: View {
    @State var isCheck = false
    @State var isChecks = false
    
    var body: some View {
        VStack(spacing: 0){
            HStack(spacing: 6){
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(Color.init(hex: "65AF86"))
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(Color.init(hex: "DBDBDB"))
                Circle()
                    .frame(width: 6, height: 6)
                    .foregroundColor(Color.init(hex: "DBDBDB"))
            }
            .frame(width: 337, height: 6, alignment: .leading)
            .padding(.bottom, 19)
            .padding(.top, 98)
            
            Text ("친환경 생활을 실천해본 \n경험이 있나요?")
                .frame(width: 337, height: 68, alignment: .leading)
                .font(.system(size: 27))
                .padding(.bottom, 26)
            HStack{
                Text ("친환경 생활이란 텀블러와 \n안쓰는 불 끄기 등 일상속에서 \n쉽게 실천할 수 있는 친환경을 \n말합니다.")
                    .frame(width: 221, height: 172, alignment: .topLeading)
                    .font(.system(size: 19))
                    .foregroundColor(Color.init(hex: "BABABA"))
                    .padding(.trailing, 36)
                
                Image("Image")
                    .frame(width: 70.83, height: 161.73)
            }
            
            Button{
                if isCheck == true {
                    isCheck = false
                } else {
                    isCheck = true
                }
            } label: {
                if isCheck {
                    ButtonCheckPage()
                } else {
                    HStack (spacing: 199){
                        Text("네, 해봤어요")
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
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color.init(hex: "F5F5F5"), lineWidth: 2)
                            .foregroundColor(Color.init(hex: "FFFFFF"))
                    }
                    .padding(.top, 26)
                }
            }
            
            
            Button{
                if isChecks == true {
                    isChecks = false
                } else {
                    isChecks = true
                }
            } label: {
                if isChecks {
                    ButtonCheckPage2()
                } else {
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
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color.init(hex: "F5F5F5"), lineWidth: 2)
                            .foregroundColor(Color.init(hex: "FFFFFF"))
                    }
                    .padding(.top, 13)
                }
            }
            
            if isCheck == true {
                NextButtonGr1()
            } else {
                HStack {
                    Text("다음")
                        .font(.system(size: 17))
                        .foregroundColor(Color.init(hex: "BABABA"))
                }
                .frame(width: 76, height: 42)
                .background {
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                        .strokeBorder(Color.init(hex: "F5F5F5"), lineWidth: 2)
                        .background((Color.init(hex: "FFFFFF")))
                        .foregroundColor(Color.init(hex: "65AF86"))
                }
                .frame(width: 345, alignment: .trailing)
                .padding(.top, 40)
                .padding(.bottom, 115)
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

