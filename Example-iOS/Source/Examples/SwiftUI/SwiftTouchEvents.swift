//
//  SwiftTouchEvents.swift
//  RiveExample
//
//  Created by Zachary Duncan on 4/26/22.
//  Copyright © 2022 Rive. All rights reserved.
//

import SwiftUI
import RiveRuntime

struct SwiftTouchEvents: DismissableView {
    var dismiss: () -> Void = {}
    
    // MARK: RiveViewModels
    // Each of the these view models controls a file configured with:
    // - State Machine
    // - Listeners
    
    @StateObject var clock = ClockViewModel()
    @StateObject var jelly = RiveViewModel(fileName: "hero_editor")
    @StateObject var playButton = RiveViewModel(fileName: "play_button_event_example")
    @StateObject var lighthouse = RiveViewModel(fileName: "switch_event_example")
    @StateObject var eightball = RiveViewModel(fileName: "magic_8-ball_v2")
    @StateObject var bearGuy = RiveViewModel(fileName: "leg_day_events_example")
    @StateObject var toggle = RiveViewModel(fileName: "light_switch")
    
    var body: some View {
        ScrollView {
            VStack {
                jelly.view()
                    .aspectRatio(1, contentMode: .fit)
                
                playButton.view()
                    .aspectRatio(1, contentMode: .fit)

                lighthouse.view()
                    .aspectRatio(1, contentMode: .fit)

                eightball.view()
                    .aspectRatio(1, contentMode: .fit)

                bearGuy.view()
                    .aspectRatio(1, contentMode: .fit)

                clock.view()

                toggle.view()
                    .aspectRatio(1, contentMode: .fit)
            }
        }
    }
}
