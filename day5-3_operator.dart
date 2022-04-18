// void main() {
//   int num = 0;
//   num = num + 1;
//   num++;
//   // print("num의 값은");
//   // print(num);

//   num = num - 1;
//   num -= 1;
//   num--;

//   num *= 2;
//   int num2 = 20;
//   int num3 = 20;
//   num3 *= 2;
//   num2 ~/= 2;
//   print("num의 값은");
//   print(num2);
//   print(num3);
// }

//?는 조건 ? true : false 여서 조건이 true면 true 에 해당하는 명령만 수행

//??= 와 ??로null 판별

// int aaa = 111;
// aaa ??= 333;
// print(aaa);
// 이때 aaa가 111인데 ??하면 null 아닌 aaa에는 333이 들어갈 수 없으므로 111이 출력됨

// int a = 1, b = 2;
// print(a??b);
// 이때 a??로 보고 a가 null이 아니므로 a를 출력
// print(null??b);
// 이때 null?? 로보면 null은 null이니가 null 대신 b를 출력

// //print 만으로 bool 판별
// int num=1 일 때
// print(num is bool) : 1이니까 숫자라 bool 아님, false
// print (num is ! bool) : 1이니까 숫자라 bool이 아닌게 맞으므로, true

// if 문
main() {
  int num2 = 14;
  if ((num2) / 5 == 0) {
    // print 할 때 $를 사용해 고정할 수 있다.
    print("입력된 숫자 $num2는 5의배수입니다");
  } else {
    print("입력된 숫자 $num2는 5배수가 아니며 5로나눈 나머지값은${num2 % 5}이다");
  }
}

// switch case 구문
// 보통 +=, -=, *=으로 대입하는데 몫은 ~/를 사용
// switch(score ~/ 10){
//   case 9 :
//     print("A학점입니다");
//     break;
//   case 8 :
//     print("B학점입니다");
//     break;
//   case 7 :
//     print("C학점입니다");
//     break;
//   case 6 :
//     print("D학점입니다");
//     break;
//   default:
//     print('F학점입니다');
//     break;

// }

// 삼항연산자
bool isPublic = true;

var visibility = isPublic ? 'public' : 'private';

print(visibility);