//
//  RNShowCase.swift
//  RNShowCase
//
//  Created by Diego Galindo on 1/26/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

extension UIView {
    
    class func getAllSubviews<T: UIView>(view: UIView) -> [T] {
        return view.subviews.flatMap { subView -> [T] in
            var result = getAllSubviews(view: subView) as [T]
            if let view = subView as? T {
                result.append(view)
            }
            return result
        }
    }
    
    func getAllSubviews<T: UIView>() -> [T] {
        return UIView.getAllSubviews(view: self) as [T]
    }
}


@objc(RNShowCase)
class RNShowCase: RCTEventEmitter, iShowcaseDelegate {
    
    override func supportedEvents() -> [String]! {
        return [""]
    }
    
    @objc
    func show(_ viewId: NSNumber, title: String!, message: String!) {
        
        DispatchQueue.main.async {
            if let rootView = UIApplication.shared.delegate?.window??.rootViewController?.view as? RCTRootView {
                
                var view: UIView?
                
                for v in rootView.getAllSubviews() {
                    if v.reactTag != nil && v.reactTag == viewId{
                        view = v
                    }
                }
                
                guard let _viewToShowCase = view else {
                    return
                }
                
                let showcase = iShowcase()
                showcase.delegate = self
                showcase.setupShowcaseForView(_viewToShowCase)
                showcase.titleLabel.text = title
                showcase.detailsLabel.text = message
                showcase.show()
                
            }
        }
    }
}
