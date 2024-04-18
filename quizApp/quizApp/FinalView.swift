//
//  FinalView.swift
//  quizApp
//
//  Created by StudentAM on 4/17/24.
//

import SwiftUI

struct FinalView: View {
    //the user's score
    @Binding var score: Int
    
    var body: some View {
        ZStack{
            //cyan circle
            Circle()
                //styling
                .position(x: 40, y: 30)
                .foregroundColor(Color("cyan"))
            
            //lavender circle
            Circle()
                //styling
                .position(x: 350, y: 700)
                .foregroundColor(Color("lavender"))
            
            //main
            VStack{
                //prompt for end of the quiz
                Text("Quiz has been completed!")
                    //styling
                    .padding()
                    .fontWeight(.heavy)
                    .font(.system(size: 25))
                
                //prompting the score
                Text("Your score: ")
                    //styling
                    .padding()
                    .bold()
            
                //the score as a percentage
                Text("\(score*10)%")
                    //styling
                    .padding(30)
                    .fontWeight(.heavy)
                    .font(.system(size: 50))
                
                //the score out of 10
                Text("\(score) out of 10")
                    //styling
                    .padding(.bottom, 100)
                    .fontWeight(.heavy)
                
                //"button" to direct the user back to the start of the game
                NavigationLink(destination: QuestionView().navigationBarBackButtonHidden(true)){
                    //the text of the button
                    Text("Retry")
                }
                //styling
                .padding()
                .frame(width: 150, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .bold()
                .cornerRadius(10)
                
            }
        }
    }
}

#Preview {
    FinalView(score: .constant(0))
}
