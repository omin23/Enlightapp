//
//  ContentView.swift
//  Enlight
//
//  Created by macbook on 26.07.2023.
//

import SwiftUI
 
struct ContentView: View {
    
    @State var Te: String = "Hello User!"
    @State var Un: Bool = false
    @State private var doneone:Bool = false
    @State private var donetwo:Bool = false
    @State private var donethree:Bool = false
    @State private var donefour:Bool = false
  // @EnvironmentObject var AI: secview
    
    var body: some View {
        
        
        
        
        NavigationView{
            VStack(spacing: 30){
                
                Text (Te)
                Button {
                    self.Te = "Welcome to the wormhole"
                    self.Un = true
                } label: {
                    Text("Math")
                }.font(.headline).fontWeight(.semibold)
                    .foregroundColor (.white)
                    .padding ()
                    .padding(.horizontal, 20).background (
                        Color.blue).cornerRadius (10)
                
                if(Un == true){
                    NavigationLink("addition") {
                        SwiftUIView(doneone: $doneone)
                    }.font(.headline).fontWeight(.semibold)
                        .foregroundColor (.white)
                        .padding ()
                        .padding(.horizontal, 20).background (
                            Color.blue).cornerRadius (10)
                }
                if (doneone == true)
                {
                    HStack{
                        NavigationLink("subtraction") {
                            Subtraction(donetwo: $donetwo)
                        }.font(.headline).fontWeight(.semibold)
                            .foregroundColor (.white)
                            .padding ()
                            .padding(.horizontal, 20).background (
                                Color.blue).cornerRadius (10)
                        NavigationLink("multiplication") {
                            Multiplication_(donethree: $donethree)
                        }.font(.headline).fontWeight(.semibold)
                            .foregroundColor (.white)
                            .padding ()
                            .padding(.horizontal, 20).background (
                                Color.blue).cornerRadius (10)
                        
                    }
                }
                if (donetwo == true && donethree)
                {
                    HStack{
                        NavigationLink("Devison") {
                            Devision(donefour: $donefour)
                        }.font(.headline).fontWeight(.semibold)
                            .foregroundColor (.white)
                            .padding ()
                            .padding(.horizontal, 20).background (
                                Color.blue).cornerRadius (10)
                        if(donetwo == true && doneone == true && donefour == true) {
                            NavigationLink("Pemdas") {
                               
                            }.font(.headline).fontWeight(.semibold)
                                .foregroundColor (.white)
                                .padding ()
                                .padding(.horizontal, 20).background (
                                    Color.blue).cornerRadius (10)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {

            ContentView().navigationTitle("Home")
    }
}




  


