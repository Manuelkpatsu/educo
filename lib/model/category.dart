enum Category {
  interiorDesign(1, 'Interior design'),
  art(2, 'Traditional art'),
  animation(3, '3D Animation'),
  marketing(4, 'Marketing'),
  photography(5, 'Photography'),
  calligraphy(6, 'Calligraphy & lettering'),
  design(7, 'UX design'),
  webDevelopment(8, 'Web development'),
  procreate(9, 'Procreate'),
  craft(10, 'Craft');

  final int id;
  final String name;

  const Category(this.id, this.name);
}
