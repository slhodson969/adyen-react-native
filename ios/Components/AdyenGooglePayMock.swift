//
// Copyright (c) 2022 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import React
import UIKit
import Adyen

@objc(AdyenGooglePay)
internal class AdyenGooglePayMock: BaseModule {
    
    override func supportedEvents() -> [String]! { [Events.didFail.rawValue] }
    
    @objc
    func open(_ paymentMethodsDict: NSDictionary, configuration: NSDictionary) {
        return sendEvent(error: NativeModuleError.notSupported)
    }
}
