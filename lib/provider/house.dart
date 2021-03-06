import 'package:flutter/cupertino.dart';

import '../model/house.dart';

class HouseData extends ChangeNotifier {
  void toggleFavorite(id) {
    var house = houses.firstWhere((singHouse) => singHouse.id == id);

    switch (isFavorite(id)) {
      case true:
        favoriteHouses.remove(house);
        break;
      case false:
        favoriteHouses.add(house);
        break;
      default:
    }
    notifyListeners();
  }

  void toggleSave(id) {
    var house = houses.firstWhere((singHouse) => singHouse.id == id);

    switch (isSaved(id)) {
      case true:
        savedHouses.remove(house);
        break;
      case false:
        savedHouses.add(house);
        break;
      default:
    }
    notifyListeners();
  }

  List agentHouseListings(agentId) {
    return houses
        .where((house) => house.contactDetails.contains(agentId))
        .toList();
  }

  bool isFavorite(id) {
    return favoriteHouses.any((house) => house.id == id);
  }

  bool isSaved(id) {
    return savedHouses.any((house) => house.id == id);
  }

  House findById(id) {
    return houses.firstWhere((house) => house.id == id);
  }

  List savedHouses = [];
  List favoriteHouses = [];
  List nearHouses = [];
  List agencyRecommends = [];
  List houses = [
    House(
      id: 1,
      name: 'Lower Hutt City, Wellington 5010',
      location: '52B Pretoria Street, Hutt Central',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9305%5B1%5D_bbc6-8f58-1049-0f6f-623b-1e8b-569f-0651_20220608115046.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9318%5B1%5D_c511-6f85-3b99-82ee-d7ce-08ae-862e-bac5_20220608115314.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9321%5B1%5D_7608-9435-fbb3-1e0c-f608-9da2-cc73-4c14_20220608115338.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9333%5B1%5D_ee80-cca3-19b3-edab-26d1-aab6-868b-efe9_20220608115505.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9335%5B1%5D_25f8-7af4-b8f0-c025-69c3-a192-0441-0f1b_20220608115532.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9306%5B1%5D_6e28-688f-9ce3-0afc-2d63-7789-225b-caf5_20220608115213.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9327%5B1%5D_e04f-3de2-a451-3b93-ba04-4610-08eb-f8f0_20220608115434.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9325%5B1%5D_216c-34b6-5017-9151-da8b-648f-da31-9c51_20220608115412.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9330%5B1%5D_8b42-a68a-2fd6-ce02-6099-5377-4043-b05b_20220608115449.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9323%5B1%5D_c94b-9025-0093-1b3d-d834-49dd-0aa7-a862_20220608115354.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9298%5B1%5D_62c9-0972-855d-8251-7d77-4e35-b235-81b1_20220608114948.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9297%5B1%5D_02ad-6717-633d-a18c-b8f5-0369-7197-9277_20220608114931.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9302%5B1%5D_8a3a-aef2-b7e0-9d77-b1c3-c48e-f502-f895_20220608115031.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/listings/3325826/images/1E5A9296%5B1%5D_120c-19a8-ae3e-de4c-37f5-9100-a1c4-d362_20220608114841.jpg',
      ],
      bedrooms: 3,
      bathrooms: 1,
      garage: 1,
      amount: 130000,
      description:
          'We all know the saying location, location, location, this easy care home situated right in the heart of central Lower Hutt puts you in the prime spot to walk to the local school and Westfield, it gives you easy access to the motorway, there is even a cafe across the road and we haven\'t even begun to talk about the house. This is an immaculately presented home, much loved and well maintained over 30+ years, it is the back one of three units and offers privacy and an aspect not often seen in a townhouse/unit situation. With three bedrooms, open plan living, separate laundry, separate w/c, double glazing and central heating, the home is cozy and warm for the winter, has fantastic sun and is light and airy. The section is a huge surprise with double garaging, a nice lawn area and plenty of space to plant a veggie garden. If you are looking for a family home, a first home or to downsize or retire in a handy location then you need to put this one on your list! For sale by negotiation - call us today to view',
      kitchens: 1,
      sqm: 120,
      openTime: '12 June, 2:30 pm - 3:00 pm',
      saleTime: '',
      contactDetails: [1, 2],
    ),
    House(
      id: 2,
      name: 'Manukau City, Auckland 2024',
      location: '276 Shirley Road, Papatoetoe',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/004_Open2view_ID5380_caa4-03e6-5474-dfb8-ffec-c186-c1e9-a836_20220608100537.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/006_Open2view_ID5380_3095-c522-295d-bbbc-d76a-8d40-4d50-dd26_20220607105721.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/007_Open2view_ID5380_7e68-aa6c-a064-30c8-8319-a8da-34d4-42a8_20220607100017.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/020_Open2view_ID5380_93e3-b674-9a86-afc4-b5ff-f466-3418-1e04_20220608095842.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/44394944_d6f7-6cfd-73c6-48fa-f455-8265-e9ec-110c_20220608100039.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/44394946_25b1-3652-df14-a3ba-0b28-af6f-fa2c-d2ef_20220608100047.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/010_Open2view_ID5380_79e3-6968-bdfc-d6a7-5005-4ad6-542b-1e97_20220607100120.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/005_Open2view_ID5380_c2c1-9b0d-4ec0-e794-9d58-d17d-4af4-9832_20220607100004.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/012_Open2view_ID5380_7e4d-7839-e40b-310b-f47f-6fb4-f27f-9671_20220607100204.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/011_Open2view_ID5380_8afe-7306-a306-d7bc-5f0e-21cd-3aa1-99b6_20220607100142.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/013_Open2view_ID5380_6e19-5650-ee8d-3d86-2e7e-9154-4512-cae9_20220607100218.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/008_Open2view_ID5380_7c51-839c-82c7-1a6a-0a8f-5b79-4bc2-90d1_20220607100030.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/009_Open2view_ID5380_6142-5048-bd4e-4bf3-5a60-ed9b-eaf5-682e_20220607105837.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/015_Open2view_ID5380_a0bd-a96d-acb1-4961-81f5-b755-9ee9-b8bd_20220607105937.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/014_Open2view_ID5380_5f83-e48c-e9fe-0d71-8e13-3205-27a6-13c9_20220607105905.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/listings/3328811/images/016_Open2view_ID5380_3151-ec9f-5f8f-5efd-f640-aa46-0f86-d9a8_20220607105953.jpg',
      ],
      bedrooms: 3,
      bathrooms: 2,
      garage: 0,
      amount: 1650000,
      description:
          'This 1940\'s brick and tile beauty is the perfect blend of style, charm and elegance. It boasts wooden floors and ornate high ceilings.The large brick fire place is another classic feature of this stunning home. It sits on a sizeable 768 (more or less) sqm section on Shirley Road and is just a few houses down from Great South Road and the Papatoetoe Township.It is Zoned Mixed Housing Urban and interest will be very high. At just 1.65 Million, it has been priced to sell. Waste water is on the property and Storm water is close by.The property also features a large flat back section with fully laden lemon trees. it is fully fenced and there is plenty of room for the kids to play.This outstanding Golden Circle Property could not be positioned better in the heart of Papatoetoe. It is just a short drive to the motorway off-ramps, Middlemore Hospital and Kings College.You had best be quick this one simply won\'t last.',
      kitchens: 1,
      sqm: 114,
      openTime: '11 June, 1:00 pm - 1:30 pm',
      saleTime: '',
      contactDetails: [3, 4],
    ),
    House(
      id: 3,
      name: 'Timaru, Canterbury 7910',
      location: '20 Roxburgh Street, Glenwood',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_0216-144d-a1e4-fb62-75aa-303c-4959-8da8_20220607074549.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_3ed2-d770-67a5-df5c-e8d6-c899-f9ae-02bf_20220607074709.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_394c-69ac-0644-f984-09d4-af46-cc9e-b62b_20220607074553.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_6f26-19de-2fa6-222b-47a7-aef0-f31d-3c8c_20220607074605.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_9332-c259-a3d7-6e49-b219-5de7-927b-edd4_20220607074618.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_f69d-e055-21cb-841a-3628-157a-aae7-bdb9_20220607074610.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_48e9-81ad-6a71-f99e-59ac-453b-18a6-0ea6_20220607074615.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_1ded-d98e-79e4-71de-85b0-2012-17d8-4c6b_20220607074622.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_f206-14dc-232e-148d-5998-f3cf-c676-01e1_20220607074625.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_4f7b-b6e3-54cb-cf48-71be-2296-a91b-69ef_20220607074629.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_0949-721a-f3c5-99af-6fa7-0aeb-b124-e6b2_20220607074633.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_9df6-a434-c8ec-4e9b-1541-62fd-5d1b-1225_20220607074637.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_59b8-3828-c146-8258-c655-b405-fedf-5a29_20220607074644.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_a3f5-c726-84f1-9968-1697-7977-24dd-6cfc_20220607074647.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_7cc9-ae82-bdfc-f0cd-7e82-0cb9-9e9a-2d91_20220607074651.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_224c-74a6-0f1d-df6a-d1ec-72d0-0b71-5521_20220607074702.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_c3af-fe1a-6053-76b3-0453-467b-78cf-7909_20220607074706.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_0757-a01c-32d7-8e1d-9ea9-177d-6a39-2432_20220607074717.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_8f3e-f8fb-6e41-205c-f099-9819-d681-c9ec_20220607074713.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_9ecf-d3d6-23cf-45c9-eda9-fd68-d627-11c8_20220607074720.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_694b-15d1-a6bf-2361-dba6-f607-f8b4-c908_20220607074723.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_ea33-8bdf-e15b-b9cb-9c9e-a593-b56b-dd38_20220607074727.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_1f38-4a51-a4c5-fe1c-16cc-9c94-ba1d-ee25_20220607074730.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/230/listings/3328689/images/20-Roxborough-Street_0a67-1d2c-97dd-d8dc-0ea9-10ab-2f7f-01fc_20220607074741.jpg',
      ],
      bedrooms: 4,
      bathrooms: 2,
      garage: 2,
      amount: 650000,
      description:
          'You will be impressed with this 290m2 (approx) family home set on a immaculate great sized section with generous double garage, workshop, storage and additional space for the boat, camper, caravan, you decide. All located on in a quiet cul-de-sac of a popular Timaru suburb.Homes of this size and quality don\'t come on the market everyday. \n- Double glazing, heatpump, insulation, \n- Barrett kitchen with walk-in pantry, quality appliances including Induction cooktop, Pyrolytic oven and microwave combi oven, \n - Four bedroom with the master bedroom and modern, stylish ensuite, family bathroom with spa bath and separate toilet The lower level houses a large double garage, laundry, toilet and the additional room leading onto a private outside area. This house was built with functionality in mind and the current owners had added value with a top notch renovation to make it a home one not to let slip by.',
      kitchens: 2,
      sqm: 290,
      openTime: '09 June, 5:00 pm - 5:45 pm',
      saleTime: '28 June, 4:00 pm',
      contactDetails: [3, 4],
    ),
    House(
      id: 4,
      name: 'Waimakariri, Canterbury 7400',
      location: '37 Koura Drive, Rangiora',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1774_97bd-4a9b-130d-a30a-3f9b-6125-e6e9-0774_20220607084409.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1779_7e21-6b68-146e-9154-dd08-d04b-0ed2-c88e_20220607084510.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1759_1525-0f16-e916-123c-45cd-7e1b-abfd-afe9_20220607084402.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1835_44a8-dd8d-90c6-d4f1-217c-e37e-563d-72ed_20220607084002.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1840_6b15-1ed3-11df-14c7-6217-3053-3362-1bd1_20220607084007.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1850_7f4e-31df-6970-2425-b12d-482d-27d8-a0df_20220607084017.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1863-1_22cf-c8f0-2e1b-f40a-fc39-45a7-c546-2827_20220607084022.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1820_c8df-eb00-437f-b4dd-4cff-c108-31a3-88dd_20220607083956.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1880_2430-2746-9a66-3c93-6055-e405-bbfc-b556_20220607084040.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1885_6dc6-66b4-f2e0-221e-1c2d-a0e8-19cc-5c09_20220607084045.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1890_06eb-7c46-bc31-0809-8873-5f82-09fc-72d3_20220607084050.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1894_0098-bbc6-f309-632b-33b8-c32e-c0de-6d77_20220607084055.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1899_a3d0-c877-0bc2-94b7-5896-4696-16df-0a54_20220607084100.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1915_1c75-eed7-3a10-19f2-54e1-965a-cb5b-c24d_20220607084111.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1910_90fd-72b5-88a1-4a35-4ebb-8880-c723-d32e_20220607084106.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1805_db4a-3f23-c356-4f2d-20b8-d43a-ed67-a852_20220607083944.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1790_defb-270d-031e-6ede-cfb7-c601-7808-d7a7_20220607083931.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1809_f576-7722-4a0a-00a3-10dc-f6a7-fb10-e53c_20220607083950.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1799_1bc3-796b-e0c8-55b6-7910-4b54-79a4-7928_20220607083936.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1784_aa5e-0515-3213-c02a-47fe-12cf-782c-3276_20220607083924.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DJI_0009_65ee-2126-a2d7-f751-a9e3-69e9-3e65-d0f8_20220607083823.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DJI_0022_1ed7-665a-61e0-f98c-be07-b741-6be1-ff7e_20220607083857.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DJI_0016_ac81-4f0d-a399-cee4-a872-809a-d2c7-13e4_20220607083849.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1774-1_e645-6272-d79d-7155-f33d-c72f-f644-32d4_20220607083913.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1774_97bd-4a9b-130d-a30a-3f9b-6125-e6e9-0774_20220607084409.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1779_7e21-6b68-146e-9154-dd08-d04b-0ed2-c88e_20220607084510.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1759_1525-0f16-e916-123c-45cd-7e1b-abfd-afe9_20220607084402.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1835_44a8-dd8d-90c6-d4f1-217c-e37e-563d-72ed_20220607084002.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1840_6b15-1ed3-11df-14c7-6217-3053-3362-1bd1_20220607084007.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1850_7f4e-31df-6970-2425-b12d-482d-27d8-a0df_20220607084017.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3319706/images/DSC_1863-1_22cf-c8f0-2e1b-f40a-fc39-45a7-c546-2827_20220607084022.jpg',
      ],
      bedrooms: 3,
      bathrooms: 2,
      garage: 2,
      amount: 50000,
      description:
          'Close to every amenity you could ever wish for but a world away from the hustle and bustle of modern life, this wonderful property is presented to the market by owners who have taken considerable pride in their home. Intelligently designed and constructed to the highest of standards, the home features three generously proportioned bedrooms, (master with ensuite and walk-in-robe) and a well-appointed family bathroom. A modern kitchen equipped with all the bells and whistles including a walk-in pantry is complemented by a versatile open-plan living area, with both a log burner and heat pump for year-round comfort. Throughout the home, the specifications are a clear step above, including ten solar panels and smudge-proof cabinetry. Outside, the low maintenance, northwest facing section is fully-fenced and is perfect for both children and pets. The patio is a great place to relax and unwind with friends and loved ones, while the double garage and the sturdy garden shed ensure there\'s room for all the toys. On the boundary is a grass reserve, perfect for the kids to kick a ball around while the family can keep watch from the comfort of their home. The property is surrounded by other quality homes in a community renowned for being both friendly and safe. With a bevy of shops, cafes and quality schools in the Rangiora township nearby, it will surely tick the boxes',
      kitchens: 2,
      sqm: 177,
      openTime: '12 June, 11:00 am - 11:45 am',
      saleTime: '29 June, 6:00 pm',
      contactDetails: [5, 6],
    ),
    House(
      id: 5,
      name: 'Christchurch City, Canterbury 8022',
      location: '13 Curries Road, Hillsborough',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2922_c3e5-047d-159a-19d6-09ff-9979-be84-19c9_20220607124559.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2827_6102-c1cf-4fab-9131-fe93-1d29-aafb-8e29_20220607124722.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2827_6102-c1cf-4fab-9131-fe93-1d29-aafb-8e29_20220607124722.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2832_7f26-6e9b-6b8a-eec1-e977-c0a0-49ac-afb1_20220607124750.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2842_e529-cfc2-0c2c-9873-5ff2-1080-fc35-70f1_20220607124806.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2867_463a-3a0d-a924-1d15-2e7e-347d-f0cf-3794_20220607124924.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2887_86ec-1cba-f377-5d7f-38ea-9b66-1a81-d34a_20220607125039.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2872_a552-584c-2cad-dfeb-ce3b-bd75-0899-7c37_20220607125012.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2881_343d-f9b5-12bc-3904-b3b8-be52-79fa-9b47_20220607125026.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2891_c8e1-f8de-b21d-787e-1f93-8a67-1d61-50cd_20220607125054.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2901_9c98-ec41-5168-2806-69db-6609-4c9d-3d93_20220607125107.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2911_dfec-84d7-d26b-1252-bdce-a941-1b15-3c39_20220607125136.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2906_f44c-1ba2-3887-b862-6f72-308e-6d22-d541_20220607125121.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2852_e654-2119-819f-7606-e93f-c128-3210-71b6_20220607124824.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2857_1abe-5cfd-794c-a120-dc67-ce1f-57f1-6c2c_20220607124840.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2862_50a8-58ea-cf6e-397a-5c7f-6b43-a182-7cdf_20220607124905.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2916_2b6b-85d0-4829-7088-dcb8-192d-e58d-7067_20220607125151.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/listings/3304582/images/DSC_2930_06d8-2688-6080-0b40-69f6-9dad-bec2-ee50_20220607124606.jpg',
      ],
      bedrooms: 2,
      bathrooms: 1,
      garage: 5,
      amount: 590000,
      description:
          'To register your interest for this property and receive additional documents for the property please copy and paste the following into your web browser, then click on Request Property Documents: https://www.mikepero.com/RX3304582 Did someone say \'Five Car Garaging\'? Yes, you read that right .... FIVE car garaging ....! Imagine all the space here for cars, toys, tools, the trailer/jet ski/boat, the \'man cave\' or \'she shed\' .. you name it you\'ll probably have room for it here! Aside from the awesome garage, this redecorated, 2 double bedroom property is versatile and feature packed throughout. Separate living, fully fenced section, heat pump (plus underfloor heating in some areas), separate laundry and separate toilet, all adding to the functionality and live-ability of this wonderful home. Just move in and plan your future, with the bonus of scope to improve further and add value to your investment here. Situated in such a great location close to nearby popular walking tracks and The Tannery with its boutique shops and eateries. Don\'t wait, this property is seriously for sale and will be sold!',
      kitchens: 3,
      sqm: 100,
      openTime: '12 June, 11:00 am - 11:30 am',
      saleTime: '29 June, 2:00 pm',
      contactDetails: [7],
    ),
    House(
      id: 6,
      name: 'Gore, Southland 9710',
      location: '134 Whiterig Road, Gore',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/1_2477-45ba-a8c9-f096-c467-1a79-4e7f-f27a_20220608080128.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/2_37e1-805b-c605-6e4e-4518-05b7-18c5-ddbc_20220608080148.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/3_3d2b-5157-875d-0383-366c-44a4-b219-19eb_20220608080222.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/5_12f8-71da-7e58-5b5a-88bf-7e70-725a-99e5_20220608080236.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/6_bcbd-bbd5-66c6-7fd6-bbe6-05fc-a3d9-a63c_20220608080240.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/8_3bcf-ff0d-cea0-d620-3762-3790-534d-4397_20220608080247.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/9_e276-7b94-fead-42d9-e16e-130e-0749-f9c0_20220608080251.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/10_f4a4-7e93-8919-41e1-b057-33bd-646f-17bc_20220608080254.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/11_46a7-639b-b3ed-4fd2-d05c-7a5a-b05d-c9e0_20220608080257.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/12_acd4-2759-c569-2728-ae5a-1695-b080-1619_20220608080300.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/13_dce8-e7e4-b16a-51c4-9f78-9dae-6781-e9ab_20220608080303.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/14_bd41-a928-c060-455e-52ef-69e9-1740-a8fb_20220608080306.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/15_8f07-2bd5-4b20-3020-fba9-bf47-e551-7155_20220608080309.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/16_044a-010d-5f55-06d1-a99d-ae9f-72a0-6fa4_20220608080313.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3329810/images/17_b233-ae5f-7bc7-2cbc-9227-19a2-21f2-125d_20220608080316.jpg',
      ],
      bedrooms: 4,
      bathrooms: 1,
      garage: 2,
      amount: 90000,
      description:
          'A large, solid built, family home on 2 hectares (approx.) of land with a shed. What more could you ask for? Well, this property is all of these things and plenty more.The 1980???s built split block home has space for the whole family with a large modern kitchen that has ample storage and is open to the dining and living areas. There are two sunny living areas, both with views towards the Hokonui Hills, as well as four double bedrooms, all with built in wardrobes. The home is warm and cosy with diesel central heating and situated to catch all day sun.The gently sloping land is divided into 4 paddocks with small sheep yards for easy stock handling. The sheds are conveniently tucked away out of sight so you can tinker away to your hearts content! This property has so much to offer so why not come and see it in person.',
      kitchens: 2,
      sqm: 270,
      openTime: '09 June, 12:00 pm - 12:30 pm',
      saleTime: '',
      contactDetails: [8],
    ),
    House(
      id: 7,
      name: 'Christchurch City, Canterbury 8022',
      location: '38 Colombo Street, Cashmere',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7252_501d-35f1-82fb-eea6-fe07-540f-8c75-d47c_20220602095951.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7243_538d-b856-b2e5-dcd8-37dd-5159-025a-1f74_20220602095942.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7254-HDR_fa33-5f58-2940-4b4d-219a-0b3a-1b61-7816_20220602095954.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7260_3bef-6ee9-283a-bbb2-cc38-88c1-c7e7-d406_20220602100004.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7198-HDR_023f-9043-15c9-3995-18fe-ed68-2b51-67cc_20220602095903.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7194_e35b-4c8a-e914-1931-dd69-0f88-46eb-baca_20220602095858.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7194_e35b-4c8a-e914-1931-dd69-0f88-46eb-baca_20220602095858.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7214_494a-53cd-9b3e-787a-5649-34ea-8827-ce76_20220602095916.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7203_00c3-98fb-7855-bc35-4c29-4d44-082e-a9a0_20220602095907.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7205-HDR_f019-ceb0-9dc6-a7aa-86ba-b72b-f19f-0fe6_20220602095912.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7232_d50e-2538-44d6-4bc5-a81e-db56-34fb-2362_20220602095934.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7236_b3fe-902e-4a9c-2ad6-f9d1-9744-aa34-51a3_20220602095938.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7167_6433-c09c-4d8a-2e06-16ce-ec3b-6e5b-9efd_20220602095815.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7171-HDR_b90d-6e55-98c7-5142-281a-4f78-3ddf-b975_20220602095823.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7163-HDR_e920-d693-453d-730e-2e3c-d2fd-2f2e-a3ce_20220602095810.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7153-HDR_7899-2174-feb2-f04e-53b7-22b1-03ac-96c5_20220602095758.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7176_a3b1-4556-78ca-8ed1-87ad-02e6-7ad2-6cc0_20220602095829.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/IMG_7185_f480-ff4b-e5d7-6ef5-6fec-7533-e5ea-73fb_20220602095842.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/listings/3313840/images/DJI_0770-p_a53d-3778-432f-54de-0e19-f6f2-f218-1bc3_20220602095742.jpg'
      ],
      bedrooms: 3,
      bathrooms: 1,
      garage: 2,
      amount: 90000,
      description:
          'This family friendly character home has been architecturally reconfigured and modernised and features three, could be four, bedrooms plus tandem garaging. Double glazed, fully insulated plus three heat pumps - that certainly makes hot summers and cold winters all the more manageable.Spacious open plan kitchen dining and lounge are interconnecting to a sun filled conservatory (yes, this is double glazed too) with excellent views out to the hills. The bathroom is fully tiled and modern, separate laundry, and the added convenience of an additional separate toilet.This home has an award winning garden at the back of the property featuring raised vegetable beds on a nicely designed lawn. Private and sunny, it\'s a lovely retreat to enjoy and utilise the opportunities presented. This home is currently used as a work from home base, it has a separate entrance and foyer area, the office work space area is extra large and there is additional separate parking spaces for clients. This one will suit those who like to walk and enjoy their neighborhood. Thorrington Primary, Cashmere High, nearby shops, cafes and restaurants, plus the river, the hills - all within walking distance. Town is but a bus ride, bike or short drive up Colombo Street',
      kitchens: 2,
      sqm: 270,
      openTime: '09 June, 12:00 pm - 12:30 pm',
      saleTime: '',
      contactDetails: [9, 8],
    ),
    House(
      id: 8,
      name: 'North Shore City, Auckland 0627',
      location: '18 Raeben Avenue, Hillcrest',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7411_942d-12a4-b851-ec97-361d-6bd0-f7b5-c856_20220602084702.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7284_40c7-3e20-f79f-ce8e-d7d5-5eed-a2a8-c291_20220602084628.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7343_4402-d05b-4c93-0ff1-cc59-a97c-8c30-d97a_20220602084644.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/jels_3e7a-7b4f-c837-5957-a62f-efdc-9e80-b83a_20220602090136.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/jels-4_911b-8b13-2b50-494f-679a-bbc6-c743-2dc8_20220602090132.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7268_21ec-30d4-6dde-d6d6-9a33-ba6b-4983-f805_20220602084625.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7292_8a3d-ba48-3166-6b1a-eb4f-6705-2686-055c_20220602084631.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7315_bcf1-7a44-5d5e-5d51-5d6d-2600-ebfb-2ce9_20220602084633.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7323_d353-7d32-36b1-f9b3-c49d-8a84-1493-6f14_20220602084636.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7367_ee4a-d5cb-85b3-d188-34c6-8aec-a46d-2950_20220602084646.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7330_bbb5-41e4-ba66-3c55-f091-76c4-8a1c-c46a_20220602084639.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7336_4dea-2947-87ac-7ddd-7792-6737-0a55-f87b_20220602084642.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7243_8259-1126-0928-2444-d7a4-de0c-2b63-653d_20220602084618.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7251_8fee-7312-6214-5c61-a098-3444-aef8-5ba8_20220602084620.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7237_b139-d302-e7fe-c961-16cf-50d1-b263-a289_20220602084615.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7376_3f86-e340-20a5-6ada-1323-0474-5c34-9e60_20220602084649.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7393_6d3c-8ba1-7c98-c832-5b77-f6c6-7e1e-a9b4_20220602084656.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7382_229b-dc54-f1ad-acb1-e0ef-41b5-00c4-51b5_20220602084651.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7401_463d-e232-9457-4868-5d00-363b-cc2a-09fd_20220602084659.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/listings/3317256/images/IMG_7203_7dd2-dfe8-a0d5-bb5d-8179-4926-9ab6-d5af_20220602084611.jpg',
      ],
      bedrooms: 3,
      bathrooms: 2,
      garage: 1,
      amount: 190000,
      description:
          'This family friendly character home has been architecturally reconfigured and modernised and features three, could be four, bedrooms plus tandem garaging. Double glazed, fully insulated plus three heat pumps - that certainly makes hot summers and cold winters all the more manageable.Spacious open plan kitchen dining and lounge are interconnecting to a sun filled conservatory (yes, this is double glazed too) with excellent views out to the hills. The bathroom is fully tiled and modern, separate laundry, and the added convenience of an additional separate toilet.This home has an award winning garden at the back of the property featuring raised vegetable beds on a nicely designed lawn. Private and sunny, it\'s a lovely retreat to enjoy and utilise the opportunities presented. This home is currently used as a work from home base, it has a separate entrance and foyer area, the office work space area is extra large and there is additional separate parking spaces for clients. This one will suit those who like to walk and enjoy their neighborhood. Thorrington Primary, Cashmere High, nearby shops, cafes and restaurants, plus the river, the hills - all within walking distance. Town is but a bus ride, bike or short drive up Colombo Street',
      kitchens: 3,
      sqm: 128,
      openTime: '11 June, 2:00 pm - 2:30 pm',
      saleTime: '19 June, 3:30 pm',
      contactDetails: [11],
    ),
    House(
      id: 9,
      name: 'Invercargill City, Southland 9810',
      location: '8 Barker Place, Waikiwi',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/Untitled-design-3-_52fa-43fa-6fbd-f63f-ddb0-fdb2-7ede-1e2c_20220601071132.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_c282-c3bc-37d7-6e00-5950-54c0-f10e-45be_20220601062014.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_04d6-aab2-ee60-2679-f6e0-4203-fc6f-5243_20220601062035.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/44275070_d03d-9db4-712e-10e8-bca6-f22d-a2e1-419a_20220602120527.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_cb16-830b-3e2b-9a96-c03f-c0f0-e84f-f1e8_20220601062038.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_82ce-3adb-7a53-86c1-7860-0287-60d8-62b7_20220601062040.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_764d-044a-acc1-c485-f561-9ec2-1680-995d_20220601062044.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_177b-d0d5-d932-4550-9597-3f4a-dfd3-162a_20220601062051.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_accb-9886-62c0-82d3-0224-c696-3790-3e6f_20220601062055.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_cca0-0ca4-1c19-3c3f-e8fb-e56f-63cd-bf41_20220601062058.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_6059-aa9f-ea5e-e889-7fb8-e511-309a-b720_20220601062048.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_845d-d5c6-2cdc-e247-c4c3-a21e-d2d9-b877_20220601062003.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_9ce6-5ccd-fa83-fc05-b317-fa70-0204-31e7_20220601062032.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_a516-5c8f-a75d-33f9-ac3e-7c6d-ad57-31cc_20220601062027.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_5a60-b1b5-b6cc-ef2d-22e2-b4b2-57d8-5304_20220601062159.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_d2ae-47ba-0822-cc12-fd85-3df6-cb1d-bf27_20220601062211.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/listings/3311896/images/8_BarkerPlace_Northw_109a-55a2-885b-7ad9-9a4e-3bd3-1490-6e84_20220601062218.jpg',
      ],
      bedrooms: 4,
      bathrooms: 2,
      garage: 2,
      amount: 110000,
      description:
          'I present to the market this soon to be completed, beautifully built family home in one of Invercargill\'s most popular areas. The design has been carefully curated with the concept of space factored in, leaving no wasted space within the home and utilizing each area with family living in mind. This four-bedroom, two-bathroom home also features a spacious kitchen with scullery and open plan dining and living. North facing mean all day sun throughout this area. Throughout the home, modern design elements that will set this home apart from the rest include A bulkhead ceiling in the kitchen, dining & living, adding in extra height for that luxurious feel and on the exterior cladding, a mixture of vertical James Hardie Linea and horizontal Larch Shiplap Weatherboard, a real head turner. The home is Insulated well and heated with a Daiken Ducted Heat Pump. Double car internal garaging really finishes it off. For more information on completion date, and full specification, Hit the enquiry button, however to really appreciate what this home has to offer, Come and see it in person.',
      kitchens: 3,
      sqm: 190,
      openTime: '',
      saleTime: '',
      contactDetails: [12],
    ),
    House(
      id: 10,
      name: 'Central Otago, Central Otago',
      location: '6 Dawson Place, Alexandra',
      imgUrls: [
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_6dfc-edce-16d4-6de4-d92c-d59f-fe02-5002_20220526090337.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_6f9e-411f-839c-b227-ad8f-028a-520a-72b4_20220526085938.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_b52c-7645-54da-74c5-f16a-453e-96df-3aa5_20220526090044.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_7939-9463-d6de-04fe-a6da-5aa1-8de9-cdda_20220526090037.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_c11e-0793-6ace-167d-f177-3010-3a99-f137_20220526090051.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_b898-55e9-8a45-ab7e-c961-6cf7-07d5-e780_20220526090018.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_56ad-531d-be5b-1db5-c6e3-7aa6-d997-2f30_20220526090028.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_98a1-a0a7-2b37-87a0-15f0-a62c-66dd-0e68_20220526085954.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_16f0-3795-6a47-32b2-5159-ae44-8c11-5f5b_20220526085945.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_7012-a44d-60dc-337a-c622-1db8-3c67-aa22_20220526090003.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_8dd6-cf25-7515-5f8e-8a26-ef32-2548-f471_20220526090012.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_5c5d-7151-d18c-f805-33be-9d80-bcc9-44c2_20220526090117.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_9d0f-9df2-22f8-2c00-b900-c310-0266-3a85_20220526090107.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_a7f7-e563-15ed-e5a7-2a13-30aa-de34-cb02_20220526090100.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_deb3-ed69-8577-8634-ab4b-62bb-0f83-c11c_20220526090125.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_b5b6-dbe6-b517-5039-92b2-3cc0-d17f-e261_20220526090152.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_fb99-6e6b-1a19-d176-9430-e469-aa53-162f_20220526090228.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_2834-06a3-d2da-f2fa-50ac-e5b1-582f-cce4_20220526090219.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_dcb8-b5a4-4f60-3f1a-ded0-6a2a-6c0a-45cd_20220526090159.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_a7ab-13a6-0ac3-0efd-73fa-ba94-37d0-b1f7_20220526090209.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/44127114_1a81-fa71-1565-b580-3033-bd4a-a1cf-a090_20220526105446.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/5_fa23-6676-e2fb-26e2-3bdb-0dfd-60d2-0bf5_20220526085903.jpg',
        'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/listings/3311825/images/6Dawson_placeAlexand_184f-640d-47a4-4ced-bf39-bd0d-82d3-8e34_20220526090304.jpg'
      ],
      bedrooms: 5,
      bathrooms: 2,
      garage: 1,
      amount: 110000,
      description:
          'If your family is growing then this 2 storey, 5 bedroom family home is a must see. Ticking all the boxes, this home offers up 2 bathrooms, one up, one down (and wheelchair accessible). The downstairs also has 2 double bedrooms, a large open plan living & dining, and a near new kitchen with butlers pantry which really sets it apart from the rest. Upstairs you will find another 3 double bedrooms and a second family bathroom. The master also offers a great sized walk in wardrobe, as well as wardrobes w/- shelving in all bedrooms. The home boasts great heating options which includes a fireplace and heat pump as well as the home being mostly double glazed. The owners have tastefully renovated the home throughout and it is time for one lucky family to come and enjoy their hard work.The section is low maintenance, private and fully fenced, perfect for kids and pets. Also, don\'t forget about the amazing views of the "Old Man" that you can see from many rooms of the home. It is the cherry on top of a fantastic opportunity.',
      kitchens: 2,
      sqm: 186,
      openTime: '12 June, 1:00 pm - 1:30 pm',
      saleTime: '17 June, 12:00 pm',
      contactDetails: [12, 13],
    ),
  ];
}
