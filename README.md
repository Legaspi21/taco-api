# Taco Api
###### Built on RAILS 5
    bundle install
    rake db:migrate && rake db:seed
    rails s
###### Run Tests
    bundle exec rspec
## Deployed to Heroku
[Taco API](https://taco-api.herokuapp.com/tacos)

## Documentation

All items have following properties

Field | Description
------|------------
**id** | The taco's unique id.
title | Menu name of the taco.
description | Savory description of the taco.
price | The tacos integer price in cents.
created_at | Date and time of creation.
updated_at | Date and Time of last update.

###Endpoints
    GET /tacos
####Sample Response
```JSON
[
{
"id": 1,
"title": "Fried Avocado",
"description": "Fried, creamy, crunchy, avocado-y goodness, shall we? These yummy tacos are super easy to make and they’re perfect for Meatless Monday, Taco Tuesday, or Get In Mah Belly Day.",
"uri": "http://i63.tinypic.com/1692h3t.jpg",
"price": 299,
"created_at": "2017-03-07T02:56:11.227Z",
"updated_at": "2017-03-07T02:56:11.227Z"
},
{
"id": 2,
"title": "Blackberry Chicken",
"description": "Shredded Hoisin-Blackberry Chicken Tacos with Crunchy Slaw. The chicken is cooked in the slow cooker until it’s so tender that it basically falls apart with no effort.",
"uri": "http://i66.tinypic.com/20qz2g1.jpg",
"price": 349,
"created_at": "2017-03-07T02:56:11.244Z",
"updated_at": "2017-03-07T02:56:11.244Z"
},
{
"id": 3,
"title": "Cilantro Lime Shrimp",
"description": "Although the cilantro lime shrimp would be good in just about everything, they are particularly nice in these fresh summery tacos! ",
"uri": "http://i67.tinypic.com/dbji54.jpg",
"price": 399,
"created_at": "2017-03-07T02:56:11.248Z",
"updated_at": "2017-03-07T02:56:11.248Z"
},
...
]
```
    GET /tacos/:id

####Sample Response
```JSON
{
"id": 7,
"title": "Carne Asada",
"description": "The undisputed king of the taco world. Classic with a twist... of lime! Flank steak marinated in our signature Mojo with homemade pico de gallo. Enough said.",
"uri": "http://i66.tinypic.com/25f7gab.jpg",
"price": 349,
"created_at": "2017-03-07T02:56:11.264Z",
"updated_at": "2017-03-07T02:56:11.264Z"
}
```

##### Want to add a taco? Add it to the seed file and submit a PR!
