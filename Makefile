### generating
gen:
	flutter packages pub run build_runner build --delete-conflicting-outputs

# Generate ui_kit (just assets now)
gen_kit:
	cd packages/ui_kit && flutter pub get && flutter packages pub run build_runner build --delete-conflicting-outputs

### need to create localization package
loc:
	cd packages/localization && flutter gen-l10n

### pods update
pods:
	./scripts/pods_update.sh

### Build new build
build_profile:
	flutter build apk --profile && flutter build ipa --profile

### Format using fvm flutter
format_fvm:
	find . -not -path './.git/*' -not -path '*/.dart_tool/*' -name "*.dart" ! -name "*.g.dart" ! -name "*.mocks.dart" ! -name "*_test.dart" ! -name '*.swagger.*' ! -name '*.config.dart' ! -name '*.chopper.dart' ! -name '*.freezed.dart' ! -name 'app_localization*.dart' | tr '\n' ' ' | xargs fvm flutter format --line-length=100

### Format using std flutter
format:
	find . -not -path './.git/*' -not -path '*/.dart_tool/*' -name "*.dart" ! -name "*.g.dart" ! -name "*.mocks.dart" ! -name "*_test.dart" ! -name '*.swagger.*' ! -name '*.config.dart' ! -name '*.chopper.dart' ! -name '*.freezed.dart' ! -name 'app_localization*.dart' | tr '\n' ' ' | xargs flutter format --line-length=100

# Rule for creating feature structure
new_feature:
	cd lib/features && python3 ../../scripts/new_feature/new_feature.py --name $(name) $(if $(data-sources),--data-sources)
# Rule for showing help
help:
	@echo "Usage: make new_feature name=<name> [data_sources=true]"

