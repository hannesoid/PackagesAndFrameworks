# Use of @objc exposed Swift Enum from Package embedded in a Framework

We have a Swift Package A, with an enum ‚AEnum', a class ‚AClass' and a protocol ‚AProtocol'. All three types are exposed to @objc.

Package A is embedded in a framework target G. This framework publicly exposes 3 swift methods: ‚func gConsumeAClass(aClass: AClass)', ‚func gConsumeAEnum(aEnum: AEnum)' and ‚func gConsumeAProtocol(aProtocol: AProtocol)‘ (all of them exposed to @objc).

Framework G is used in an App target J. Compilation of J fails because the Swift generated header G-Swift.h shows an error: „Module 'A' not found".
Removing gConsumeAEnum from the public Interface of G circumvents the error because the AEnum isn't part of G-Swift.h anymore which removes the need for having „@import A" (because AClass and AProtocol are both forward declared in G-Swift.h)

Is there a way to circumvent this error? We created a minimal sample project to reproduce this issue.