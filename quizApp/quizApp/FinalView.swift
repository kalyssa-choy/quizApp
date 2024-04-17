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
        VStack{
            Text("Quiz has been completed!")
            
            Text("Your score: ")
            
            Text("\(score/10)%")
            
            Text("\(score) out of 10")
            
            NavigationLink(destination: QuestionView()){
                Text("Retry")
            }
            
        }
    }
}

#Preview {
    FinalView(score: .constant(0))
}
