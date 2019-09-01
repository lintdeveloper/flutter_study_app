#!/usr/bin/env bash
flutter pub pub run intl_translation:extract_to_arb --output-dir=res/values lib/i10n/localization_intl.dart
flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/i10n --no-use-deferred-loading lib/i10n/localization_intl.dart res/values/intl_*.arb
