# flutter_study

Flutter Study project.

## Flutter LifeCycle

![lifecycle](https://user-images.githubusercontent.com/72657893/214978729-4099c277-c37c-44da-baa5-be5e95890c45.jpg)

# Stateful, Stateless

Stateless는 그대로 정적인 Widget을 말하며, 처음 그려지고 난 이후에 변경되지않아도 되는 위젯이다.

Stateful Widget은 업데이트가 필요한 위젯이며, State를 통해 상태를 관리한다.

일반적으로 Widget이름 앞에 _를 붙여 상태 class를 만들어 아래에 화면에 표시 되는 모든 Component들을 선언한다.

lib/State 폴더 안에 예시 두개 + Tap Gesture(Stateless) 공식 문서 참고해서 만들어뒀습니다.

## Const 

Const로 선언된 변수의 경우 그 코드의 수명기간동안 변경되지않는것을 명시한다.

만약 Const로 선언되지 않았다면 수명기간동안 변경되지않는지 알 수 없기 때문에 메모리에서 각각 다른 변수를 생성한다

하지만 Const로 선언된 변수는 변경되지 않는다는것을 명시해놓았기 때문에 복사본을 만들어 메모리를 절약할 수 있다

게다가 메모리의 절약만이 아니라 핫 리로드 성능까지 향상시킨다.(변경되지 않는 개체를 다시 빌드 하지 않음)

출처 : https://medium.com/flutter-community/the-flutter-const-keyword-demystified-c8d2a2609a80

## Flutter Layout

- Column / Row
Column 위젯은 자식 위젯들을 세로로 정렬하여 표시하며. Column 위젯은 세로의 모든 영역을 차지한다.
Row 위젯은 자식 위젯들을 모두 가로로 정렬하여 표시하며, Row 위젯은 가로의 모든 영억을 차지한다.
mainAxisAlignment 파라미터를 이용하면, 자식 위젯들의 정렬을 변경할 수 있다.
- Center
자식 위젯들을 중앙에 표시한다.
- Expanded
Column 위젯 또는 Row 위젯과 함께 사용하여 웹에서의 flex와 같은 기능을 구현할 수 있다.
- Stack
위젯 위에 위젯을 표시할 수 있습니다
- SizedBox
위젯과 위젯 사이에 빈 공간을 추가할 때 자주 사용된다.
- Container 
기본적으로 최대한의 공간을 차지하여 표시한다.그리고 Container 내의 자식 위젯이 생성되면 Container위젯은 자식 위젯의 크기만큼 조정되어서 표시된다.
- Padding
자식 위젯 주위에 padding을 표시한다.
- SafeArea
Swift의 SuperView에 상반 되는 개념으로 상태바나 좌,우,하단터치바에 겹쳐서 표시되지 않게한다. 

공식 문서를 참고하여 튜토리얼 진행 -> LayoutTutorial.dart로 작업 + 상호작용 추가하기 진행 해보았습니다

출처 : https://flutter-ko.dev/docs/development/ui/layout/tutorial




