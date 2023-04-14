//
//  ShowText.swift
//  ShowText
//
//  Created by  on 2023/4/13.
//

import UIKit
import SVProgressHUD

public class ShowText: NSObject {
    public func show() {
        print("test")
        SVProgressHUD.show(ImageProvider.picture(),
                           status: NSLocalizedString("TestTitle",
                                                     bundle: Bundle(for: ShowText.self), comment: ""))
    }
}

public class ImageProvider {
    // convenient for specific image
    public static func picture() -> UIImage {
        return UIImage(named: "test", in: Bundle(for: self), with: nil) ?? UIImage()
    }

    // for any image located in bundle where this class has built
    public static func image(named: String) -> UIImage? {
        return UIImage(named: named, in: Bundle(for: self), with: nil)
    }
}

public class LocalizedProvider {
    public static func localizedString(key: String) -> String {
        return NSLocalizedString(key,
                                 bundle: Bundle(for: self), comment: "")
    }
}

public class NetworkHelper<T> where T: Codable {
    public init() {
        
    }
    
    public func request() {
        print("request")
    }
}
