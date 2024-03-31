import 'package:flutter/cupertino.dart';

class SaladData {
  static Set<Map<String, dynamic>> cartData = {};
  static List<Map<String, dynamic>> cartSaladData = [];
  static Set<Map<String, dynamic>> favData = {};
  static List<Map<String, dynamic>> favSaladData = [];
  static List<Map<String, dynamic>> popularData = [];
  static List<Map<String, dynamic>> allSaladData = <Map<String, dynamic>>[
    {
      'name': 'Fruit salad',
      'data': [
        {
          'id': 1,
          'title': 'Melon platter',
          'price': 12.00,
          'description':
              "A watermelon salad is a refreshing and light dish typically made with to create a flavorful and colorful dish",
          'discount': 5.6,
          'rating': 4.5,
          'time': 15,
          'average': '5-10',
          'like': false,
          'kcal': 200,
          'count': 0,
          'total': 12,
          'type': 'Hot sale',
          'delivery charge': 4.70,
          'ingradients': [
            '🍉',
            '🧀',
            '🧂',
            '🍒',
            '🍍',
            '🥑',
            '🫒',
            '🍇',
          ],
          'thumbnail':
              "https://saltandbaker.com/wp-content/uploads/2021/06/Watermelon-Feta-Basil-Salad-featured-image.jpg",
          'image': [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRgwNjavpYX4iS8hEYXzF-JG_uYVos6fkzxA&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF9Ifzn0LmuN9sopBcrZ4EGseuw1iMwW3iiw&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu5HWSAok-i4XgY4z-cqFJFszvlZRT9BSr_Q&usqp=CAU",
          ],
        },
        {
          'id': 2,
          'title': 'Mixed Berry',
          'price': 10.00,
          'description':
              "A mixed berry salad is a delightful and colorful dish that combines an assortment of fresh berries",
          'discount': 0,
          'rating': 4.8,
          'time': 10,
          'average': '5-8',
          'like': false,
          'kcal': 180,
          'count': 0,
          'total': 10,
          'delivery charge': 4.70,
          'type': 'Popularity',
          'ingradients': [
            '🍇',
            '🍓',
            '🧀',
            '🧂',
          ],
          'thumbnail':
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxJz0vp6_ZTPFmJcXILsSWA1wAZewalpTMPQ&usqp=CAU",
          'image': [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBE36Me5DAFRiXW6ZVCdF_pvRMWpUJ8oiI9A&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl6RGUM9S_WLfsO0EoZTH_W5rray8hgoQQkw&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQScUg7X3mBL_7MbbdT8CuLPi7dzHxJBlh9bQ&usqp=CAU",
          ],
        },
      ],
    },
    {
      'name': 'greek salad',
      'data': [
        {
          'id': 1,
          'title': 'Classic Greek',
          'price': 8.00,
          'description':
              'Authentic Greek salad featuring crisp lettuce, tomatoes, cucumbers, olives, feta cheese, and a tangy vinaigrette dressing.',
          'discount': 3.2,
          'rating': 4.2,
          'time': 12,
          'average': '5-9',
          'like': false,
          'kcal': 220,
          'count': 0,
          'total': 8,
          'delivery charge': 4.70,
          'type': 'Hot sale',
          'ingradients': [
            '🍅',
            '🥕',
            '🥒',
            '🧀',
            '🧂',
            '🫛',
            '🍠',
          ],
          'thumbnail':
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_mzmdfA7GPo0w4h9SXHlynJ2I1fFyza6rKw&usqp=CAU",
          'image': [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1gWcHH8RIL44XG_0ym_tihh7zmyCDxbpytA&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNM5b6QJpzN2EbF2inppcQ5lzm6cJjuDa6QQ&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC0NZQEC4jTxrvPlgJz7cQhULRliT7M563sg&usqp=CAU",
          ],
        },
        {
          'id': 2,
          'title': 'Grilled Shrimp',
          'price': 11.00,
          'description':
              'A flavorful Greek salad enhanced with succulent grilled shrimp, adding a delightful seafood twist to this classic dish.',
          'discount': 1.5,
          'rating': 4.7,
          'time': 8,
          'average': '4-7',
          'like': false,
          'kcal': 160,
          'count': 0,
          'total': 11,
          'delivery charge': 4.70,
          'type': 'Popularity',
          'ingradients': [
            '🧂',
            '🫛',
            '🍠',
            '🥕',
            ' 🥒',
            '🍍',
            '🫒',
          ],
          'thumbnail':
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXRHFDqBkamDK6bxSYdmNE38W-JFPFCY6S4A&usqp=CAU",
          'image': [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxzro7cpjJvTow3FT7F-j-QS-eV9U6SDkVCQ&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSvNOsEVJTzc15pI98GzXbhSO4KANNgWwA1Q&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPdCWECpkvHLext4mbrEZ19wm77IygkeQU0g&usqp=CAU",
          ],
        },
      ],
    },
    {
      'name': 'Spinch salad',
      'data': [
        {
          'id': 1,
          'title': 'Fresh Spinach',
          'price': 9.00,
          'description':
              "A vibrant and nutritious spinach salad featuring fresh spinach leaves, cherry tomatoes, sliced almonds, and a zesty vinaigrette dressing.",
          'discount': 0,
          'rating': 4.6,
          'time': 10,
          'average': '5-8',
          'like': false,
          'kcal': 180,
          'type': 'Hot sale',
          'count': 0,
          'total': 9,
          'delivery charge': 4.70,
          'ingradients': [
            ' 🥒',
            '🍗',
            '🧂',
            '🫛',
            '🍠',
            '🥕',
            '🍅',
          ],
          'thumbnail':
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE4L_D2RsxSc9RJf1MZMAB0RY6MiBNrTH9Y9-ZVs4LIB7PcuO2QHE_RR9EBS-qoaICQ8o&usqp=CAU",
          'image': [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHEuGcgtULoEHIz0kEQ20xY1UdUFJaIKeCbwb4EFERYrz15kVm3s9T-YpDpG2g3SCKGxg&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGbupDaTbnT85qRWB1aKjA9Ktxe3a0xGU4gw&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqAs2ft1Xh8jhY92oTA5p_jO_p4HTKcdPMiA&usqp=CAU",
          ],
        },
        {
          'id': 2,
          'title': 'Spinach-Bacon',
          'price': 12.04,
          'description':
              'A comforting spinach salad featuring crisp bacon, sautéed mushrooms, hard-boiled eggs, and a warm bacon vinaigrette, perfect for a cozy meal.',
          'discount': 0,
          'rating': 4.7,
          'time': 15,
          'average': '6-10',
          'like': false,
          'count': 0,
          'kcal': 280,
          'total': 12,
          'delivery charge': 4.70,
          'type': 'Popularity',
          'ingradients': [
            '🧂',
            '🫛',
            '🍠',
            '🥕',
            ' 🥒',
            '🍗',
            '🫒',
          ],
          'thumbnail':
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2isa1AhzElOOTt7dVXCA1cWed_MeFLQ4t9g&usqp=CAU",
          'image': [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt7o7KpR66CBZVWCMMV1oZikHc72lb55qKfw&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRATgzFHl-8ijngaiaA8EETOpVYT-fWeqk4w&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy3l9e17HUMAK-hSBKoz1GURlojGpJHh3nVQ&usqp=CAU",
          ],
        },
      ],
    },
    {
      'name': 'Maxican Salad',
      'data': [
        {
          "id": 1,
          "title": "Spicy Taco",
          "description":
              "A zesty and satisfying salad featuring classic taco flavors with a spicy kick.",
          "price": 16.02,
          "discountPercentages": 3.89,
          "rating": 4.9,
          "kcl": "220",
          "average": "10-15",
          "time": 15,
          "like": true,
          'count': 0,
          'total': 16,
          'delivery charge': 4.70,
          'type': 'Hot sale',
          'ingradients': [
            '🥑',
            '🥒',
            '🍅',
            '🧂',
            '🫛',
            '🍠',
            '🥕',
          ],
          "thumbnail":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxAxTao_t0IC6JJvHIemTDuzxRdmy6ZIBR1a7Xk-kOv1KJj7sVb9qucBUC7gehxSpj4-w&usqp=CAU",
          "image": [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwq1lOpNLsFbhICj7e89-ephmgL0dHcNQ44Q&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw7XrO-nUE0M52it_TDqDVTQBIp7eaS1wVoA&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9N1AT6dBf3qXCEeibNE4i73LuwoqLYmaaAbbeIaiATTkEXCvrtOzdmTXz93ez-uWYnvw&usqp=CAU",
          ]
        },
        {
          "id": 2,
          "title": "Mexican Fiesta",
          "description":
              "A vibrant and flavorful salad inspired by the rich culinary heritage of Mexico.",
          "price": 18.34,
          "discountPercentages": 8.00,
          "rating": 4.6,
          "kcl": "180",
          "average": "10-15",
          "time": 12,
          "like": false,
          'count': 0,
          'delivery charge': 4.70,
          'type': 'Popularity',
          'total': 18,
          'ingradients': [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbtsJMar6hA_OzF5Vr6_sV9UFVcsKXfxkYaTRwSbbD9q-AYwSdGSQtNhJnEfEyeQB8Erc&usqp=CAU",
            "https://blog-images-1.pharmeasy.in/2020/08/28152823/shutterstock_583745164-1.jpg",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Gidfsw1cAVoKpnYgMqc7ZcCh0kdMlKshwpQrATxcr57R5Rd3LMo2zi1StOrg8tuG2z0&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTknPD69r012NGGFCZPnUh7r6Dr26Y1S1L1Wes0aCNpAXAHsuzEioI31T0jAG4dPj9iRTw&usqp=CAU",
            "https://cdn.britannica.com/72/170772-050-D52BF8C2/Avocado-fruits.jpg",
          ],
          "thumbnail":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSItBtTno4slkAQ6vkT2b9k1jSKojWMrT2jZA&usqp=CAU",
          "image": [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt_EJpgPeaJnRZXheYaH7Pz58LCUtEFOuwug&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqkNiQlItHfUqH6jqdmicYytekUyWlWQFG9soBGi5cL_BIhkNbJB52ktMFsDpAjUMLq28&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSICBTS0F3oH5i1ItOKsvDKf1ikI9S7xKV1qg&usqp=CAU",
          ]
        },
      ],
    },
    {
      'name': 'Vegetable Salad',
      'data': [
        {
          "id": 1,
          "title": "Mediterranean",
          "description":
              "A hearty and flavorful salad featuring chickpeas, tomatoes, cucumbers, and Mediterranean herbs.",
          "price": 14.56,
          "discountPercentages": 6.45,
          "rating": 4.6,
          "kcl": "180",
          "average": "10-15",
          "time": 12,
          "like": false,
          'count': 0,
          'total': 14,
          'delivery charge': 4.70,
          'type': 'Hot sale',
          'ingradients': [
            '🧀',
            '🥒',
            '🍅',
            '🧂',
            '🫛',
            '🍠',
            '🥕',
          ],
          "thumbnail":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb9uYpN-mqphnpZuwkyhJKnJ2LhLR8lphhAHhnk0XULFy2EJh4tHENwxFEyqTFV1OpQg8&usqp=CAU",
          "image": [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsa9MDkYy97mPZEH0IkASAPkbZtnJGh-7LBk4HWQH7JHcnqx-_T3nCzZY77G2qURR96nA&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyKgWotKlFjP41OSo1vV3u-ZkFLXDktXzMV9fjLDiCzZC7rz2nquBl46KsHHI_n7uAYT0&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo44iwLNl3KwMt0Sr3X8n9rwXDtEU9vwh3yA&usqp=CAU",
          ]
        },
        {
          "id": 2,
          "title": "Fresh Vegetable",
          "description":
              "A vibrant and nutritious salad made with a variety of fresh garden vegetables.",
          "price": 12.12,
          "discountPercentages": 0.00,
          "rating": 4.5,
          "kcl": "120",
          "average": "5-10",
          "time": 10,
          "like": true,
          'count': 0,
          'type': 'Popularity',
          'total': 12,
          'delivery charge': 4.70,
          'ingradients': [
            '🍠',
            '🥕',
            ' 🥒',
            '🍍',
            '🫒',
          ],
          "thumbnail":
              "https://w7.pngwing.com/pngs/593/453/png-transparent-responsive-web-design-grocery-store-prestashop-opencart-template-monster-vegetable-salad-leaf-vegetable-food-recipe-thumbnail.png",
          "image": [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzsCvSpgfWm516NzhNa3McnLfEzh7Ea8mg3J_ZzMwDLUlL1OmUeG67ZFMy38Ksyj9Jz4s&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSapChOkkA7j6aAVuqjWZ7Hrp2zEaKbVpj4jQ7tHrQtgShNqWt-jzf91s7MCo5QQ0TQPHs&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFPhokFEB8THUE3tTk8IWrsvb7r2OAMkYtgjda37tKw_RdyRSfRDs9vsSwXwvsDShLgAw&usqp=CAU",
          ]
        },
      ],
    },
    {
      'name': 'Italian Salad',
      'data': [
        {
          "id": 7.09,
          "title": "Caprese Salad",
          "description":
              "A classic Italian salad made with fresh tomatoes, mozzarella cheese, basil, and a drizzle of balsamic glaze.",
          "price": 16,
          "discountPercentages": 4.20,
          "rating": 4.8,
          "kcl": "150",
          "average": "5-10",
          "time": 10,
          "like": true,
          'count': 0,
          'type': 'Hot sale',
          'total': 16,
          'delivery charge': 4.70,
          'ingradients': [
            '🍅',
            '🧂',
            '🫛',
            '🍠',
            '🥕',
            '🧀',
          ],
          "thumbnail":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDIcSiZIM60PzItES31Ej9jhGCaQt5plzyBg&usqp=CAU",
          "image": [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0faFNbKZ43hKDdnMfWCfnrr3sJyolehTwVg&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS44a9bZvNhM0bD0nF3Cm4vSV311sIsqF6SWw&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT38AISrfDOs0pCkM0Zj1DnMiFpc9z57hOR4A&usqp=CAU",
          ]
        },
        {
          "id": 11,
          "title": "Panzanella Salad",
          "description":
              "A Tuscan-style salad made with stale bread, tomatoes, cucumbers, onions, and fresh basil, tossed in a tangy vinaigrette.",
          "price": 13.32,
          "discountPercentages": 6.39,
          "rating": 4.7,
          "kcl": "170",
          "average": "10-15",
          "time": 12,
          "like": false,
          'count': 0,
          'total': 14,
          'type': 'Popularity',
          'delivery charge': 4.70,
          'ingradients': [
            '🫛',
            '🍠',
            '🥕',
            '🧀',
            '🥒',
            '🍅',
            '🧂',
          ],
          "thumbnail":
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzPRO9WdSANv8NLzPFHUa1ImfgGr9tvBCzxyhfIJ8MRKDyph_jX1e8bE2k7r2m1Aiiu7w&usqp=CAU",
          "image": [
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIXIvpamRk4kH0bri4sOwg88J3PZrVFSEwdg&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTOkQoV4X0lHUMs_BolTftF4nWFvCbh67bxg&usqp=CAU",
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn7DwcOlpfEQWpH4Nu9uiVtRD-5iysHFEd4x01uhWKkFBXYtYFIqma37y2LzuKhCXZ_7o&usqp=CAU",
          ]
        },
      ],
    },
  ];

  static void convertUniqueData() {
    cartSaladData = cartData.toList();
  }

  static void convertUnique() {
    favSaladData = favData.toList();
  }

  static num price() {
    num sum = 0.00;
    for (var ele in cartSaladData) {
      sum = sum + ele['total'];
    }
    return sum;
  }

  static num grandTotal() {
    num add = 0.00;
    for (var ele in cartSaladData) {
      add = ele['delivery charge'] + price();
    }
    return add;
  }
}
