enum CourseType {
  hot(1, 'Hot'),
  newCourse(2, 'New'),
  bestSell(3, 'Best Selling');

  final int id;
  final String name;

  const CourseType(this.id, this.name);
}
