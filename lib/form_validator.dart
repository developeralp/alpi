class FormValidator {
  static String? required(
    String? value, {
    String fieldName = "This area",
    String cantBeEmptyMessage = "can't be empty.",
  }) {
    if (value == null || value.trim().isEmpty) {
      return "$fieldName $cantBeEmptyMessage";
    }
    return null;
  }
}
