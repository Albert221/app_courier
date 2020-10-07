import 'package:app_courier_api/app_courier_api.dart';
import 'package:test/test.dart';

void main() {
  group('MetadataExplorer', () {
    const metadataPath = '/usr/Albert/project/fastlane/metadata';
    late MetadataExplorer explorer;
    setUp(() {
      explorer = MetadataExplorer(metadataPath);
    });

    test('metadataPath is correct', () {
      expect(explorer.metadataPath, metadataPath);
    });
  });
}
