class Post {
  const Post({
    this.title,
    this.authour,
    this.imageUrl
  });

  final String title;
  final String authour;
  final String imageUrl;
}

final List<Post> posts = [

  Post(
    title: "王子与公主1",
    authour: "王子1",
    imageUrl: "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1571725696&di=0da25a04f7afd1e898bbf64e37c7009b&src=http://pic43.nipic.com/20140701/18568311_135837338000_2.jpg"
  ),
    Post(
    title: "王子与公主2",
    authour: "王子2",
    imageUrl: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571891927452&di=aed3448b1a29a1a0a3245679c6330e6f&imgtype=0&src=http%3A%2F%2Fpic19.nipic.com%2F20120305%2F2786001_094439245000_2.jpg"
  ),
    Post(
    title: "王子与公主3",
    authour: "王子3",
    imageUrl: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571891927452&di=57e93436f45f732685a32a50c564e3a0&imgtype=0&src=http%3A%2F%2Fpic53.nipic.com%2Ffile%2F20141122%2F17923091_161734452000_2.jpg"
  ),   
   Post(
    title: "王子与公主4",
    authour: "王子4",
    imageUrl: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1571891927452&di=1bd6bdbc86d472af901b7a9511ff7601&imgtype=0&src=http%3A%2F%2Fpic41.nipic.com%2F20140512%2F18546714_093834342172_2.jpg"
  ),

];