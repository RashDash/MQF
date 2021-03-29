//
//  QuestionView.swift
//  MQF
//
//  Created by Christian Brechbuhl on 3/14/21.
//  Copyright © 2021 Airmen Coders, US Air Force - See INTENT.md for license type information. All rights reserved.
//

import Foundation
import SwiftUI


struct QuestionView: UIViewControllerRepresentable {
    
    var activeQuestion:QKQuestion?
    /// Current Quiz Session
    var quizSession:QKSession = QKSession.default
    /// Test mode (Study or Test)
    var mode:QuizMode = .Study
    /// Submitted Answer
    var answerSubmitted = -1
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIViewController(context: Context) ->QuestionCollectionViewController {
        let menuViewController = QuestionCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        return menuViewController
    }
    
    func updateUIViewController(_ uiViewController: QuestionCollectionViewController, context: Context) {
        
    }
 }

public enum QuizMode {
    case Study
    case Test
}
