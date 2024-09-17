//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Find a mountain With a snowy peak 🗻",
                 description: "Make sure to get the snow in the picture"),
            Task(title: "Find a beach 🌊",
                 description: "Make sure the photo contains sand and water "),
            Task(title: "Find a stadium🏟️",
                 description: "Make sure the picture is showing the name of the stadium and the stadium in the background")
        ]
    }
}
