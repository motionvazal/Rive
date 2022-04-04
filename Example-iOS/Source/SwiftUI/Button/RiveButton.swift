//
//  RiveButton.swift
//  RiveExample
//
//  Created by Matt Sullivan on 5/13/21.
//  Copyright © 2021 Rive. All rights reserved.
//

import SwiftUI
import RiveRuntime

struct RiveButton: View {
    let resource:String
    let controller: RiveController = RiveController()
    
    var action: (() -> Void)? = nil
    var body: some View {
        RiveViewSwift(
            resource: resource,
            fit: .constant(.fitCover),
            autoplay: false,
            controller: controller
        )
            .frame(width: 100, height: 20)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .onTapGesture {
                controller.stop()
                try? controller.play("Pull")
                
                action?()
            }
    }
}

struct RiveButton_Previews: PreviewProvider {
    static var previews: some View {
        RiveButton(resource: "pull") { }
    }
}