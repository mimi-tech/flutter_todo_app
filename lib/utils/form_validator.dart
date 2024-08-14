class FormValidator {
  static String? validateTitle(String? value) {
    if (value == null || value.isEmpty) {
      return 'Title is required';
    }
    return null;
  }

  static String? validateDesc(String? value) {
    if (value == null || value.isEmpty) {
      return 'Description is required';
    }
    return null;
  }

  static String? validateDateAndTime(String? value) {
    if (value == null || value.isEmpty) {
      return 'Date & time is required';
    }
    return null;
  }

  static String? validateStartTime(String? value) {
    if (value == null || value.isEmpty) {
      return 'Start time is required';
    }
    return null;
  }

  static String? validateEndTime(String? value) {
    if (value == null || value.isEmpty) {
      return 'End time is required';
    }
    return null;
  }
}