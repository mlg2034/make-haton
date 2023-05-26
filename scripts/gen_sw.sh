rm -r packages/taw_api_services/lib/swagger_generated_code &&
cd packages/taw_api_services &&
#flutter pub get &&
flutter packages pub run build_runner build --delete-conflicting-outputs