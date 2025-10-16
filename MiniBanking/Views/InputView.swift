//
//  InputView.swift
//  MiniBanking
//
//  Created by Hoil Sida on 16/10/25.
//
import UIKit

class InputView: UIView {
    let text: String
    let placeHolder: String
    private let label = UILabel()
    private let textField = UITextField()
    
    // Designated initializer
    init(text: String, placeHolder: String) {
        self.text = text
        self.placeHolder = placeHolder
        super.init(frame: .zero)
        setup()
    }
    
    // Optional convenience path if instantiated with frame directly
    override init(frame: CGRect) {
        self.text = ""
        self.placeHolder = ""
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        self.text = ""
        self.placeHolder = ""
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        addSubview(label)
        addSubview(textField)
        
        // Configure content
        label.text = text
        textField.placeholder = placeHolder
        
        // Layout using your anchor helper (sets translatesAutoresizingMaskIntoConstraints = false)
        label.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor)
        textField.anchor(top: label.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
}

