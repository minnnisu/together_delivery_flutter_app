enum RestaurantCategory{
  PORK_FEET_BOSSAM("족발/보쌈"),
  KOREAN_SOUP("찜/탕/찌개"),
  JAPANESE_FOOD("돈까스/회/일식"),
  PIZZA("피자"),
  MEAT("고기/구이"),
  NIGHT_FOOD("야식"),
  AMERICAN_FOOD("양식"),
  CHICKEN("치킨"),
  CHINESE_FOOD("중식"),
  ASIAN_FOOD("아시안"),
  BAEBAN_WATER_GREUl_NOODLE("백반/죽/국수"),
  LUNCH_BOX("도시락"),
  SNACK_BAR("분식"),
  CAFE("카페/디저트"),
  FAST_FOOD("패스트푸드"),
  ETC("기타");

  final String korean;
  const RestaurantCategory(this.korean);

  static RestaurantCategory getCategoryFromString(String categoryString) {
    switch (categoryString) {
      case "PORK_FEET_BOSSAM":
        return RestaurantCategory.PORK_FEET_BOSSAM;
      case "KOREAN_SOUP":
        return RestaurantCategory.KOREAN_SOUP;
      case "JAPANESE_FOOD":
        return RestaurantCategory.JAPANESE_FOOD;
      case "PIZZA":
        return RestaurantCategory.PIZZA;
      case "MEAT":
        return RestaurantCategory.MEAT;
      case "NIGHT_FOOD":
        return RestaurantCategory.NIGHT_FOOD;
      case "AMERICAN_FOOD":
        return RestaurantCategory.AMERICAN_FOOD;
      case "CHICKEN":
        return RestaurantCategory.CHICKEN;
      case "CHINESE_FOOD":
        return RestaurantCategory.CHINESE_FOOD;
      case "ASIAN_FOOD":
        return RestaurantCategory.ASIAN_FOOD;
      case "BAEBAN_WATER_GREUl_NOODLE":
        return RestaurantCategory.BAEBAN_WATER_GREUl_NOODLE;
      case "LUNCH_BOX":
        return RestaurantCategory.LUNCH_BOX;
      case "SNACK_BAR":
        return RestaurantCategory.SNACK_BAR;
      case "CAFE":
        return RestaurantCategory.CAFE;
      case "FAST_FOOD":
        return RestaurantCategory.FAST_FOOD;
      default:
        return RestaurantCategory.ETC;
    }
  }

}