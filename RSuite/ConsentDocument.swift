//
//  ConsentDocument.swift
//  RSuite
//
//  Created by Yanbo Li on 11/18/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Example Consent"
    
    //TODO: consent sections
    
    //TODO: signature
    
    return consentDocument
}