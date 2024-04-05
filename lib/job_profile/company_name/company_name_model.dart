import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'company_name_widget.dart' show CompanyNameWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompanyNameModel extends FlutterFlowModel<CompanyNameWidget> {
  ///  Local state fields for this page.

  bool? isEmailverified = false;

  bool? isNumberVerified = false;

  String? otpValue;

  bool? isOTPSend = false;

  DocumentReference? resume;

  DocumentReference? docRef;

  List<DocumentReference> educationRef = [];
  void addToEducationRef(DocumentReference item) => educationRef.add(item);
  void removeFromEducationRef(DocumentReference item) =>
      educationRef.remove(item);
  void removeAtIndexFromEducationRef(int index) => educationRef.removeAt(index);
  void insertAtIndexInEducationRef(int index, DocumentReference item) =>
      educationRef.insert(index, item);
  void updateEducationRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      educationRef[index] = updateFn(educationRef[index]);

  List<DocumentReference> experienceRef = [];
  void addToExperienceRef(DocumentReference item) => experienceRef.add(item);
  void removeFromExperienceRef(DocumentReference item) =>
      experienceRef.remove(item);
  void removeAtIndexFromExperienceRef(int index) =>
      experienceRef.removeAt(index);
  void insertAtIndexInExperienceRef(int index, DocumentReference item) =>
      experienceRef.insert(index, item);
  void updateExperienceRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      experienceRef[index] = updateFn(experienceRef[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
