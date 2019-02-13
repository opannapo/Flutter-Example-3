# Flutter Example [3]

### Whats New : 
- Hero Transition 
- Advanced JSON Parsing 
- ListView Multiple View Types 

### Included :
- Pull to Refresh { liquid_pull_to_refresh } 
- List { Action Click, LoadMore, Infinite Scroll, Footer } 
- HTTP request 
- Json Parsing


# Output : 
https://www.youtube.com/watch?v=mMPCD84t4jY

<a href="https://www.youtube.com/embed/zBGmVRNHBCo" target="_blank"><img src="https://img.youtube.com/vi/mMPCD84t4jY/maxresdefault.jpg" 
alt="IMAGE ALT TEXT HERE" width="50%" height="50%" border="10" /></a>
 
 
# Point
- Hero Transition 
- Advanced JSON Parsing 
- ListView Multiple View Types 
- Pull to Refresh -> liquid_pull_to_refresh
- List -> Action Click
- AppBar
- List Footer 
- Abstraction ViewCallback 

 
### Dependencies
- flutter sdk
- cupertino_icons
- liquid_pull_to_refresh
- http
- intl

 
### JSON Parsing on (User Detail)
http://myjson.com/18mreu

```JSON
{
  "data": {
    "items": [
      {
        "people": [
          {
            "id": 1,
            "name": "OpannapO",
            "bio": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            "followers": 190000,
            "following": 534,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx0DOG3UKeI0HmmOnZwXdaLgDJgKoF8VytFhETadeA2B-CqfW2",
            "address": {
              "address": "Jl.Jakarta Pusat",
              "city": "Jakarta",
              "region": "Jakarta Selatan",
              "area": "Menteng"
            }
          },
          {
            "id": 9,
            "name": "Moh Salah",
            "bio": "Id semper risus in hendrerit gravida. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum.",
            "followers": 19120,
            "following": 630,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqp6q6VzGguhZtBVZT56OrVtVOLkszFaKFq_wEkySLLLkjXZVgzw",
            "address": {
              "address": "Jl.Kuat Punya",
              "city": "Palembang",
              "region": "Lubuk Linggau",
              "area": "Sumatera Selatan"
            }
          },
          {
            "id": 2,
            "name": "Devo Ove",
            "bio": "Scelerisque mauris pellentesque pulvinar pellentesque habitant.",
            "followers": 100,
            "following": 10000,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSEHmTiz5qG763wtGhndUiepqFHFnM6p2yo9OPhbHGpnDS0hNV",
            "address": {
              "address": "Jl.Indonesia Raya",
              "city": "Jakarta",
              "region": "Jakarta Timur",
              "area": "Bekasi"
            }
          },
          {
            "id": 3,
            "name": "Tia Putri",
            "bio": "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            "followers": 120000,
            "following": 1000,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGsNRX2WRXZFgGV9t60roY-AS3jB1WM8wZmDaVOhb7N0fTL3KnTw",
            "address": {
              "address": "Jl.Boneka Jaya",
              "city": "Bekasi",
              "region": "Bekasi Timur",
              "area": "Tambun"
            }
          },
          {
            "id": 4,
            "name": "Dea Ina",
            "bio": "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
            "followers": 120000,
            "following": 70900,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu3zEvhAk-p8J0986ySj9QLjIpypjKUm8K8cdUFP7cm6Bk4HGE",
            "address": {
              "address": "Jl.Boneka Jaya",
              "city": "Bekasi",
              "region": "Bekasi Timur",
              "area": "Tambun"
            }
          },
          {
            "id": 5,
            "name": "Deca Ina",
            "bio": "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.",
            "followers": 520,
            "following": 790,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlG1gW6IsxT0TDFxkr5dP98k90ijAOo_eMr7LmGQaglSXxzWUwjw",
            "address": {
              "address": "Jl.Perkasa Punya",
              "city": "Bengkulu",
              "region": "Bengkulu",
              "area": "Bengkulu"
            }
          },
          {
            "id": 6,
            "name": "Derakulana",
            "bio": "Tellus id interdum velit laoreet id donec ultrices tincidunt arcu.",
            "followers": 120,
            "following": 630,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu3zEvhAk-p8J0986ySj9QLjIpypjKUm8K8cdUFP7cm6Bk4HGE",
            "address": {
              "address": "Jl.Lembek Punya",
              "city": "Palembang",
              "region": "Lubuk Linggau",
              "area": "Sumatera Selatan"
            }
          },
          {
            "id": 7,
            "name": "Pelukis",
            "bio": "Potenti nullam ac tortor vitae purus. Euismod in pellentesque massa placerat duis ultricies lacus.",
            "followers": 120,
            "following": 630,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs9xHKr26ZX2IDqqlKoka_ddHXBGlF-8PEZQESOTo-ghhjQjwlug",
            "address": {
              "address": "Jl.Lembek Punya",
              "city": "Palembang",
              "region": "Lubuk Linggau",
              "area": "Sumatera Selatan"
            }
          },
          {
            "id": 8,
            "name": "Hitamputih",
            "bio": "Potenti nullam ac tortor vitae purus. Euismod in pellentesque massa placerat duis ultricies lacus.",
            "followers": 120,
            "following": 630,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSubSeTZCPYQ2FjqCJGdPHVUJivFqBKVBVuIblGoWs6iTB-X3t1",
            "address": {
              "address": "Jl.Lembek Punya",
              "city": "Palembang",
              "region": "Lubuk Linggau",
              "area": "Sumatera Selatan"
            }
          },
          {
            "id": 10,
            "name": "Tebak Siapa",
            "bio": "Placerat orci nulla pellentesque dignissim enim. Mauris a diam maecenas sed enim ut sem viverra aliquet.",
            "followers": 110,
            "following": 830,
            "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd8zn4yigldwEVLdwFOSiTbTNucI8RTmPPDeLQP5D7KDWVtaNWCQ",
            "address": {
              "address": "Jl.Gajebo",
              "city": "Bandung",
              "region": "Lubukanai",
              "area": "Merpati"
            }
          }
        ]
      },
      {
        "id": 1,
        "name": "Pempek Bakar",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "price": 100000,
        "image": "https://www.pegipegi.com/travel/wp-content/uploads/2017/08/1633556_3b67e953-8c80-4ede-87b6-dbf5e0bf8063-450x270.jpg"
      },
      {
        "id": 2,
        "name": "Soto Betawi",
        "desc": "Sed blandit libero volutpat sed cras ornare arcu dui. Eu augue ut lectus arcu bibendum at varius vel pharetra. Donec ultrices tincidunt arcu non sodales neque. In hac habitasse platea dictumst vestibulum rhoncus est. Placerat orci nulla pellentesque dignissim enim. Mauris a diam maecenas sed enim ut sem viverra aliquet. Etiam erat velit scelerisque in dictum non consectetur a erat. Semper auctor neque vitae tempus quam pellentesque nec. Potenti nullam ac tortor vitae purus. Euismod in pellentesque massa placerat duis ultricies lacus. Non arcu risus quis varius. Nisl suscipit adipiscing bibendum est ultricies. Id semper risus in hendrerit gravida. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum.",
        "price": 15000,
        "image": "https://i1.wp.com/resepkoki.id/wp-content/uploads/2016/04/Resep-Soto-Betawi.jpg?fit=1453%2C1082&ssl=1"
      },
      {
        "id": 3,
        "name": "Es campur neneng",
        "desc": "Id venenatis a condimentum vitae sapien. Elit eget gravida cum sociis natoque penatibus. Lectus urna duis convallis convallis tellus id interdum velit laoreet. Tempor commodo ullamcorper a lacus vestibulum sed. Tortor dignissim convallis aenean et. Purus ut faucibus pulvinar elementum integer. Lobortis feugiat vivamus at augue. Potenti nullam ac tortor vitae. Cras fermentum odio eu feugiat pretium nibh. Nisi lacus sed viverra tellus in hac habitasse platea. Tellus id interdum velit laoreet id donec ultrices tincidunt arcu.",
        "price": 9000,
        "image": "https://cdn.idntimes.com/content-images/post/20180605/f2a74c20881067768d6969fce768fc63_600x400.jpg"
      },
      {
        "recommend": [
          {
            "id": 1,
            "name": "Pempek Bakar",
            "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            "price": 100000,
            "image": "https://www.pegipegi.com/travel/wp-content/uploads/2017/08/1633556_3b67e953-8c80-4ede-87b6-dbf5e0bf8063-450x270.jpg"
          },
          {
            "id": 2,
            "name": "Soto Betawi",
            "desc": "Sed blandit libero volutpat sed cras ornare arcu dui. Eu augue ut lectus arcu bibendum at varius vel pharetra. Donec ultrices tincidunt arcu non sodales neque. In hac habitasse platea dictumst vestibulum rhoncus est. Placerat orci nulla pellentesque dignissim enim. Mauris a diam maecenas sed enim ut sem viverra aliquet. Etiam erat velit scelerisque in dictum non consectetur a erat. Semper auctor neque vitae tempus quam pellentesque nec. Potenti nullam ac tortor vitae purus. Euismod in pellentesque massa placerat duis ultricies lacus. Non arcu risus quis varius. Nisl suscipit adipiscing bibendum est ultricies. Id semper risus in hendrerit gravida. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum.",
            "price": 15000,
            "image": "https://i1.wp.com/resepkoki.id/wp-content/uploads/2016/04/Resep-Soto-Betawi.jpg?fit=1453%2C1082&ssl=1"
          },
          {
            "id": 3,
            "name": "Es campur neneng",
            "desc": "Id venenatis a condimentum vitae sapien. Elit eget gravida cum sociis natoque penatibus. Lectus urna duis convallis convallis tellus id interdum velit laoreet. Tempor commodo ullamcorper a lacus vestibulum sed. Tortor dignissim convallis aenean et. Purus ut faucibus pulvinar elementum integer. Lobortis feugiat vivamus at augue. Potenti nullam ac tortor vitae. Cras fermentum odio eu feugiat pretium nibh. Nisi lacus sed viverra tellus in hac habitasse platea. Tellus id interdum velit laoreet id donec ultrices tincidunt arcu.",
            "price": 9000,
            "image": "https://cdn.idntimes.com/content-images/post/20180605/f2a74c20881067768d6969fce768fc63_600x400.jpg"
          },
          {
            "id": 4,
            "name": "Bakso Perkasa",
            "desc": "Vel pharetra vel turpis nunc eget lorem dolor sed. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Volutpat consequat mauris nunc congue nisi vitae suscipit. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Tellus id interdum velit laoreet. Non enim praesent elementum facilisis leo vel fringilla. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. At tempor commodo ullamcorper a lacus vestibulum sed arcu. In nisl nisi scelerisque eu ultrices vitae auctor. At augue eget arcu dictum varius. Nec dui nunc mattis enim ut. Mauris rhoncus aenean vel elit scelerisque mauris. Non quam lacus suspendisse faucibus interdum. Tristique senectus et netus et malesuada fames ac. Elit pellentesque habitant morbi tristique. Facilisis mauris sit amet massa.",
            "price": 11000,
            "image": "https://doyanresep.com/wp-content/uploads/2017/12/resep-bakso-beranak-homemade.jpg"
          },
          {
            "id": 5,
            "name": "Sate Padang",
            "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            "price": 21000,
            "image": "https://img-global.cpcdn.com/003_recipes/2009280_f6b8c211a117ea04/751x532cq70/photo.jpg"
          }
        ]
      },
      {
        "id": 4,
        "name": "Bakso Perkasa",
        "desc": "Vel pharetra vel turpis nunc eget lorem dolor sed. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Volutpat consequat mauris nunc congue nisi vitae suscipit. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Tellus id interdum velit laoreet. Non enim praesent elementum facilisis leo vel fringilla. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. At tempor commodo ullamcorper a lacus vestibulum sed arcu. In nisl nisi scelerisque eu ultrices vitae auctor. At augue eget arcu dictum varius. Nec dui nunc mattis enim ut. Mauris rhoncus aenean vel elit scelerisque mauris. Non quam lacus suspendisse faucibus interdum. Tristique senectus et netus et malesuada fames ac. Elit pellentesque habitant morbi tristique. Facilisis mauris sit amet massa.",
        "price": 11000,
        "image": "https://doyanresep.com/wp-content/uploads/2017/12/resep-bakso-beranak-homemade.jpg"
      },
      {
        "id": 5,
        "name": "Sate Padang",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "price": 21000,
        "image": "https://img-global.cpcdn.com/003_recipes/2009280_f6b8c211a117ea04/751x532cq70/photo.jpg"
      },
      {
        "id": 1,
        "name": "Pempek Bakar",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "price": 100000,
        "image": "https://www.pegipegi.com/travel/wp-content/uploads/2017/08/1633556_3b67e953-8c80-4ede-87b6-dbf5e0bf8063-450x270.jpg"
      },
      {
        "id": 2,
        "name": "Soto Betawi",
        "desc": "Sed blandit libero volutpat sed cras ornare arcu dui. Eu augue ut lectus arcu bibendum at varius vel pharetra. Donec ultrices tincidunt arcu non sodales neque. In hac habitasse platea dictumst vestibulum rhoncus est. Placerat orci nulla pellentesque dignissim enim. Mauris a diam maecenas sed enim ut sem viverra aliquet. Etiam erat velit scelerisque in dictum non consectetur a erat. Semper auctor neque vitae tempus quam pellentesque nec. Potenti nullam ac tortor vitae purus. Euismod in pellentesque massa placerat duis ultricies lacus. Non arcu risus quis varius. Nisl suscipit adipiscing bibendum est ultricies. Id semper risus in hendrerit gravida. Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum.",
        "price": 15000,
        "image": "https://i1.wp.com/resepkoki.id/wp-content/uploads/2016/04/Resep-Soto-Betawi.jpg?fit=1453%2C1082&ssl=1"
      },
      {
        "id": 3,
        "name": "Es campur neneng",
        "desc": "Id venenatis a condimentum vitae sapien. Elit eget gravida cum sociis natoque penatibus. Lectus urna duis convallis convallis tellus id interdum velit laoreet. Tempor commodo ullamcorper a lacus vestibulum sed. Tortor dignissim convallis aenean et. Purus ut faucibus pulvinar elementum integer. Lobortis feugiat vivamus at augue. Potenti nullam ac tortor vitae. Cras fermentum odio eu feugiat pretium nibh. Nisi lacus sed viverra tellus in hac habitasse platea. Tellus id interdum velit laoreet id donec ultrices tincidunt arcu.",
        "price": 9000,
        "image": "https://cdn.idntimes.com/content-images/post/20180605/f2a74c20881067768d6969fce768fc63_600x400.jpg"
      },
      {
        "id": 4,
        "name": "Bakso Perkasa",
        "desc": "Vel pharetra vel turpis nunc eget lorem dolor sed. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Volutpat consequat mauris nunc congue nisi vitae suscipit. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Tellus id interdum velit laoreet. Non enim praesent elementum facilisis leo vel fringilla. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. At tempor commodo ullamcorper a lacus vestibulum sed arcu. In nisl nisi scelerisque eu ultrices vitae auctor. At augue eget arcu dictum varius. Nec dui nunc mattis enim ut. Mauris rhoncus aenean vel elit scelerisque mauris. Non quam lacus suspendisse faucibus interdum. Tristique senectus et netus et malesuada fames ac. Elit pellentesque habitant morbi tristique. Facilisis mauris sit amet massa.",
        "price": 11000,
        "image": "https://doyanresep.com/wp-content/uploads/2017/12/resep-bakso-beranak-homemade.jpg"
      },
      {
        "id": 5,
        "name": "Sate Padang",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "price": 21000,
        "image": "https://img-global.cpcdn.com/003_recipes/2009280_f6b8c211a117ea04/751x532cq70/photo.jpg"
      }
    ]
  }
}
```
