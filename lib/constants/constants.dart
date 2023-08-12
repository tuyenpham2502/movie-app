import 'package:flutter/material.dart';
import 'package:movie_app/components/routes/app_routes.dart';

class Constants {
  static const List<Object> categories = [
    {"label": "All", "value": "all"},
    {"label": "Action", "value": "action"},
    {"label": "Adventure", "value": "adventure"},
    {"label": "Drama", "value": "drama"}
  ];

  static const List<Object> banners = [
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/17eb/2945/5e399139fbcb16d7c2b046bd4290a5e6?Expires=1691366400&Signature=jXoU9w2ECRzBp5S1mm3pMPURtvLSuf2wn7mUsX6kqK02sZm~bJ5DjqhGl7MAZ2S44NKgncZJSd2k24k4VGnwSiNUAt5F1VrEf0myXWeEQVvFAqtgsXBWcljzM6fEGe3FxT0KorO0ufJNXlLzgAjorzgvaCsOhLdg2b8jiuvOWXDVyH~CWX8tm2A7QYgCKsmPtBhrLO6FPM9OoRWSB6LiqEHSR9DOZ6HBKHlRptDrXduc~EFrTTx18Hs-WfMCc-MoQU-s~mFSpDDAfqXSn~IgO7Po7WqXhXpQyjpTMjX8b9S79wseE3L--IYQ957b4hH2G9BGBQpeWcXpnWzIRS~ibg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "title": "Wreck It Ralph 2",
      "rating": 4.3,
    },
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/1781/3794/efac8575dd91175f2985135378ffd974?Expires=1691366400&Signature=Spav1-6Tob-9Y6Tf1mYds0jwo3RmVtxKrUVxku6obJ3ekzrlAI1BF56CpLatjocE9Ny~BXNu5zWjOnQecAMhNO49lKcU4TMGYO8ud0G5I4NLpXk7Cw~3z6ErCHRg8TJaTYvgTW77o7lz80Fq21AiSh8iOL-3I6TXZJgg3veUBMym6eOv4R~PwQkp37CJ5qA7ZW5IBsmQuNG1BU-ie6pPfy3vl~n4JKQVfSnsWzZxUh1gLgTtRx6zfs5ybyxXp0W425plk7W-DM3YqbxTFwzHmVaa~sMCnpDFGIJWbrpC-ab4MMwHmFJJUHJeK0imRnFarl1FhAC1Cn2uXbKW3E3F1A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "title": "How to Train Your Dragon",
      "rating": 2.5,
    },
    {
      "imageUrl":
          "https://s3-alpha-sig.figma.com/img/9d29/4b56/10aa041796975d664f0d9dc138cb496e?Expires=1691366400&Signature=EqzEH2kfQJ91zE7WIEzPSTSktjkdP2QFxtm70VnRsRHhW4gW2fnf6ql-edM-BEIv5MTH-3S-UQDxtYY~HYiOqxWJnVOGnoB9BodT5IiurrX1Lul0RCT09Ere1SENiQfbhS0ijoXS9FVqZMwIHlhF1V0RMReYH19r-1PsxorqB0arCYQtLpfggkwRJwcMKonsEu5xT-0k5IXhA3gB5YHErpqzqChFAJEl83Fq2jyIoMcPrIsCLE1qaw06kzLk4Ga2ZmyNLXW91HWbc5LOrznvlYfkBkj~up3HLOxySXMezYspstoE-R~hD5Nt2NTrw1TcdJXCiW3ykfDNfrjh2wRYdA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "title": "The Flash",
      "rating": 4.0,
    },
  ];

  static const List<Object> comingSoon = [
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/907c/e28c/76757758fbacdcce776a104003836232?Expires=1691366400&Signature=ozPocIR328WrwA1XcHzCDcRL9Gal4n1e-6VG0qJoavcwfspTnEf4SsWDzyux0ngLgLDMh2zXHq4Sc5~Q7ZxdNraz11u3Rj~yz4FlIvQ7J63HacWuzQDQJDRdIPCRFXv0K-SfIk1evuYOHFGSRKqLBZwPNRW-bpTcjO4NjGPFwsWZPCRG1MpHdKjgTfQ~bYV6uJi0DIWQPdSu6hcPC2LnC3hFWOgGHRrqz7-mDCGzdVinsGsn35~wBMky2vyMED3wV7LDHV4l0QTWR~OuIP6wSolYJAQSpwy0-Rx3xFnJqA5kRn~zimC~DQPQvCRvyCIobnUXSO~wkfzX9BZn9D0kJQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'
    },
    {
      'imageUrl':
          "https://s3-alpha-sig.figma.com/img/16d1/d5da/eb0aabe4cd7d44fd4ffd0cd343ca551d?Expires=1691366400&Signature=ibIkzqyCqeF6UXMD2MoNVmGbUBL5iap0-HIp5CuLFiv3Ucon3OyfKLcYd8tUBXmpyZAWGI~gGNmjfxOhi0Ek9FHbVtNhzK8BPbeaRQpNRlysWmyCqvhG9QbeAP4aAEjX94CMo2IsnQ0dOB3K6TVwKyCujwarXuKmkVjZBShG2J8MsF5RFiTVrSXozH78gbq9vHWMd47CqmSi8FWUUPODF2XUzIhCOZeEIBqWdguRdgNLsgMYqPoDWn01RZHut2eKbe0AoUzPeRF8tKfNBsnS8RAwlduRduRD7toq8429TDulHj9I7XIXSNZ8JG4Wnf72ytGayeRYCwdtl7AVZmWmCQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"
    },
    {
      'imageUrl':
          'https://s3-alpha-sig.figma.com/img/2219/0d6b/99b02f99f69fe1194d9e15ed1712c49f?Expires=1691366400&Signature=WNM73Gydq~~8aqDWnPqrBOjDatbj33j8XQJ5v9lkSgdERx3DG2HOzn4oz8ydPW8gSnB0T3yLikIIk76JDzot7FgS-dKV0RlA0JpI77HEq0bDqA4LuGn8GBjQeNKRrX3LI9vOOCJVglTSiEBC3VJYGcfkLwAVbRx37Nlo3VRpgHGTgA1G2AoXzSMWny-~Qw0A4llx5gGEZLXdRMPVnaAFAjnuF2h1QFwKYgd0jdTbBrU8X6V6Pvw7XDvFpJoRQKNFQ4SuTIsXeOUCitgvc25dvfDI8hPXUtswgnX~EADI3rKIRHaY5oENi6fq5qK1dPUMX9rCf3zAIct6hr0~NoI1fg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'
    }
  ];

  static const List<Object> promo = [
    {
      "promoName": "Flash Sale",
      "promoSubtitle": "Maximal 20.000",
      "offValue": 50,
    },
    {
      "promoName": "New Member",
      "promoSubtitle": "Maximal 20.000",
      "offValue": 40,
    },
    {
      "promoName": "Student Holiday",
      "promoSubtitle": "Maximal only for two person",
      "offValue": 80,
    }
  ];

  static const String imageDetail =
      'https://s3-alpha-sig.figma.com/img/d1e5/b5e6/952b50e86d728436ca9980d271446a69?Expires=1691366400&Signature=R-UQV1L4IJkFAPsSA6wlv8jL5ilcH5yvtkARqVOwKRyKDmO9asU6DkzBTEh7U1jLElFQyXEpi9o~2G7fbVqEipmGy70Bp8Ky7DytuMMpwVgKkNMM-toBQvHtdR-ymnd1-NQemfOlUuNxIcbB0hUqDkhdZyxNBvR7JHFGkpMpW7U14pmnGLeV~wBWdAKld6KpSTdUKzlODz99iwJlPtd8dHrjTJiC8B~vn9jV24MGZpap-XPJSl-exohxQi6bMlPxtRrO2Z-Dr60LnItlMrRLm8QO50NXMKdbqebFoeeZGlfuZnRmbp9vAqLtcfNwCWM3RefqSUHL5MmbXLJONwy~dg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4';

  static const Object informationMovie = {
    "imageUrl":
        "https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1691366400&Signature=VBqgsxZ~nhQucN859otrEHZ0z3uoqHedC0a1~7bBicqyBQHzJayeZXTmM44j2WetzO8BBRSHdRCqeuu9t5JmIfi2t9PQogfTfrDsHPtghPMm96xMv9y5EbCChsjuGY90809ULOXXE9khJJ8fc3tP5oAPctqQLKfsM621K3nADHjgv1YkFJEpbqFnYw7vz7YUVlDkRVq4Ek1spqAkwG~YqIpz8~r4LEY9pmCUF6ZxVeQ1lM~aidPKf2UM1Vnl6WvgPCTxJhHfHd~wvaan0E6Ot5cMZXDMYbvuvZuN0EJn94B0K00StJvm3P7JW01XuPMDkDTT-IXjq14UFL~XA3-4mw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
    "movieName": "Ralph Breaks The Internet",
    "movieGenre": "Animation, Comedy, Adventure",
    "rating": 4.0,
    "duration": "1h 52m",
    "synopsis":"Wreck-It Ralph wants to be loved by many people like his kind friend, Fix-It Felix. But no one likes evil characters like Ralph.\n\nRalph's goal was simple, wanting to win and get a medal to be considered a hero. But without realizing Ralph instead paved the way for criminals who can kill all the games in the game complex.",
    "castAndCrew": [
      {
        "imageUrl":
            "https://s3-alpha-sig.figma.com/img/00fd/22ec/5f775d9422b39ba553e6181a6ff3ea37?Expires=1691366400&Signature=anUeiPWnwLuLF7PHYGqjWCwQduqWlcy9EeA7cBX9qN9SW9zH4CgeY~cHWYfEr2jdsVTE~~Mb90CHbnQQg4dwJ5LDq8e0GxXEWDrCHfj6IO~rsn~Y9ns3NEXSp6fkHYbSBkY~WsYx6X4QDzJiUiTq0hbd9LWKKhERzXOcZpykcjL6cDd1MqrUGNFh5oAJ2L~FMD6aX87LyQNgdrCze-CJeJv0WwV0M2k1RoZDf-yBcHXSdc6C6UHQHTUimgcLViuCVjvmeOCwXZZvjUgmuUMfsL3LRRnnyPladKsjmRaJf9AsLq8yTCaYY2EFAqOlJ0kCICZpIUt0kcuGvU9eSGuwFw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
        "name": "John C. Reilly",
      },
      {
        "imageUrl":
            "https://s3-alpha-sig.figma.com/img/bdbc/28df/58da347e2a067b3d25a2cf8ba214546c?Expires=1691366400&Signature=drI~v7GEKzJKTVkAGyqquRbJxkPKM-hXkjkGRo1AtuyrzCf2S7Bv6p5cpoALtbzYqqSsH5FCKplt4qrxOBn8VkMqg0DRKRbvaxZYWF6gGLOzTTSNxkaKnvLAbEyPIlzpGcv6l6DLBrYjx3PlTRVVnp39PD4K7RN~ByvEYK0FBIcGukhlildmfUga-en0I60~wvWEOu4izKhh3g-EvM4BhjvF9PMh9e9FIKjasFaGBbo8djvLtzRt1MziXC-RWhvCHNTmppm0wYOOOL~p8EQlaCyQxr~PvL9PUTNRHBun3mYTA3-chTtF~ln0X9CmU12QyE6x5Cd-ey6OUc9oVk4Yaw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
        "name": "Sarah Silverman",
      },
      {
        "imageUrl":
            "https://s3-alpha-sig.figma.com/img/849a/912b/8592e403f3ae95f65c207a7b54d3f5e8?Expires=1691366400&Signature=nsrc07Ru4dQFQUK5P5GUM8eJe8mejXcfrEZa-6VMtEI1OVivjZjEx1C11rYRN4Hk1o1Yc2DDQUv~HH83KlucVWd2nx5GWGLHoe6HotCxsWnJF3BWUnbMZ~8eC-DzAk3BoA1kJS4e7Yb7FJjNKIXs4LJsF4ZCJZu81AiroF3LPMqKX7e~fMf~PniIs0RK3m~MHIlbXYvkEuEv~~QPxm5m6ReRYVStcD1eJYX5WKWwmUUD5UAY~b5a31IFYs15gf~1P4Vkvv8FRdtrk7v4xXOsXkfSH1W9VKiwri9kNEQGiOspgjALz2PB6i0fR97i3W7p4409wmdeHzHkueI1NXD5CQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
        "name": "Gal Gadot",
      },
      {
        "imageUrl":
            "https://s3-alpha-sig.figma.com/img/7494/d194/b120b1a0ece80893e0dc58c1740e4315?Expires=1691366400&Signature=MvuXeERGy~6z2zHfTOB1Ei2~QX6~zC6jBCPAkYPEpSPz4Z4-PhcRCHM82o6P6YNiWuHNa1ap8E3PWW0bLSdIuflCL-cDnNIhOe7qsgRBHOHB7kYGW~C9V3HpOMi8D59jFcf0CIu9YqGbWHISvJhzpnEVu29j3364IIrPUZozeETW3l9gQQ1bz8K49YnziA6OKSXriJL8kV0P~QwSoXwtkfKktI4ZsdHFG3XRP3E4X1xckm3KFluU7cCJL5Cu~ecv85DBRHytdK2rFB9A7vfBFT7pU5MRhI4sxkTfpkeTu9IsQj0pLb8iTGoHrg8W69qpaXcAjOMAQREqWkOk5t3IkA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
        "name": "Jack McBrayer",
      },
      {
        "imageUrl":
            "https://s3-alpha-sig.figma.com/img/a947/4002/06c9f1cd4c73f3135fd3a2d54dcdbae9?Expires=1691366400&Signature=McY5ykzRclSAVmYprmNCOWUWUTipmA5lx6JMxYfhhk4s4Q6dMKKnnGUaykWpUrV4i0mdNuw6OV7FIAoj29YvXMZQ6CGonmtbJyi~HIfLBdvx5vQv-Ly9SOxEvTPr8O~zZhfHLKUyjgvhoaI2Y5~pVIrywkLN~msZqvCBEsMy38-33SM4e-EQ7yeRqZLvA~pufvsa-yiVLsthFWYT3aIqQ8SMkkSTrGifg2zr0SKlMo0C0M6SGkrdzwLzjb~raMOqL5Kpd~3pwVjejIJWLQDUA5qwXvRCAKFHbxc8NqjGRrXIsvlw2JgPNc28wvISJpJWfvYqfSREE1d5dO~Zl~21OA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
        "name": "Taraji P. Henson",
      }
    ]
  };

  static const List<Widget> tabBar = [
    Tab(
      text: "About Movie",
    ),
    Tab(
      text: "Review",
    ),
  ];

  static const List menuProfile = [
    {
      'label' : "Edit Profile",
      'imageUrl':"assets/icons/edit_profile.png",
      'value': "editProfile",
      'hyperlink': '/editProfile'
    },
    {
      'label' : "My Wallet",
      'imageUrl':"assets/icons/my_wallet.png",
      'value': "myWallet",
      'hyperlink': Routes.myWallet
    },
    {
      'label' : "Change Language",
      'imageUrl':"assets/icons/change_language.png",
      'value': "changeLanguage",
      'hyperlink': '/changeLanguage'
    },
    {
      'label' : "Help Center",
      'imageUrl':"assets/icons/help_center.png",
      'value': "helpCenter",
      'hyperlink': '/helpCenter'
    },
    {
      'label' : "Logout",
      'imageUrl':"assets/icons/logout.png",
      'value': "logout",
      'hyperlink': '/logout'
    },
  ];

  static const List fakeDataMyWallet =[
    {
      "movieName":"How to Train Your Dragon",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
      "imageUrl":"https://www.figma.com/file/r2RU3PV9smMYyjgLWi987n/image/16d1d5daeb0aabe4cd7d44fd4ffd0cd343ca551d",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },
    {
      "imageUrl":"https://s3-alpha-sig.figma.com/img/b070/ded0/2a9804811b823b80d68f482a5a974b4c?Expires=1692576000&Signature=C4IVL~en-h4ZGLbyNasnthuWJ6XoZQHdReOb3Rn2-Btlbyt0TZnBYDjeKRkoM3qzJy7WBG3vztZyiQi6iJsD2RNQ9jHx7ga0bjCU87~Hs2uL5A0YIE5rdKgk6iTOl2jIuesNBgnrKzdh1jIQYeB~4SG82FAov2utZrNzFhs2b2-ZwUNcVf-~wH0lpZJdFNHTD2pevPnkTbkgWq5MNC0Mb7bAHgRC8l83Cmj7h5XXhtUPBsS0ebAYozlEQ9x7ymFyiT~UXlBPzo9yXker3rf1oIcrR3ePRpC9Xe5FdURzn26J1cL0T2ev7pp8m7VSv1DL9t93D-fnnnE8yF0SiHF65A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
      "movieName":"Ralph Breaks the Internet",
      "movieDate":"12 Jan, 2020",
      "price":"\$ 10.00",
    },

  ];

}
