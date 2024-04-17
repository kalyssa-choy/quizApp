//
//  ContentView.swift
//  quizApp
//
//  Created by StudentAM on 4/16/24.
//

import SwiftUI

struct question{
    var q: String
    var correct: String
    var answers: [String]
}

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ZStack {
                Image("questionBackground")
                
                VStack{
                    Text("Quiz Time")
                        .padding()
                        .frame(width: 250, height: 70)
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    NavigationLink(destination: QuestionView().navigationBarBackButtonHidden(true)){
                        Text("Start")
                            .padding()
                            .frame(width: 250, height: 70)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.system(size:40))
                            .bold()
                            .cornerRadius(10)
                    }
                        
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
