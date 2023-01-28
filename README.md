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




