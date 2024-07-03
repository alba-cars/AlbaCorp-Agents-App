// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';

import '../../model/file_object.dart';
import '../s3_image.dart';
import 'document_upload_field.dart';
import 'error_text.dart';

class MultiDocumentUploadField<T> extends StatefulWidget {
  const MultiDocumentUploadField({
    Key? key,
    this.label,
    this.hint,
    required this.name,
    this.validator,
    this.isRequired = false,
    this.isHidden = false,
  }) : super(key: key);
  final String name;

  final String? label;
  final String? hint;

  final String? Function(List<FileObject>? val)? validator;
  final bool isRequired;
  final bool isHidden;

  @override
  State<MultiDocumentUploadField<T>> createState() =>
      _MultiDocumentUploadFieldState<T>();
}

class _MultiDocumentUploadFieldState<T>
    extends State<MultiDocumentUploadField<T>> {
  final GlobalKey<FormBuilderFieldState<FormBuilderField, FileObject>>
      _formBuilderState =
      GlobalKey<FormBuilderFieldState<FormBuilderField, FileObject>>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    Color borderColor = colorScheme.primary;

    return FormBuilderField<List<FileObject>>(
      key: _formBuilderState,
      name: widget.name,
      validator: (w) {
        if ((w == null || w.isEmpty) && widget.isRequired) {
          return 'This field is required';
        }
        return widget.validator?.call(w);
      },
      builder: (state) {
        if (widget.isHidden) {
          return const SizedBox();
        }
        final selectedImages =
            state.value ?? []; // Initialize with an empty list
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.label != null)
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        widget.label! +
                            (widget.isRequired ? ' *' : ' (optional)'),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF555555),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(
              height: 6,
            ),
            GestureDetector(
              onTap: () {
                chooseFileDialog(context, (type) async {
                  if (type != null &&
                      (type == DialogType.Camera ||
                          type == DialogType.Gallery)) {
                    ImageSource source = type == DialogType.Camera
                        ? ImageSource.camera
                        : ImageSource.gallery;
                    await choosePhoto(
                      context,
                      source,
                      state,
                    );
                  } else if (type != null && type == DialogType.Pdf) {
                    await choosePdf(state);
                  }
                }, types: [
                  DialogType.Camera,
                  DialogType.Gallery,
                  DialogType.Pdf
                ]);
              },
              child: DottedBorder(
                color: borderColor,
                strokeWidth: 1,
                radius: const Radius.circular(12),
                dashPattern: const [7, 7],
                child: selectedImages.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 100,
                              width: double.maxFinite,
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 8,
                                  crossAxisSpacing: 8,
                                ),
                                shrinkWrap: true,
                                itemCount: selectedImages.length,
                                itemBuilder: (context, index) {
                                  // final entry = ;
                                  // final index = entry.key;
                                  final image = selectedImages[index];
                                  final extension = image.localImage
                                          ?.split('.')
                                          .last ??
                                      image.networkImageUrl?.split('.').last ??
                                      '';

                                  return Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      (extension.contains(
                                              RegExp('jpeg|jpg|png|webp')))
                                          ? Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6)),
                                                child: (image.localImage !=
                                                        null)
                                                    ? Image.file(
                                                        getImageByFileType(File(
                                                            image.localImage!)),
                                                        fit: BoxFit
                                                            .cover, // Adjust image fit as needed
                                                      )
                                                    : (image.networkImageUrl !=
                                                            null)
                                                        ? S3Image(
                                                            url: image
                                                                .networkImageUrl!,
                                                            fit: BoxFit.cover,
                                                          )
                                                        : const Placeholder(), // This line ensures that there's a child, even if it's empty.
                                              ),
                                            )
                                          : Container(
                                              child: ClipRRect(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(6)),
                                                  child: Image.asset(
                                                    'assets/images/choose_pdf_icon.png',
                                                    fit: BoxFit
                                                        .contain, // Adjust image fit as needed
                                                  )),
                                            ),
                                      Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                6.0), // Adjust the radius as needed
                                            color: colorScheme.primary,
                                          ),
                                          padding: const EdgeInsets.all(
                                              4.0), // Adjust padding as needed
                                          child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                selectedImages.removeAt(
                                                    index); // Remove the image from the list
                                              });
                                            },
                                            child: const Icon(
                                              Icons.delete,
                                              color: Colors.white,
                                              size: 14.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                chooseFileDialog(context, (type) async {
                                  if (type != null &&
                                      (type == DialogType.Camera ||
                                          type == DialogType.Gallery)) {
                                    ImageSource source =
                                        type == DialogType.Camera
                                            ? ImageSource.camera
                                            : ImageSource.gallery;
                                    await choosePhoto(
                                      context,
                                      source,
                                      state,
                                    );
                                  } else if (type != null &&
                                      type == DialogType.Pdf) {
                                    await choosePdf(state);
                                  }
                                }, types: [
                                  DialogType.Camera,
                                  DialogType.Gallery,
                                  DialogType.Pdf
                                ]);
                              },
                              child: Column(
                                children: [
                                  Text(
                                    "Upload Images",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .shadow,
                                        ),
                                  ),
                                  Icon(
                                    Icons.cloud_upload_outlined,
                                    size: 40,
                                    color: colorScheme.primary,
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        widget.hint ?? 'Browse Files to Upload',
                                        style: textTheme.labelSmall?.apply(
                                            color: const Color(0xFF555555),
                                            fontWeightDelta: 2),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                    : GestureDetector(
                        onTap: () {
                          chooseFileDialog(context, (type) async {
                            if (type != null &&
                                (type == DialogType.Camera ||
                                    type == DialogType.Gallery)) {
                              ImageSource source = type == DialogType.Camera
                                  ? ImageSource.camera
                                  : ImageSource.gallery;
                              await choosePhoto(
                                context,
                                source,
                                state,
                              );
                            } else if (type != null && type == DialogType.Pdf) {
                              await choosePdf(state);
                            }
                          }, types: [
                            DialogType.Camera,
                            DialogType.Gallery,
                            DialogType.Pdf
                          ]);
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Upload Images",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .shadow,
                                        ),
                                  ),
                                  Icon(
                                    Icons.cloud_upload_outlined,
                                    size: 80,
                                    color: colorScheme.primary,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        widget.hint ?? 'Browse Files to Upload',
                                        style: textTheme.labelSmall?.apply(
                                            color: const Color(0xFF555555),
                                            fontWeightDelta: 2),
                                      ),
                                      Text(
                                        widget.hint ??
                                            'Files Supported: png, jpg, jpeg',
                                        style: textTheme.bodyMedium?.apply(
                                            color: const Color(0xFF555555)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
            ),
            if (state.hasError == true)
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: ErrorText(
                  state.errorText ?? "",
                ),
              ),
            const SizedBox(
              height: 6,
            ),
          ],
        );
      },
    );
  }

  Future choosePhoto(
    BuildContext context,
    ImageSource source,
    FormFieldState state,
  ) async {
    List<XFile> files = [];
    if (source == ImageSource.gallery) {
      files = await ImagePicker().pickMultiImage(
        imageQuality: 25,
      );
    } else {
      final file = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 25,
      );
      if (file != null) {
        files.add(file);
      }
    }
    if (files.isEmpty) return;
    final fileObjects = files.map((e) => FileObject(localImage: e.path));
    state.didChange(
        <FileObject>[...(state.value ?? <FileObject>[]), ...fileObjects]);
  }
}

Future choosePdf(
  FormFieldState state,
) async {
  try {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      final fileObjects =
          result.files.map((e) => FileObject(localImage: e.path));
      state.didChange(
          <FileObject>[...(state.value ?? <FileObject>[]), ...fileObjects]);
    }
  } catch (e, stackTrace) {
    Logger().e(e, stackTrace: stackTrace);
  }
}

enum FType {
  JPG,
  PNG,
  HEIC,
  PDF,
  File,
  SVG,
  Other,
}

File getImageByFileType(File file) {
  FType fileType = getFileType(file);
  switch (fileType) {
    default:
      return file;
  }
}

BoxFit getImageFitByFileType(File file) {
  FType fileType = getFileType(file);
  BoxFit fit = BoxFit.cover;
  switch (fileType) {
    case FType.PDF:
      fit = BoxFit.contain;
      break;
    default:
      break;
  }
  return fit;
}

FType getFileType(File file) {
  String fileExtension = extension(file.path).toLowerCase();
  FType fileType = FType.Other;
  switch (fileExtension) {
    case '.jpg':
    case '.jpeg':
      fileType = FType.JPG;
      break;
    case '.png':
      fileType = FType.PNG;
      break;
    case '.heic':
      fileType = FType.HEIC;
      break;
    case '.pdf':
      fileType = FType.PDF;
      break;
    case '.file':
      fileType = FType.File;
      break;
    case '.svg':
      fileType = FType.SVG;
      break;
    default:
      break;
  }
  return fileType;
}
