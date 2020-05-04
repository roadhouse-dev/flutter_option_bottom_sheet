# flutter option bottom sheet

A simple Bottom sheet Widget

## How to use

```dart
  final source = await showModalBottomSheet(
      context: context,
      builder: (dialogContext) {
        return OptionBottomSheet(
          title: Text(Strings.selectProfileImageTitle),
          subTitle: Text(Strings.selectProfileImageSubtitle),
          optionItems: [
            OptionItem(
              icon: Icon(Icons.camera_alt),
              title: Strings.takePhoto,
              value: SourceType.camera,
            ),
            OptionItem(
              icon: Icon(Icons.image),
              title: Strings.selectImage,
              value: SourceType.gallery,
            ),
          ],
          onSelection: (source) {
            ImageSource imageSource = source == SourceType.camera
                ? ImageSource.camera
                : ImageSource.gallery;
            Navigator.of(dialogContext).pop(imageSource);
          },
        );
      });
```