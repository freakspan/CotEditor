/*
 
 UnderlinableButton.swift
 
 CotEditor
 https://coteditor.com
 
 Created by 1024jp on 2017-05-22.
 
 ------------------------------------------------------------------------------
 
 © 2017 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 https://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

import Cocoa

@IBDesignable
final class UnderlinableButton: NSButton {

    @IBInspectable var underline: Bool = false {
        
        didSet {
        guard let attributedTitle = self.attributedTitle.mutableCopy() as? NSMutableAttributedString else { return }
        
        let range = NSRange(location: 0, length: attributedTitle.length)
        
        if self.underline {
            attributedTitle.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.styleSingle.rawValue, range: range)
        } else {
            attributedTitle.removeAttribute(NSUnderlineStyleAttributeName, range: range)
        }
        
        self.attributedTitle = attributedTitle
        }
    }
    
}