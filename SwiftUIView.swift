//
//  SwiftUIView.swift
//  Enlight
//
//  Created by macbook on 27.07.2023.
//

import SwiftUI

struct SwiftUIView: View {
    
    @Binding var doneone: Bool
    
    var body: some View {
        NavigationView
        {
            VStack{
                ZStack{
                    Rectangle().frame(width: 300, height: 100).foregroundColor(Color.gray).cornerRadius(10)
                    Text("This is addition")
                }
                
                ZStack{
                    Rectangle().frame(width: 300, height: 500).foregroundColor(Color.gray).cornerRadius(10)
                    
                    Text("This is addition")
                    
                }
                Button{
                    doneone = true
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
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 30){
            SwiftUIView(doneone: .constant(false))
        }
    }
}

class secview: ObservableObject{
    //@Published var doneone = false
    
    
}


