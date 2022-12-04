
class Application {

  String position;
  String company;
  String status;
  String price;
  String logo;

  Application(this.position, this.company, this.status, this.price, this.logo);

}

List<Application> getApplications(){
  return <Application>[
    Application("Flutter UI / UX Designer", "Nike Inc.", "Delivered", "40", "assets/nike.png"),
    Application("Product Designer", "Google LLC", "Opened", "60", "assets/google.png"),
    Application("UI / UX Designer", "Uber Technologies Inc.", "Cancelled", "55", "assets/uber.png"),
    Application("Lead UI / UX Designer", "Apple Inc.", "Delivered", "80", "assets/apple.png"),
    Application("Flutter UI Designer", "Amazon Inc.", "Not selected", "60", "assets/amazon.jpg"),
  ];
}