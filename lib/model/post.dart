class Post {
  final String title;
  final String author;
  final String imageUrl;
  const Post(
    {
      this.title,
      this.author,
      this.imageUrl
    }
  );
}

final List<Post> posts = [
  Post(
    title: 't1',
    author: 'a1',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546779117656&di=966a61bc226eef44068d251f29702969&imgtype=0&src=http%3A%2F%2Fp1.img.cctvpic.com%2Fnettv%2Fnews%2Fspecial%2Fpic%2F20140328%2Fimages%2F105280_1395987922554.jpg'
  ),
  Post(
    title: 't2',
    author: 'a2',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546779117655&di=28cea8d22e256ccf99e0a20a06f06d8a&imgtype=0&src=http%3A%2F%2Fp2.img.cctvpic.com%2Fphotoworkspace%2Fcontentimg%2F2013%2F06%2F26%2F2013062618465254875.jpg',
  ),
  Post(
    title: 't3',
    author: 'a3',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546779117655&di=37ed7a737e868ab51f336f3263e00750&imgtype=0&src=http%3A%2F%2Fp1.img.cctvpic.com%2Fphotoworkspace%2Fcontentimg%2F2015%2F12%2F19%2F2015121921402053722.jpg'
  ),
  Post(
    title: 't4',
    author: 'a4',
    imageUrl: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546779117654&di=aae7e5c8d68f0c737247f4b9681351f2&imgtype=0&src=http%3A%2F%2Fimg.gmw.cn%2Fimgpolitics%2Fattachement%2Fjpg%2Fsite2%2F20130914%2Fbc305baf599b139dcdf502.jpg'
  )
];