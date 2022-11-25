import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:playground/data/model/product.dart';
import 'package:playground/presentation/widget/card/product_card.dart';
import 'package:playground/presentation/widget/text/ui_text.dart';
import 'package:playground/res/font.dart';
import 'package:playground/router/app_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: UiText('PLAYGROUND', style: TextStyles.appbar),
      ),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ProductCard(
                  onTap: (int id) => context.pushNamed(GoPath.productDetail,
                      params: {'productId': '$id'}),
                  data: productList[index],
                );
              },
              childCount: productList.length,
            ),
          ),
        ],
      ),
    );
  }

  final List<Product> productList = [
    Product(
      id: 1,
      title: 'RTX 3060 싸게 내놉니다',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2020/06/06/01/21/nvidia-5264921_1280.jpg',
    ),
    Product(
      id: 2,
      title: '아이폰 14 상태 S급 팝니다',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2014/08/05/10/27/iphone-410311_1280.jpg',
    ),
    Product(
      id: 3,
      title: '맥북 프로 14인치 가격 협상 X',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2015/05/15/09/29/apple-768022_1280.jpg',
    ),
    Product(
      id: 4,
      title: '리팩토링 서적 팝니다',
      category: 'book',
      image:
          'https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_1280.jpg',
    ),
    Product(
      id: 5,
      title: '공학용 계산기 삽니다',
      category: 'stationery',
      image:
          'https://cdn.pixabay.com/photo/2013/07/28/14/07/calculator-168360_1280.jpg',
    ),
    Product(
      id: 6,
      title: 'RTX 3060 싸게 내놉니다',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2020/06/06/01/21/nvidia-5264921_1280.jpg',
    ),
    Product(
      id: 7,
      title: '아이폰 14 상태 S급 팝니다',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2014/08/05/10/27/iphone-410311_1280.jpg',
    ),
    Product(
      id: 8,
      title: '맥북 프로 14인치 가격 협상 X',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2015/05/15/09/29/apple-768022_1280.jpg',
    ),
    Product(
      id: 9,
      title: '리팩토링 서적 팝니다',
      category: 'book',
      image:
          'https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_1280.jpg',
    ),
    Product(
      id: 10,
      title: '공학용 계산기 삽니다',
      category: 'stationery',
      image:
          'https://cdn.pixabay.com/photo/2013/07/28/14/07/calculator-168360_1280.jpg',
    ),
    Product(
      id: 11,
      title: 'RTX 3060 싸게 내놉니다',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2020/06/06/01/21/nvidia-5264921_1280.jpg',
    ),
    Product(
      id: 12,
      title: '아이폰 14 상태 S급 팝니다',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2014/08/05/10/27/iphone-410311_1280.jpg',
    ),
    Product(
      id: 13,
      title: '맥북 프로 14인치 가격 협상 X',
      category: 'digital',
      image:
          'https://cdn.pixabay.com/photo/2015/05/15/09/29/apple-768022_1280.jpg',
    ),
    Product(
      id: 14,
      title: '리팩토링 서적 팝니다',
      category: 'book',
      image:
          'https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_1280.jpg',
    ),
    Product(
      id: 15,
      title: '공학용 계산기 삽니다',
      category: 'stationery',
      image:
          'https://cdn.pixabay.com/photo/2013/07/28/14/07/calculator-168360_1280.jpg',
    ),
  ];
}
