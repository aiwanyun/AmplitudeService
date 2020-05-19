//
//  AmplitudeService+UI.swift
//  AmplitudeServiceKitUI
//
//  Created by Darin Krauss on 6/20/19.
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

import LoopKit
import LoopKitUI
import AmplitudeServiceKit

extension AmplitudeService: ServiceUI {

    public static func setupViewController() -> (UIViewController & ServiceSetupNotifying & CompletionNotifying)? {
        let service = AmplitudeService(rawState: [:]) ?? AmplitudeService()
        return ServiceViewController(rootViewController: AmplitudeServiceTableViewController(service: service, for: .create))
    }

    public func settingsViewController() -> (UIViewController & ServiceSettingsNotifying & CompletionNotifying) {
      return ServiceViewController(rootViewController: AmplitudeServiceTableViewController(service: self, for: .update))
    }

}
