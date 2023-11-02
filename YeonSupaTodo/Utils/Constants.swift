//
//  Constants.swift
//  YeonSupaTodo
//
//  Created by yeon I on 11/2/23.
//

import Foundation

struct Constants {
    static let BASE_URL : String = Bundle.main.infoDictionary?["BASE_URL"] as? String ?? ""
    static let SUPABASE_KEY : String =
    Bundle.main.infoDictionary?["SUPABASE_KEY"] as? String ?? ""
    
}
