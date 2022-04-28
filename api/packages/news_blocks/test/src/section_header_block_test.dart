// ignore_for_file: prefer_const_constructors

import 'package:news_blocks/news_blocks.dart';
import 'package:test/test.dart';

void main() {
  group('SectionHeaderBlock', () {
    test('can be (de)serialized', () {
      final action = BlockAction(
        type: BlockActionType.navigation,
        uri: Uri.parse('https://flutter.dev'),
      );
      final block = SectionHeaderBlock(title: 'example_title', action: action);

      expect(
        SectionHeaderBlock.fromJson(block.toJson()),
        isA<SectionHeaderBlock>()
            .having((b) => b.type, 'type', block.type)
            .having((b) => b.title, 'title', block.title)
            .having((b) => b.action!.type, 'action.type', action.type)
            .having((b) => b.action!.uri, 'action.uri', action.uri),
      );
    });
  });
}