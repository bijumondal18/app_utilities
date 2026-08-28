# Flutter Common Utilities

A collection of **reusable utilities, extensions, helper classes, API utilities, interfaces, and common functions** designed to simplify Flutter application development.

This package provides a centralized set of commonly required components that can be reused across standard Flutter applications, helping reduce boilerplate code and keep projects clean, consistent, and maintainable.

## Features

* 🧩 **Dart & Flutter Extensions**

  * String extensions
  * Date & time extensions
  * Collection/list extensions
  * Context extensions
  * Widget extensions
  * Other commonly used extensions

* 🛠️ **Utility Classes**

  * Date & time utilities
  * String utilities
  * Validation utilities
  * Device utilities
  * Storage utilities
  * Formatting utilities
  * Other application-level utilities

* 🌐 **API Utilities**

  * Common API call methods
  * Request/response helpers
  * API-related interfaces
  * Network utility functions
  * Common error-handling helpers

* 🔧 **Helper Classes**

  * Reusable helper functions
  * Common application helpers
  * Formatting helpers
  * Validation helpers
  * UI-related helpers

* 📐 **Interfaces & Contracts**

  * Reusable interfaces
  * Common abstractions
  * Service contracts
  * Repository-related interfaces

* ♻️ **Reusable Components**

  * Reduce repetitive code
  * Centralize commonly used functionality
  * Improve consistency across projects
  * Make application development faster

## Getting Started

Add the package to your Flutter project and use the utilities wherever required.

Make sure your Flutter project is using a compatible Dart and Flutter SDK version.

## Usage

Import the package:

```dart
import 'package:flutter_common_utils/flutter_common_utils.dart';
```

You can then use the available extensions, utilities, helper classes, interfaces, and API-related functionality throughout your application.

### Example

```dart
final email = 'user@example.com';

if (email.isValidEmail) {
  print('Valid email');
}
```

More examples and detailed usage instructions can be found in the `/example` directory.

## Project Structure

The package is organized around commonly required application utilities:

```text
lib/
├── extensions/
├── utils/
├── helpers/
├── interfaces/
├── api/
└── flutter_common_utils.dart
```

The structure may evolve as new utilities and reusable components are added.

## Why Use This Package?

Most Flutter applications require many of the same small utility functions and helper classes. Instead of recreating them for every project, this package provides a common and reusable foundation.

It is intended to:

* Reduce boilerplate
* Improve code reuse
* Keep utility logic centralized
* Provide consistent implementations across applications
* Speed up Flutter development
* Make common functionality easier to maintain

## Additional Information

This package is actively developed and may grow as additional utilities and commonly required application components are added.

Contributions, suggestions, bug reports, and feature requests are welcome.

If you find an issue or have an idea for improving the package, please open an issue or submit a pull request.

## License

This package is open source and available under the terms specified in the `LICENSE` file.
