import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_network/upload/file_upload.dart';

void main() {
  test('AdsplatterFileUpload class can be instantiated', () async {
    // Create a dummy file
    final dummyFile = File('test/tmp_dummy.txt');
    await dummyFile.create(recursive: true);
    await dummyFile.writeAsString('hello'); // few bytes, no real content needed

    // Try instantiating the class
    final uploader = AdsplatterFileUpload(
      url: 'http://example.com/upload',
      file: dummyFile,
    );

    expect(uploader, isA<AdsplatterFileUpload>());

    // Cleanup
    await dummyFile.delete();
  });
}
