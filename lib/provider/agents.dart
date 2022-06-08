import 'package:flutter/cupertino.dart';

import '../model/agent.dart';

class AgentData extends ChangeNotifier {
  Agent findById(id) {
    return agents.firstWhere((agent) => agent.id == id);
  }

  List agents = [
    Agent(
      id: 1,
      name: 'Linda Gaskin',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/account_users/10642/profile_image/Linda-Gaskin-New_fb42-6f33-e9a9-9396-6ea9-1c83-f937-7aeb_20191216120536_200x250.jpg',
      website: 'https://linda-gaskin.mikepero.com',
      position: 'Brand and Territory Owner',
      mobile: '027 416 8159',
    ),
    Agent(
      id: 2,
      name: 'Dave Gaskin',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/689/account_users/14809/profile_image/David-Gaskin_1225238360_20171130115246_200x250.jpg',
      website: 'https://dave-gaskin.mikepero.com',
      position: 'Brand and Territory Owner',
      mobile: '027 516 9668',
    ),
    Agent(
      id: 3,
      name: 'Reg Adam',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/account_users/2007/profile_image/Reg-Adam_2555741318_20171130115404_200x250.jpg',
      website: 'https://reg-adam.mikepero.com',
      position: 'Brand and Territory Owner',
      mobile: '027 278 1500',
    ),
    Agent(
      id: 4,
      name: 'Gena Adam',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/222/account_users/2006/profile_image/Gena-Adam-New_f028-428b-9d2d-8ecf-c45f-11e9-c585-19ac_20201007100707_200x250.jpg',
      website: 'https://gena-adam.mikepero.com',
      position: 'Brand and Territory Owner',
      mobile: '027 278 1400',
    ),
    Agent(
      id: 5,
      name: 'Nick Eschenbach',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/account_users/143594/profile_image/Nick-Eschenbach-crop_1cf4-285c-43c6-bcab-ab18-bf7c-9b1f-7a81_20220531115942_200x250.jpg',
      website: 'https://nick-eschenbach.mikepero.com',
      position: 'Brand and Territory Owner',
      mobile: '027 3035 266',
    ),
    Agent(
      id: 6,
      name: 'Andreas Eschenbach',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/account_users/143596/profile_image/Andreas-Eschenbach_c_452d-b36d-80a3-5e09-1188-d8e9-be32-c269_20220531120729_200x250.jpg',
      website: 'https://andreas-eschenbach.mikepero.com',
      position: 'Licensed Salesperson',
      mobile: '027 485 6963',
    ),
    Agent(
      id: 7,
      name: 'Sahab Hussain',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2962/account_users/79020/profile_image/Sahab-Hussain_1022-f288-80e6-6dfc-845e-54b8-d518-9b93_20210119081746_200x250.jpg',
      website: 'https://sahab-hussain.mikepero.com',
      position: 'Brand and Territory Owner',
      mobile: '027 223 2506',
    ),
    Agent(
      id: 8,
      name: 'Kate Bratschi',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/1723/account_users/143107/profile_image/Kate-Bratschi-croppe_9db1-d93b-3ee4-6fa3-337f-eb17-1a3f-853d_20220531022131_200x250.jpg',
      website: 'https://kate-bratschi.mikepero.com/',
      position: 'Franchise Owner',
      mobile: '027 600 7998',
    ),
    Agent(
      id: 9,
      name: 'Nienke Middleton',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/account_users/8479/profile_image/Nienke-Podmore-New_4c72-6ebd-b88a-65d7-4b24-61af-4e1c-5dab_20200707101903_200x250.jpg',
      website: 'https://nienke-middleton.mikepero.com/',
      position: 'Franchise Owner',
      mobile: '021 067 8568',
    ),
    Agent(
      id: 10,
      name: 'Tanya Robinson',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/238/account_users/127685/profile_image/Tanya-Robinson_6dcc-_248f-f3d9-d0a6-c8c9-01d4-d368-7591-a2e0_20211217060949_200x250.jpg',
      website: 'https://tanya-robinson.mikepero.com/',
      position: 'Licensed Salesperson',
      mobile: '021 106 5526',
    ),
    Agent(
      id: 11,
      name: 'Barry Dobson',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/235/account_users/2039/profile_image/Barry-Dobson_3652722924_20171130111219_200x250.jpg',
      website: 'https://barry-dobson.mikepero.com/',
      position: 'Brand and Territory Owner',
      mobile: '021 452 230',
    ),
    Agent(
      id: 12,
      name: 'Sheree Williams',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/2347/account_users/48540/profile_image/thumbnail_Sheree-Wil_e64e-0bbe-bb3c-a3fa-3cce-d5cb-c598-34de_20211110052930_200x250.jpg',
      website: 'https://sheree-williams.mikepero.com/',
      position: 'Franchise Owner',
      mobile: '027 448 6338',
    ),
    Agent(
      id: 13,
      name: 'Rhys Chamberlain',
      imgUrl:
          'https://d1tc5nu51f8a53.cloudfront.net/app/livestore/accounts/3284/account_users/96044/profile_image/Rhys-Chamberlain_c256-af66-57fd-eada-e832-55cf-5b1b-2981_20210215090639_200x250.jpg',
      website: 'https://rhys-chamberlain.mikepero.com/',
      position: 'Franchise Owner',
      mobile: '027 201 3172',
    )
  ];
}
