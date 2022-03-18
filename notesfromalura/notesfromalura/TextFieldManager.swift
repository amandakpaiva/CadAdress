//
//  TextFieldManager.swift
//  notesfromalura
//
//  Created by Amanda Karolina Santos da Fonseca Paiva on 18/03/22.
//

import Foundation
import SwiftUI
import AudioToolbox


class TextFieldManager: ObservableObject {
    
    let characterLimit = 14
    
    @Published var userInput = "" {
                didSet {
                    if userInput.count > characterLimit {
                        userInput = String(userInput.prefix(characterLimit))
                        AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) { return }
                    }
                }
            }
