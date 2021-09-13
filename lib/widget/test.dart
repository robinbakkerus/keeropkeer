class A {
  final String a;
  final String b;
  final String c;

  A(this.a, this.b, [this.c = '']);
  // A.c1(String a, String b) : this(a, b,'');

  // A.c2(String a, {String? b}) : this(a,b!,'');
}