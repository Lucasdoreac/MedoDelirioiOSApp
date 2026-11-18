//
//  AppIdentity.swift
//  MedoDelirioBrasilia
//
//  Forks build the same code under their own bundle ID. Only the official app may write
//  to the official server, Firebase and Crashlytics; a fork still reads public content.
//

import Foundation

enum AppIdentity {

    static let officialBundlePrefix = "com.rafaelschmitt."

    static var isOfficialBuild: Bool {
        Bundle.main.bundleIdentifier?.hasPrefix(officialBundlePrefix) ?? false
    }
}
