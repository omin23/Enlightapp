//
//  Pemdas.swift
//  Enlight
//
//  Created by macbook on 30.07.2023.
//

import SwiftUI

struct Pemdas: View {
    @Binding var donepem: Bool
    var body: some View {
    
        VStack{
            ZStack{
                Rectangle().frame(width: 300, height: 100).foregroundColor(Color.gray).cornerRadius(10)
                Text("This is Pemdas")
            }
            
            ZStack{
                Rectangle().frame(width: 300, height: 500).foregroundColor(Color.gray).cornerRadius(10)
                
                Text("This is Pemdas")

            }
          
                Button{
                    donepem = true
                } label: {
                    ZStack
                    {
                        Rectangle ().cornerRadius(10)
                        Text ("Done").foregroundColor(.white)
                      
                    }
                }.padding(10).frame(width: 120,height: 80).foregroundColor(.green)
        }
    }
}

struct Pemdas_Previews: PreviewProvider {
    static var previews: some View {
        Pemdas(donepem: .constant(false))
    }
}
