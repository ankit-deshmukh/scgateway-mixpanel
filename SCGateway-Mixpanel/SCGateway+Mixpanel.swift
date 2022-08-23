//
//  SCGateway+Mixpanel.swift
//  SCGateway-Mixpanel
//
//  Created by Ankit Deshmukh on 06/07/22.
//

import Foundation
import Mixpanel

func setupMixpanel(completion: @escaping(Result<Bool,Error>) -> Void) {
    
    //        SessionManager.mixpanelSetupInProgress = true
    //
    //        if SessionManager.baseEnvironment == .development || SessionManager.baseEnvironment == .staging {
    Mixpanel.initialize(token: "952676d310d87d9665e5d79f88cc8814")
    //            SessionManager.mixpanelSetupComplete = true
    //        } else {
    //
    //            if let mixpanelProjectKey = SessionManager.copyConfig?.mixpanel?.projectKey {
    //                Mixpanel.initialize(token: mixpanelProjectKey)
    //                SessionManager.mixpanelSetupComplete = true
    //            } else {
    //                SessionManager.mixpanelSetupComplete = false
    //                completion(.success(false))
    //            }
    //        }
    //
    //        /**
    //         * Apple removed the truly unique identifier and instead introduced an identifier for each vendor: a UUID that's the same for all apps for a given developer for each user, but varies between developers and between devices.
    //         * reference: https://www.hackingwithswift.com/example-code/system/how-to-identify-an-ios-device-uniquely-with-identifierforvendor
    //         */
    //
    //        if let uuid = UIDevice.current.identifierForVendor?.uuidString {
    //            SessionManager.vendorId = uuid
    //        }
    //
    //        /// If the SDK has a smallcaseAuthId stored locally and host passes a GUEST user token, remove the smallcaseAuthId stored.
    //
    //        if SessionManager.userStatus == .guest && (UserDefaults.standard.string(forKey: "smallcaseAuthId") != nil) {
    //
    //            Mixpanel.mainInstance().reset()
    //            UserDefaults.standard.set("", forKey: "smallcaseAuthId")
    //        }
    //
    //        self.registerMixpanelSuperProps([
    //            "gatewayName": SessionManager.gatewayName ?? "unavailable",
    //            "SDK version": getSdkVersion(),
    //            "SDK type": SessionManager.sdkType,
    //            "device_id_sc": SessionManager.vendorId,
    //            "transactionId": SCGateway.currentTransactionId
    //        ])
    //
    ////        completion(.success(true))
    //        if SessionManager.mixpanelSetupComplete {
    //            completion(.success(true))
    //        } else {
    //            completion(.success(false))
    //        }
    
    completion(.success(true))
}


/**
 * These properties are automatically included with all the tracked events
 * reference: https://developer.mixpanel.com/docs/swift#super-properties
 */
/// - Parameter superProperties: the properties to persist for every mixpanel event

//    func registerMixpanelSuperProps(_ superProperties: Properties?) {
//
//        guard let superProps = superProperties else { return }
//
//        if SessionManager.mixpanelSetupComplete {
//            Mixpanel.mainInstance().registerSuperProperties(superProps)
//        }
//    }


/// Register a mixpanel event with a given event name and properties
/// - Parameters:
///   - eventName: The name of the event
///   - additionalProperties: properties in addition to the super properties added earlier

//    func registerMixpanelEvent(eventName: String, additionalProperties: Properties) {
//
//        if SessionManager.mixpanelSetupComplete {
//            Mixpanel.mainInstance().track(event: eventName, properties: additionalProperties)
//        } else if SessionManager.mixpanelSetupInProgress {
//
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
//
//                if SessionManager.mixpanelSetupComplete {
//                    Mixpanel.mainInstance().track(event: eventName, properties: additionalProperties)
//                }
//
//            })
//        }
//    }

func registerMixpanelEvent(eventName: String, additionalProperties: [String: Any]) {
    
    //        if SessionManager.mixpanelSetupComplete {
    //            Mixpanel.mainInstance().track(event: eventName, properties: additionalProperties)
    //        } else if SessionManager.mixpanelSetupInProgress {
    //
    //            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
    //
    //                if SessionManager.mixpanelSetupComplete {
    //                    Mixpanel.mainInstance().track(event: eventName, properties: additionalProperties)
    //                }
    //
    //            })
    //        }
}

/// Reset and setup mixpanel again if the SDK has a smallcaseAuthId already stored in UserDefaults and the SDK got initialised with a new smallcaseAuthId
/// - Parameter newAuthId: the smallcaseAuthId of the new user
func setupMixpanelForANewUser(_ newAuthId: String) {
    
    //        if SessionManager.mixpanelSetupComplete {
    //            Mixpanel.mainInstance().reset {
    //
    //                self.identifyUser(newAuthId)
    //
    //                self.registerMixpanelSuperProps([
    //                    "gatewayName" : SessionManager.gatewayName!,
    //                    "SDK version" : getVersionString(),
    //                    "SDK type" : SessionManager.sdkType,
    //                    "device_id_sc" : SessionManager.vendorId,
    //                    "transactionId": SCGateway.currentTransactionId
    //                ])
    //            }
    //        }
}

/// Identify this user for all the mixpanel events generated
/// - Parameter authId: smallcaseAuthId of the user
func identifyUser(_ authId: String) {
    
    //        if SessionManager.mixpanelSetupComplete {
    //            UserDefaults.standard.set(authId, forKey: "smallcaseAuthId")
    //            Mixpanel.mainInstance().identify(distinctId: authId)
    //        }
}

