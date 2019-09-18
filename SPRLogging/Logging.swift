//
//  Logging.swift
//  SPRLogging
//
//  Created by ShivaPrasad on 18/09/19.
//  Copyright © 2019 ShivaPrasad. All rights reserved.
//

import Foundation


public class SPRLog {


    public static let shared = SPRLog()
    //1.
    private var isDebug: Bool!

    //2.
    private init() {
        self.isDebug = false
    }

    //3.
    public func setup(isDebug: Bool) {
        self.isDebug = isDebug
        print("Project is in Debug mode: \(isDebug)")
    }

    //4.
    public func SPRPrint<T>(value: T) {
        if self.isDebug == true {
            print(value)
        } else {
            //Do any stuff for production mode
        }
    }

}
