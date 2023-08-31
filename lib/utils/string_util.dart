class StringUtil {
  static String getFirstName(String name) {
    return name.isNotEmpty ? name.trim().split(' ').elementAt(0) : 'Buddy';
  }
}
