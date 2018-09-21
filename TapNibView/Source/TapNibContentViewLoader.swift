//
//  TapNibContentViewLoader.swift
//  TapNibView
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import protocol TapAdditionsKit.ClassProtocol
import class    UIKit.UINib.UINib
import class    UIKit.UIView.UIView

/// Content view loading helper protocol.
internal protocol TapNibContentViewLoader: ClassProtocol, TapNibLoading {

    var isContentViewLoaded: Bool { get set }
}

internal extension TapNibContentViewLoader {

    // MARK: - Internal -
    // MARK: Methods

    internal func loadContentView() {

        guard !self.isContentViewLoaded else { return }
        let selfType = type(of: self)
        let nib = UINib(nibName: selfType.nibName, bundle: selfType.bundle)

        guard let contentView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {

            fatalError("Failed to instantiate \(selfType.className) from nib named \(selfType.nibName).")
        }

        self.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false

        self.addSubviewWithConstraints(contentView, respectLanguageDirection: true)
        contentView.setTranslatesAutoresizingMasksIntoConstrants(false, includeSubviews: true)

        self.isContentViewLoaded = true

        self.setup()
    }
}
