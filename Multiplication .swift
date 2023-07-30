//
//  Multiplication .swift
//  Enlight
//
//  Created by macbook on 29.07.2023.
//

import SwiftUI

struct Multiplication_: View {
    
    @Binding var donethree: Bool
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
                    donethree = true
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

struct Multiplication__Previews: PreviewProvider {
    static var previews: some View {
        Multiplication_(donethree: .constant(false))
    }
}
