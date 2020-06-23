# Duplicate copied package issue

A dynamically linked library product from a swift package is copied into the built product more than once, when is used by more than one Xcode target (framework, main app).

## How Demo Workspace was created:
- create local package A with `type: .dynamic` libarar as product
- create Xcode framework G
- create Xcode app J
- embed framework G in app J
- link to library A from framework G. Observe that it can not be explicitly linked without embedding. 
- link to and embed library A into app J

## Reproduce Issue
- build app J
- inspect built app bundle J
- observe that J includes A.framework twice, once directly and once as part of G

## Environment
Xcode 11.5
Xcode 12 beta 1
macOS 10.15.5

### Lab title
Swift, Compiler, Debugging, and Package Manager lab

#### 
