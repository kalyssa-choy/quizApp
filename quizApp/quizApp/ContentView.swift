//
//  ContentView.swift
//  quizApp
//
//  Created by StudentAM on 4/16/24.
//

import SwiftUI

//struct for creating a question and its answer choices
struct question{
    var q: String
    var correct: String
    var answers: [String]
}

struct ContentView: View {
    
    var body: some View {
        //for enabling navigation between pages
        NavigationView{
            ZStack {
                //background image
                Image("questionBackground")
                
                //formatting
                VStack{
                    //page title
                    Text("Quiz Time")
                        //styling
                        .frame(width: 250, height: 90)
                        .fontWeight(.bold)
                        .font(.system(size: 45))
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(150)
                    
                    //directs user to game page, the start button
                    NavigationLink(destination: QuestionView().navigationBarBackButtonHidden(true)){
                        Text("Start")
                            //styling
                            .frame(width: 250, height: 70)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.system(size:40))
                            .bold()
                            .cornerRadius(10)
                            .padding(150)
                    }
                        
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
