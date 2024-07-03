// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import '../../model/file_object.dart';
import '../../util/color_category.dart';
import '../../view/pdf_view_screen/pdf_view_screen.dart';
import 'document_upload_field.dart';
import 'error_text.dart';

class AttachmentField<T> extends StatefulWidget {
  const AttachmentField({
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
  State<AttachmentField<T>> createState() => _AttachmentFieldState<T>();
}

class _AttachmentFieldState<T> extends State<AttachmentField<T>> {
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

    Color backgroundColor = Colors.white;
    Color borderColor = colorScheme.primary;

    return FormBuilderField<List<FileObject>>(
      key: _formBuilderState,
      name: widget.name,
      validator: widget.validator,
      builder: (state) {
        if (widget.isHidden) {
          return const SizedBox();
        }
        final selectedImages =
            state.value ?? []; // Initialize with an empty list
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  TextButton(
                      onPressed: () {
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
                        }, types: [DialogType.All]);
                      },
                      child: Text('+ Add'))
                ],
              ),
            const SizedBox(
              height: 6,
            ),
            Column(children: [
              Column(
                children: selectedImages.asMap().entries.map((entry) {
                  final index = entry.key;
                  final image = entry.value;

                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blueGrey,
                        ),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6)),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: (image.localImage != null)
                                  ? getImageByFileType(
                                      context, File(image.localImage!))
                                  : (image.networkImageUrl != null)
                                      ? S3Image(
                                          url: image.networkImageUrl!,
                                        )
                                      : const Placeholder(),
                            ), // This line ensures that there's a child, even if it's empty.
                          ),
                        ),
                        HorizontalSmallGap(),
                        Expanded(
                          child: Text(
                            image.localImage?.split('/').last ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        HorizontalSmallGap(),
                        Container(
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
                      ],
                    ),
                  );
                }).toList(),
              ),
            ]),
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
    Logger().d(fileObjects);
    state.didChange(
        <FileObject>[...(state.value ?? <FileObject>[]), ...fileObjects]);
  }

  Future choosePdf(
    FormFieldState state,
  ) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowedExtensions: ['pdf'],
          allowMultiple: true);

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

Widget getImageByFileType(BuildContext context, File file) {
  FType fileType = getFileType(file);
  switch (fileType) {
    case FType.PDF:
      return DottedBorder(
        color: borderColor,
        strokeWidth: 1,
        radius: const Radius.circular(12),
        dashPattern: const [
          7,
          7,
        ],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              context.pushNamed(PdfViewScreen.routeName,
                  pathParameters: {'url': file.path});
            },
            child: Center(
              child: Image.asset(
                'assets/images/choose_pdf_icon.png',
                fit: getImageFitByFileType(file),
              ),
            ),
          ),
        ),
      );
    default:
      return Image.file(
        file,
        fit: BoxFit.contain,
      );
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
