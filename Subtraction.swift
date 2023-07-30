//
//  Subtraction.swift
//  Enlight
//
//  Created by macbook on 29.07.2023.
//

import SwiftUI

struct Subtraction: View {
    
    @Binding var donetwo: Bool
    var body: some View {
    
        VStack{
            ZStack{
                Rectangle().frame(width: 300, height: 100).foregroundColor(Color.gray).cornerRadius(10)
                Text("This is Subtraction")
            }
            
            ZStack{
                Rectangle().frame(width: 300, height: 500).foregroundColor(Color.gray).cornerRadius(10)
                
                Text("This is Subtraction")

            }
          
                Button{
                    donetwo = true
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

struct Subtraction_Previews: PreviewProvider {
    static var previews: some View {
        Subtraction(donetwo: .constant(false))
    }
}
