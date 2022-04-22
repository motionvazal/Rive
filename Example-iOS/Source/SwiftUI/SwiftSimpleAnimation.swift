//
//  SimpleAnimation.swift
//  RiveExample
//
//  Created by Maxwell Talbot on 01/03/2022.
//  Copyright © 2022 Rive. All rights reserved.
//


import SwiftUI
import RiveRuntime

struct SwiftSimpleAnimation: DismissableView {
    var dismiss: () -> Void = {}
    
    var body: some View {
        RiveViewModel(fileName: "truck").view()
    }
}


struct SwiftSimpleAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SwiftSimpleAnimation()
    }
}
