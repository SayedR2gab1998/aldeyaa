
import 'package:aldeyaa/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CategoryListview extends StatefulWidget {
   const CategoryListview({super.key});

  @override
  State<CategoryListview> createState() => _CategoryListviewState();
}

class _CategoryListviewState extends State<CategoryListview> {

  List<ItemBuilder>  itemBuilder = [
  ItemBuilder(
    image: 'https://i.pinimg.com/564x/19/23/e8/1923e83dc34934b4afaaba99bfe80584.jpg',
    name: 'Kid\'s Pants',
    categoryName: 'Kid\'s Pants',
    price: 40.5,
    rating: 4.5,
    isFav: false
  ),
  ItemBuilder(
    image: 'https://i.pinimg.com/564x/cc/b4/e9/ccb4e992c12ef060aaee295075525c53.jpg',
    name: 'Kid\'s Pants',
    categoryName: 'Kid\'s Pants',
    price: 120,
    rating: 4.9,
    isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/736x/33/0e/af/330eaf45238ab3925a622b7cdbff2e3e.jpg',
      name: 'Kid\'s Pants',
      categoryName: 'Kid\'s Pants',
      price: 90,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/1f/54/97/1f5497b120d1bbcc7e1770edc93c6411.jpgg',
      name: 'Kid\'s Set',
      categoryName: 'Kid\'s Set',
      price: 180,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/de/e5/2a/dee52a965b40c5aaaa2b48bc3df9e5cb.jpg',
      name: 'Kid\'s Set',
      categoryName: 'Kid\'s Set',
      price: 210,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/35/6b/af/356baf4d3580fbe1d4fa81c1e15b1dbc.jpg',
      name: 'Kid\'s Set',
      categoryName: 'Kid\'s Set',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/c5/4d/a4/c54da4ba434628628688ec04cc0b071e.jpg',
      name: 'Girl\'s Dress',
      categoryName: 'Girl\'s Dress',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/8c/80/90/8c8090b4334029f63f173ef80b51c334.jpg',
      name: 'Girl\'s Dress',
      categoryName: 'Girl\'s Dress',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/736x/93/c1/72/93c1726e95a06a900e9e2ded36fa8506.jpg',
      name: 'Girl\'s Dress',
      categoryName: 'Girl\'s Dress',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/99/18/62/991862593ffdb45a409972f409832dc5.jpg',
      name: 'Girl\'s Set',
      categoryName: 'Girl\'s Set',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/f6/a0/7c/f6a07ca9b6a781974e0f126b5b2fab16.jpg',
      name: 'Girl\'s Set',
      categoryName: 'Girl\'s Set',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/bd/3a/54/bd3a548e0576e30da9012188acfeafda.jpg',
      name: 'Girl\'s Set',
      categoryName: 'Girl\'s Set',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/b9/b3/16/b9b3161cc2b6dfc0204b5ef57a34ee58.jpg',
      name: 'Girl\'s Pants',
      categoryName: 'Girl\'s Pants',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/2d/ee/d0/2deed093841a3ba4a907324c4cb4f49c.jpg',
      name: 'Girl\'s Pants',
      categoryName: 'Girl\'s Pants',
      price: 230,
      rating:45,
      isFav: false
  ),
  ItemBuilder(
      image: 'https://i.pinimg.com/564x/0a/76/4b/0a764b9246632db5f8c35c1014dbdf06.jpg',
      name: 'Girl\'s Pants',
      categoryName: 'Girl\'s Pants',
      price: 230,
      rating:45,
      isFav: false
  ),
];

  int selectedIndex = 0;
  String selectedCategory = 'All';
  List<String> getCategories(){
    return itemBuilder.map((item)=>item.categoryName).toSet().toList();
  }

  List<ItemBuilder> getItemsByCategory(String category){
    if(category == 'All'){
      return itemBuilder;
    }
    return itemBuilder.where((item)=>item.categoryName==category).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<String> categoriesName = getCategories();
    categoriesName.insert(0, 'All');
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categoriesName.map((category){
              bool isSelected = selectedCategory == category;
              return GestureDetector(
                onTap: (){
                  setState(() {
                    selectedCategory = category;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: mainColor),
                      borderRadius: BorderRadius.circular(30),
                      color: isSelected ? mainColor:Colors.white,
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(category,
                        style: TextStyle(
                          color: isSelected? Colors.white:mainColor,
                        ),
                      ),
                    )),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 10,),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0
          ),

          itemCount: getItemsByCategory(selectedCategory).length,
          itemBuilder: (context,index){
            var item = getItemsByCategory(selectedCategory)[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(item.image),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter
                            ),
                          ),
                          //child: Image.network(item.image,fit: BoxFit.cover)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                        child: Row(
                          children: [
                            Text(item.name,
                              style: TextStyle(
                                fontSize: 18
                              ),
                            ),
                            const Spacer(),
                            const Icon(Icons.star,size: 18,color: Colors.orange,),
                            const SizedBox(width: 8.0,),
                            Text('${item.rating}'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
                        child: Text('\$ ${item.price}'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        ),
      ],
    );
  }
}



class ItemBuilder{

  final String image;
  final String name;
  final String categoryName;
  final double price;
  final double rating;
  final bool isFav;

  ItemBuilder({
    required this.image,
    required this.name,
    required this.categoryName,
    required this.price,
    required this.rating,
    required this.isFav
  });


  @override
  String toString() {

    return 'ItemBuilder('
        'name: $name,'
        ' categoryName: $categoryName,'
        ' price: $price,'
        'rating: $rating,'
        ' isFav: $isFav'
        ')';
  }
}