class Item {


  final String image;
  final String name;



  Item(
      {
        required this.image,
        required this.name,

       });
}

class ItemFreeCourses {


  final String image;
  final String name;
  final String description;


  ItemFreeCourses(
      {
        required this.image,
        required this.name,
        required this.description,
      });
}





class DataModel {
  static List items = [


    ItemFreeCourses(
        image:
        "assets/freecone.png",
        name: "Top Educators",
        description: "Physics is the field of science that deals with the energy and motion of objects "
    ),
    ItemFreeCourses(
        image:
        "assets/freectwo.png",
        name: "Top Universities",
        description: "Physics is the field of science that deals with the energy and motion of objects "
    ),


  ];
}




class DataModelzero {
  static List items = [

    Item(
        image:
        "assets/fieldsimages/physics.png",
        name: "Physics",


    ),
    Item(
        image:
        "assets/fieldsimages/programminglogo.png",
        name: "Programming "
    ),
    Item(
        image:
        "assets/fieldsimages/uiux.png",
        name: "Design"
    ),
    Item(
        image:
        "assets/fieldsimages/army.png",
        name: "Defence"
    ),
    Item(
        image:
        "assets/fieldsimages/uiux.png",
        name: "Bussiness"
    ),


  ];
}




