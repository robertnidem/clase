//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let videoLength = 3
let videoLengthTooShortReaction = "¡Parpadeo y me lo pierdo!"
let videoReasonableLenghtReaction = "Es muy bueno"
let videoMessage = "El video dura \(videoLength) (duracion del video) segundos. \(videoLengthTooShortReaction)"

if videoLength < 5
{
    print ("El video dura \(videoLength) (duracion del video) segundos. \(videoLengthTooShortReaction)")
}
