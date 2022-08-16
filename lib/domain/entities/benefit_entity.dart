class BenefitEntity {
  final int idImage;
  final int idItem;
  final int numberClick;
  final String title;
  final String imgURL;

  BenefitEntity(
      {required this.idImage,
      required this.idItem,
      required this.numberClick,
      required this.imgURL,
      required this.title});
}
