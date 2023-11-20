class Model {
  String author;
  String quote;
  String img;

  Model({required this.author, required this.img, required this.quote});
}

List<Model> myQuotes = [
  Model(
      author: 'khushal',
      img:
          'https://images.unsplash.com/photo-1679027506214-b9e78b7c64dc?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      quote: 'think alot'),
  Model(
      author: 'Chris burkmenn',
      img:
          'https://i.pinimg.com/280x280_RS/00/c3/b2/00c3b24c39b8c459f8509d5eff262f49.jpg',
      quote: 'Remember why you started'),
  // Model(author: 'author', img: '', quote: 'Turn ideas into reality'),
  // Model(
  //     author: 'author',
  //     img: '',
  //     quote: 'Live a life that world make you jealous'),
];
