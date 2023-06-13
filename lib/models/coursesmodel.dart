

class CoursesModel {

  String? courseName;
  int? creditHours;
  String? courseInstructor;

  CoursesModel(this.courseName, this.creditHours, this.courseInstructor);
}

List<CoursesModel> courses = [
  CoursesModel('Flutter  Development', 3 , 'Naqi Hassan'),
  CoursesModel('MERN Development', 3, 'Ahsan'),
  CoursesModel('Android Development', 3, 'Naqi Hassan'),

];