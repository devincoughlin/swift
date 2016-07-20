// RUN: %target-run-simple-swift
// REQUIRES: executable_test

// Intents is only public on OS X and iOS
// UNSUPPORTED: OS=watchos, OS=tvos

import Intents
import StdlibUnittest

let IntentsTestSuite = TestSuite("Intents")

IntentsTestSuite.test("ErrorDomain") {
  expectEqual("IntentsErrorDomain", INIntentErrorDomain)
}

IntentsTestSuite.test("extension") {
  expectEqual("IntentsErrorDomain", INIntentErrorCode._nsErrorDomain)
}

runAllTests()
