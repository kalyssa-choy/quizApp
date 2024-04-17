//
//  QuestionView.swift
//  quizApp
//
//  Created by StudentAM on 4/16/24.
//

import SwiftUI

struct QuestionView: View {
    //keeps track of the question num user is on
    @State private var questionNum: Int = 1
    
    //boolean for if the user answered correctly or not
    @State private var clicked: Bool = false
    
    //boolean for if the next question button should be displayed
    @State private var nextDisplay: Bool = false
    
    //the user's score
    @State private var score: Int = 0
    
    //the array holding all questions and answers
    @State private var allQs: [question] = [
        //question 1
        question(q: "What is the largest country in the world?", correct: "Russia", answers: ["United States", "China", "Canada", "Russia"]),
        //question 2
        question(q: "What is the most popular sport in the world?", correct: "Soccer", answers: ["Hockey", "Soccer", "Cricket", "Tennis"]),
        //question 3
        question(q: "What is the most popular fruit in the world?", correct: "Banana", answers: ["Strawberry", "Mango", "Tomato", "Banana"]),
        //question 4
        question(q: "How many rings does Saturn have?", correct: "7", answers: ["3", "80", "27", "7"]),
        //question 5
        question(q: "How many officially recognized dog breeds are there?", correct: "360", answers: ["360", "450", "289", "342"]),
        //question 6
        question(q: "About what percentage of the world population are women?", correct: "49.6%", answers: ["52.3%", "45%", "49.6%", "57.2%"]),
        //question 7
        question(q: "Where was boba invented?", correct: "Taiwan", answers: ["Taiwan", "Korea", "Japan", "Hong Kong"]),
        //question 8
        question(q: "How many letters are in the English Alphabet?", correct: "26", answers: ["29", "26", "24", "27"]),
        //question 9
        question(q: "What is the oldest age in years someone has lived to?", correct: "122", answers: ["100", "132", "122", "199"]),
        //question 10
        question(q: "What is the most popular pet in the world?", correct: "Dog", answers: ["Cat", "Bird", "Fish", "Dog"])
    ]
    
    var body: some View {
        NavigationView{
            VStack{
                //displays the score
                Text("Score: \(score)")
                
                //displaying the question
                Text("\(questionNum). \(allQs[questionNum-1].q)")
                
                //displaying the answer choices
                ForEach(allQs[questionNum-1].answers, id: \.self){answer in
                    Button(action: {

                        if questionNum < 10{
                            nextDisplay = true
                        }
                        
                        if answer == allQs[questionNum-1].correct && !clicked{
                            score += 1
                            
                        }
                        clicked = true
                    }, label:{
                        Text(answer)
                            .frame(width: 250, height: 50)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    })
                }
                
                if nextDisplay{
                    Button(action: {
                        questionNum += 1
                        nextDisplay = false
                        clicked = false
                    }, label:{
                        Text("Next Question")
                            .frame(width: 250, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
                
                if questionNum == 10{
                    NavigationLink(destination: FinalView(score: $score)){
                        Text("Finish")
                            .frame(width: 250, height: 50)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                
            }
            
        }
    }
}

#Preview {
    QuestionView()
}
