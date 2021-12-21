## Soal 1

Schema Database Skiljek dengan data:

- Full Name
- Email
- Phone Number

One-to-One Relationships

```json
{
    "_id": ObjectId("612d1e835ebee16872a109a4"),
    "full_name": {
        "first_name": "Putra",
        "last_name": "Harianja"
    },
    "email": "putra@mail.com",
    "phone": "08982823170"
}
```

## Soal 2

Schema Database SkilShop dengan data:

- Full Name
- Phone Number
- Adress (Max 2)

One-to-Few/Many Relationships

```json
{
    "_id": ObjectId("612d1e835ebee16872a109a4"),
    "full_name": {
        "first_name": "Putra",
        "last_name": "Harianja"
    },
    "phone": "08982823170",
    "addresses": [
        {
            "address": "jln.Kos Abadi Jaya",
            "type": "Rumah Utama"
        },
        {
            "address": "jln.Jaya Sementara",
            "type": "Rumah Dinas"
        }
    ]
}
```

## Soal 3

Schema Database SkilShop dengan data:

- Product Name
- Brand Name
- Variants(Many)

One-To-Many Relationships

```json
{
    "_id": ObjectId("612d1e835ebee16872a109a4"),
    "product_name": "Kaos Polos",
    "brand": "SkilShirt",
    "variants": [
        {
            "variant_name": "Kaos Polos Hitam",
            "color": "Hitam",
            "quantity": "12",
            "price": "Rp. 99000"
        },
        {
            "variant_name": "Kaos Polos Navy",
            "color": "Navy",
            "quantity": "10",
            "price": "Rp. 99000"
        }
    ]
}
```

## Soal 4

Schema Database SkilFlix dengan data:

Cinema:

- Cinema Name
- Films (film collection)
- Location
  Film:
- Film Name

Many-To-Many Relationships

Film Schema

```json
{
    "_id": ObjectId("AAAA1"),
    "film_name": "Venom 2"
},
{
    "_id": ObjectId("AAAA2"),
    "film_name": "Spiderman No Way Home"
}
```

Cinema Schema

```json
{
    "_id": ObjectId("CCCC1"),
    "cinema_name": "CFG",
    "films": [
        ObjectId("AAAA1"),
        ObjectId("AAAA2")
    ],
    "Location": "Pondok Indah Mall"
},
{
    "_id": ObjectId("CCCC2"),
    "cinema_name": "Cinema31",
    "films": [
        ObjectId("AAAA1"),
        ObjectId("AAAA2")
    ],
    "Location": "Mall Kelapa Gading"
}
```
