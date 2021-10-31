class HomeModel {
  String? makeOptions;

  HomeModel(this.makeOptions);

  static List<HomeModel> getHomeData() {
    return [
      HomeModel("Sliver App bar wih list"),
      HomeModel("Sliver App bar with image"),
    ];
  }
}
