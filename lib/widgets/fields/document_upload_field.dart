// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:real_estate_app/view/pdf_view_screen/pdf_view_screen.dart';
import 'package:real_estate_app/widgets/s3_image.dart';
import 'package:real_estate_app/widgets/space.dart';
import 'package:real_estate_app/widgets/text.dart';

import '../../model/file_object.dart';
import 'error_text.dart';
import 'field_color.dart';

enum DialogType { All, Photo, Video, Gallery, Camera, Pdf }

class DocumentSelectionField<T> extends StatefulWidget {
  const DocumentSelectionField({
    Key? key,
    this.label,
    required this.onSelected,
    this.selectedFile,
    this.hint,
    required this.isEditting,
    required this.name,
    this.validator,
  }) : super(key: key);
  final String name;

  final String? label;
  final String? hint;
  final void Function(FileObject path) onSelected;
  final FileObject? selectedFile;
  final bool isEditting;
  final String? Function(FileObject? val)? validator;

  @override
  State<DocumentSelectionField<T>> createState() =>
      _DocumentSelectionFieldState<T>();
}

class _DocumentSelectionFieldState<T> extends State<DocumentSelectionField<T>> {
  late FileObject _fileObject;
  final GlobalKey<FormBuilderFieldState<FormBuilderField, FileObject>>
      _formBuilderState =
      GlobalKey<FormBuilderFieldState<FormBuilderField, FileObject>>();
  @override
  void initState() {
    _fileObject = widget.selectedFile ?? FileObject();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant DocumentSelectionField<T> oldWidget) {
    if (widget.selectedFile != oldWidget.selectedFile &&
        widget.selectedFile != null) {
      _fileObject = widget.selectedFile!;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    Color backgroundColor = Colors.white;
    Color borderColor = colorScheme.primary;

    return FormBuilderField<FileObject>(
        key: _formBuilderState,
        name: widget.name,
        validator: widget.validator,
        builder: (state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (widget.label != null)
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.label!,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.shadow,
                            ),
                      ),
                    ),
                  ],
                ),
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 150,
                child: (state.value?.localImage != null)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(12)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                              child: getImageByFileType(
                                  context, File(state.value!.localImage!)),
                            ),
                            Positioned.directional(
                                end: 10,
                                top: 10,
                                textDirection: Directionality.of(context),
                                child: InkWell(
                                  onTap: () => chooseFile(context, state),
                                  child: const CircleAvatar(
                                    radius: 20,
                                    child: Icon(Icons.edit),
                                  ),
                                ))
                          ],
                        ),
                      )
                    : (state.value?.networkImageUrl != null)
                        ? Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                                child: getImageByFileType(context,
                                    File(state.value!.networkImageUrl!),
                                    isNetwork: true),
                              ),
                              Positioned.directional(
                                  end: 10,
                                  top: 10,
                                  textDirection: Directionality.of(context),
                                  child: InkWell(
                                    onTap: () => chooseFile(context, state),
                                    child: const CircleAvatar(
                                      radius: 20,
                                      child: Icon(Icons.edit),
                                    ),
                                  ))
                            ],
                          )
                        : InkWell(
                            onTap: () => chooseFile(context, state),
                            child: DottedBorder(
                              color: borderColor,
                              strokeWidth: 1,
                              radius: const Radius.circular(12),
                              dashPattern: const [
                                7,
                                7,
                              ],
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
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
                                                widget.hint ??
                                                    'Browse File to Upload',
                                                style: textTheme.labelSmall
                                                    ?.apply(
                                                        color: const Color(
                                                            0xFF555555),
                                                        fontWeightDelta: 2)),
                                            Text(
                                                widget.hint ??
                                                    'Files Supported: png, jpg, jpeg, pdf',
                                                style: textTheme.bodyMedium
                                                    ?.apply(
                                                        color: const Color(
                                                            0xFF555555))),
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
              )
            ],
          );
        });
  }

  void chooseFile(
    BuildContext context,
    FormFieldState state,
  ) async {
    chooseFileDialog(context, (DialogType? type) async {
      if (type != null &&
          (type == DialogType.Camera || type == DialogType.Gallery)) {
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
  }

  Future choosePhoto(
    BuildContext context,
    ImageSource source,
    FormFieldState state,
  ) async {
    final XFile? result = await ImagePicker().pickImage(
      source: source,
      imageQuality: 25,
    );
    if (result == null) return;
    _fileObject = _fileObject.copyWith(
        localImage: result.path, isChanged: widget.isEditting);
    widget.onSelected.call(_fileObject);
    state.didChange(_fileObject);
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
        _fileObject = _fileObject.copyWith(
            localImage: result.paths.first, isChanged: widget.isEditting);
        widget.onSelected.call(_fileObject);
        state.didChange(_fileObject);
      }
    } catch (e, stackTrace) {
      Logger().e(e, stackTrace: stackTrace);
    }
  }
}

void chooseFileDialog(
    BuildContext originalContext, FutureOr Function(DialogType? value) onValue,
    {Function? onError, List<DialogType>? types}) {
  types ??= [DialogType.Photo];
  List<DialogType> expandedTypes = [];
  for (DialogType type in types) {
    if (type == DialogType.All) {
      expandedTypes.clear();
      expandedTypes.addAll(DialogType.values);
      break;
    } else if (type == DialogType.Photo) {
      if (!expandedTypes.contains(DialogType.Camera)) {
        expandedTypes.add(DialogType.Camera);
      }
      if (!expandedTypes.contains(DialogType.Gallery)) {
        expandedTypes.add(DialogType.Gallery);
      }
    } else if (!expandedTypes.contains(type)) {
      expandedTypes.add(type);
    }
  }

  bool isIOS = Theme.of(originalContext).platform == TargetPlatform.iOS;
  double bottomSafePadding = MediaQuery.of(originalContext).padding.bottom;
  showGeneralDialog<DialogType>(
    context: originalContext,
    transitionDuration: const Duration(milliseconds: 200),
    transitionBuilder: (context, anim1, anim2, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(anim1),
        child: child,
      );
    },
    barrierDismissible: true,
    barrierLabel: 'sssss',
    pageBuilder: (context, anim1, anim2) {
      final textTheme = Theme.of(context).textTheme;
      final colorScheme = Theme.of(context).colorScheme;
      return Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: colorScheme.onPrimary,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(24))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  BlockTitleText(
                    text: 'Choose Action',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (expandedTypes.contains(DialogType.Camera))
                        GestureDetector(
                          onTap: () =>
                              Navigator.pop(context, DialogType.Camera),
                          behavior: HitTestBehavior.translucent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/choose_photo_camera_icon.png",
                                height: 40,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Camera', style: textTheme.bodyMedium)
                            ],
                          ),
                        ),
                      if (expandedTypes.contains(DialogType.Gallery))
                        GestureDetector(
                          onTap: () =>
                              Navigator.pop(context, DialogType.Gallery),
                          behavior: HitTestBehavior.translucent,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/choose_photo_gallery_icon.png",
                                height: 40,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('Gallery', style: textTheme.bodyMedium)
                            ],
                          ),
                        ),
                      if (expandedTypes.contains(DialogType.Pdf))
                        GestureDetector(
                          onTap: () => Navigator.pop(context, DialogType.Pdf),
                          behavior: HitTestBehavior.translucent,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/choose_pdf_icon.png",
                                height: 40,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text('PDF', style: textTheme.bodyMedium)
                            ],
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: isIOS && bottomSafePadding != 0
                        ? bottomSafePadding
                        : 25,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  ).then(onValue, onError: onError);
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

Widget getImageByFileType(BuildContext context, File file,
    {bool isNetwork = false}) {
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
          child: Column(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    context.pushNamed(PdfViewScreen.routeName,
                        pathParameters: {'url': file.path});
                  },
                  child: Image.asset(
                    'assets/images/choose_pdf_icon.png',
                    fit: getImageFitByFileType(file),
                  ),
                ),
              ),
              const VerticalSmallGap(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    file.path.split('/').lastOrNull ?? '',
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    default:
      if (isNetwork) {
        return Center(
          child: S3Image(
            url: file.path,
            fit: BoxFit.contain,
          ),
        );
      }
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
