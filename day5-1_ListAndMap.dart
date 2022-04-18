// void main() {
//   print("리스트");
//   print("");
//   print("");
//   print("");
//   print("");
//   // 1. 리스트 만드는 법 List + 리스트명 = [];
//   print("1. 일반적인 리스트생성법- List + 리ㅏ스트명 = [] ;별도로 타입 지정 안하면 문자 숫자 다가능");

//   List threeKingdoms = [];
//   threeKingdoms.add('위');
//   threeKingdoms.add('1');
//   threeKingdoms.add(1);
//   print(threeKingdoms);
//   print('리스트 길이');
//   print(threeKingdoms.length);

//   // 1-1. < > generic 이라는 이름이다~
//   List<String> threeKingdoms2 = [];
//   // 2 . list에 value 추가할 때 add 사용
//   threeKingdoms2.add("we");
//   // 2-1. 아래 코드는 string만 가능하므로 숫자 1이 들어갈 수 없다.
//   // threeKingdoms2.add(1);
//   print(threeKingdoms2);
//   print("2. 타입 지정 리스트생성법-List <String 등> 리스트명 = [] 별도로 타입 지정 하면 해당 타입만 add 가능");

//   // 3. 정해진 길이의 list
//   var threeKingdoms3 = List<String>.filled(3, "");
//   // threeKingdoms3.add("we");
//   // 3-1. 요소 개별 접근 [] 를 통해 수정 or 바꾸기 or 초기화 가능
//   threeKingdoms3[0] = "we";
//   print("3. 길이 정해진 리스트생성법- var 변수 + 리스트명 = List <타입>. filled 개수, 공백");
//   print(threeKingdoms3);
//   print("");
//   print("");
//   print("");
//   print("");

// // Map 1. 정의 : key + value
//   print("map : 딕셔너리랑 똑같음. key + value");
//   print("apple : 사과면 key : value");
//   // 1) 정의 방법: Map 딕셔너리명 = {} ; 이때 세미콜론 필수, key : value, key : value로 작성
//   Map fruits = {
//     'apple': '사과',
//     'grpae': '포도',
//     "water": '물',
//   };

//   print(fruits);
//   print("key를 알고싶으면 []리스트 안에 value 넣기");
//   print("fruits[apple]하면 key인 apple 을 좇아 value 인 사과를 반환");
//   print(fruits['apple']);

//   // 2) 데이터 수정 및 추가
//   print(
//       "데이터 수정도 추가도 모두 맵명[key]=value; 로 작성. 이때, key가 기존에 존재하면 value가 수정되고 key 가 없으면 value가 추가");
//   print(fruits);
// }
