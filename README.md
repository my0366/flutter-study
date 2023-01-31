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
위젯 위에 위젯을 표시할 수 있다.

- SizedBox
위젯과 위젯 사이에 빈 공간을 추가할 때 자주 사용된다.

- Container 
기본적으로 최대한의 공간을 차지하여 표시한다.그리고 Container 내의 자식 위젯이 생성되면 Container위젯은 자식 위젯의 크기만큼 조정되어서 표시된다.

- Padding
자식 위젯 주위에 padding을 표시한다.

- SafeArea
Swift의 SuperView에 상반 되는 개념으로 상태바나 좌,우,하단터치바에 겹쳐서 표시되지 않게한다. 

공식 문서를 참고하여 튜토리얼 진행 -> LayoutTutorial.dart로 작업 + 상호작용 추가하기 진행 해보았습니다

출처 : https://flutter-ko.dev/docs/development/ui/layout/tutorial\

## Navigator

- Navigator API
스택 형식으로 하위 위젯들을 관리하는 위젯

스택 관리의 두 가지 방법
- Navigator.push
Swift pushViewController와 비슷한 개념, 해당 Navigate Stack에 View를 push하는 형식
- Navigator.pop
Swift PopViewController와 비슷한 개념, 한 페이지 이전으로 돌아가며 Stack에서 한 개의 뷰를 pop하는 형식


Navigator를 사용하지 않아도 Scaffold 위젯을 사용하면 BackButton이 자동으로 추가될 수 있음.

- Pages API
Route 스택을 통해 경로를 표시하고 해당 경로로 이동

route에 경로를 선언하며, interaction에 pushNamed를 통해 화면 이동

돌아올 때에는 Navigator.pop으로 되돌아가기 수행

Navigate 폴더에 진행해서 파일 정리해두었습니다.

## Animate

- Implicit Animation

애니메이션이 이미 프로그래밍 되어있거나, 스타일이 입혀져있다

애니메이션을 시작 타이밍을 지정할 필요가 없다. 값이 변함에 따라 자동으로 애니메이션이 일어난다.

- Explicit Animation

위젯에서는 제공하지 않는 애니메이션 커스터마이징을 할 수 있다.

애니메이션을 컨트롤하기 위해 AnimationController를 등록해야 한다.
AnimationBuilder를 사용해서 내 입맛대로 애니메이션을 구현할 수 있다.
리스너, 티커 등 커스터마이징을 위한 다른 요소를 등록한다.
반드시 애니메이션의 트리거를 지정해줘야한다.


## Sliver

화면 헤더를 동적으로 표현하는 위젯이다.

하단 스크롤을 할 때 AppBar를 축소, 확대하는 애니메이션을 얻을수 있다.

어떤위젯인지는 알겠는데 자세하게는 잘 모르겠습니다.

## GridView
![grid_view](https://user-images.githubusercontent.com/72657893/215667988-7b06d3e2-92a2-4ee9-97a5-8d67c309d983.png)

화면에 grid 형태로 widget들을 배치할 수 있도록하고, listView와 마찬가지로 스크롤 기능이 제공되며, 구현할때 두 가지를 꼭 정의해줘야하며 생성하는 방법에는 4가지가 있다.

- GridView
- GridView.count
- GridView.builder
- GridView.extent

우선 GridView.count를 생성하는데 편하며, delegate를 지정하지 않고 child에 widget를 list형식으로 넣어서 구현가능하다.
GridView.count()를 제외하고 나머지위 3개는 필수 구현해줘야하는 gridDelegate, children이 있다.


delegate는 대리자로서, 실제 구현은 외부에 위임하고, 내부에서는 외부에서 구현한 메소드를 참고하게 된다.
내부 구현해야되는 프로퍼티는 아래 4개가 있다.
- crossAxisCount : crossAxis 방향으로 몇개의 grid를 배치할 것인지 결정
- crossAxisSpacing : 그리드 사이의 좌우 간격
- mainAxisSpacing : 그리드 사이의 수직 간격
- childAspectRatio : child의 가로 세로 비율

## ListView
![스크린샷 2023-01-31 오후 1 51 32](https://user-images.githubusercontent.com/72657893/215668515-8d6e3f43-5165-4c7b-9201-80e2e7eb7732.png)

ListView 는 가장 일반적으로 사용되는 스크롤 위젯이며. 스크롤 방향으로 자식을 차례로 표시한다.

ListView 를 구성하는 네 가지 옵션이 있다
- ListView
목록을 구성 하려면 실제로 표시되는 자식만이 아니라 ListView에 표시될 수 있는 모든 자식에 대해 작업을 수행해야 하기 때문에 소수의 자식이 있는 목록 보기에 적합하다.
- ListView.builder
 필요에 따라 자식을 빌드하는 IndexedWidgetBuilder를 사용해 실제로 표시되는 자식에 대해서만 호출되기 때문에 이 생성자는 자식위젯이 많은 경우에 적합하다.
- ListView.separated
두 개의 IndexedWidgetBuilder를 사용해 필요에 따라 자식 항목을 separatorBuilder 빌드하고 자식 항목 사이에 나타나는 구분자 자식을 유사하게 빌드합니다. 이 생성자는 고정된 수의 자식이 있는 목록 보기에 적합합니다.
- ListView.custom
자식 위젯을 커스텀할 수 있는 기능을 제공하는 SliverChildDelegate 를 사용해서, SliverChildDelegate 는 실제로 보이지 않는 자식의 크기를 추정하는데 사용되는 알고리즘을 제어할 수 있습니다.

## Refresh Indicator

스크롤 가능한 리스트 형식의 위젯을 pull down 하거나 다른 이벤트에 추가해서 trigger를 작동시키면 refresh가 발생한다.

- onRefresh 내에 새로 고침시 일어날 함수 실행이 가능하며, return 값으로는 Future Type 완료됐을 경우 refreshIndicator가 사라지게 된다.

- trigger를 통해 새로고침은 refreshIndicatorKey를 등록해서 등록된 키의 onRefresh 함수를 실행시킬수 있다.
ex) final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();


## PageView

페이지별로 작동하는 스크롤 가능한 목록이며, 페이지 뷰의 각 자식은 뷰포트와 같은 크기여야 한다.

property에 child를 추가할 경우 해당 child count만큼 페이지가 생성 된다.

페이지를 이동하는 방향을 조정하려면 scrollDirection에서 Axis를 vertical, horizental을 통해 변경가능하다.

## NestedScrollView
<img width="346" alt="스크린샷 2023-01-30 오후 2 33 00" src="https://user-images.githubusercontent.com/72657893/215668070-68ac3fbb-039c-4d20-aafd-f27880aab64b.png">
위 사진과 같이 AppBar 하단에 Tabbar 위젯을 배치하고, 해당 탭 마다 서로 다른 스크롤 뷰를 보여줄수 있게 하는 위젯이다.

탭 바는 클릭 및 페이지 뷰 처럽 제스처를 통해 페이지 전환이 가능하다.

## CustomScrollView

슬리버를 이용해 커스텀(목록, 그리드 및 확장 헤더와 같은 다양한 스크롤 효과) 스크롤뷰를 만들수 있는 위젯이다.

CustomScrollView의 property
- slivers 
Array형식으로 Sliver를 이용해 다양한 슬리버를 조합해서 사용가능하게 해준다.

ex) SliverAppBar, SliverGrid, SliverList등 다양한 조합 가능

## ScrollBar

ListView나 GridView같이 스크롤 가능한 위젯이 있을 경우 ScrollBar로 감싸주어 Scroll Indicator를 보여주는 위젯이다

trackVisibility : 스크롤바를 보여줄지 bool값으로 정의
thumbVisibility : 스크롤중이 아니더라도 스크롤바를 보여줄지 bool값으로 정의
radius : 스크롤바의 radius 정의 
controller : ScrollController를 구현하는데 상용되는 컨트롤러 저으이
notificationPredicate : ScrollNotification을 처리해야하는지 정의

## SingleChildScrollView
![스크린샷 2023-01-31 오후 1 50 58](https://user-images.githubusercontent.com/72657893/215668454-c4acec11-5f4e-46ff-80d8-440df0e50591.png)
스크롤 가능한 자식 위젯을 하나만 가지는 것이다.

자식 위젯이 하나인데 그 위젯이 너무 작아서 화면을 다 못 채우거나, 화면 보다 더 큰 경우 스크롤 뷰로 감싸서 보여주는 위젯이다.

스크롤뷰의 하위 클래스로서 스크롤뷰의 property를 다 사용가능하며 오류가 나는 화면들을 모두 정상적으로 표현가능하게 만들어준다.

만약 SingleChild위젯으로 감싸지 않으면 아래 사진처럼 에러가 난다.

## Input

- Form

여러양식의 필드위젯을 그룹화 시킬수 있는 위젯이다

각 개별 위젯은 FormField 위젯으로 Wrap되여야하며 Form위젯은 모든 자식위젯들의 부모위젯이다ㅣ.

Form의 자식위젯을 save,vaildation check등을 하기위해 FormState에서 상황에 맞는 메서드를 호출해서 사용가능하다

FormState는 GlobalKey, Form.of 두 가지 방법을 통해 Form의 상태를 관리할 수 있다.

- TextFormField
<img width="301" alt="스크린샷 2023-01-31 오후 12 56 38" src="https://user-images.githubusercontent.com/72657893/215668165-54c03475-4468-425f-840a-484db07ad4ee.png">
TextField를 포함하고 있는 Form위젯이다.

Form형식으로 자식 위젯(TextFormField)들의 상태를 관리를 편하게 사용할 수있다. 

Form을 부모 위젯으로 가지고 있지 않아도 되며, TextField property를 모두 사용가능하다(TextCapitalization,TextStyle 등등).

- RawKeyboardListener

사용자가 키보드 위를 누르거나 놓을때마다 콜백을 호출해서 액션을 지정할 수 있는 위젯

property

autofocus
 
범위 내에서 다른 노드가 현재 포커스되어 있지 않을 때 이 위젯이 초기 포커스로 선택되었는지

foucsNode
 
위젯에 키보드 포커스가 있는지 여부 

includeSemantics
 
위젯의 시맨틱 정보

onKey
 
위젯이 키보드 이벤트를 수신할 때마다 호출된다.

## Text

- DefaultTextStyle
명시적 스타일이 없는 텍스트 위젯을 만들때 사용한다

- Text
단일 스타일의 텍스트 위젯이며, 레아이웃에 따라 줄이 끊어지거나 ...으로 보일수 있다.

스타일 선택은 옵션이며, 선택하지 않았을 경우 기본값으로 DefaultTextStyle을 사용한다.

Text에 상호작용을 추가하려면 GestureDetector.onTap을 이용해 GestrueDetector 위젯애 텍스트를 하위 위젯으로 추가한다.

- RichText

html에서 span과 같은 기능을 수행할 수 있으며, 다양한 스타일을 사용하는 텍스트를 표시할 수 있다.

TextSpan 위젯은 명시적으로 스타일을 지정해주어야하며, text에는 처음에 올 텍스트, children에는 자식 위젯으로 올 텍스트 위젯을
명시해준다.

추가적으로 Selectable Text 위젯을 만들려면 property중 selectionRegistrar 및 selectionColor로 Text를 상호작용
가능하게 만들어줄 수 있다.(위의 Text위젯도 가능하다.)


## Styling

- MediaQuery

사용자의 화면 크기를 얻어내서 반응형으로 위젯을 구현하기 위해 사용되는 위젯

아래의 property를 이용해서 각 조건에 맞는 사이즈마다 위젯을 업데이트 해서 표시할 수도 있다.

Property

size             화면 크기 size 
 
size.height      화면 높이 
 
size.width       화면 넓이 
 
devicePixelRatio 화면 배율    
 
padding.top      상단바 높이

- Padding

지정된 패딩만큼 위젯을 축소하여 자식이 더 작은 크기로 레이아웃하도록 합니다.그 후 자식 위젯을 크기에 맞게 크기를 조정하고 부모 위젯(패딩)에 의해 확대되어 효과적으로 자식 주위에 빈 공간을 만듭니다

Property
 
padding  EdgeInsets 제약조건 명시
 
child    자식 위젯 명시

- Theme

Theme을 정의 해서 편리하게 이용가능하다.
 
Theme.of로 ThemeData를 생성해 MaterialApp 내의 자식 위젯에 대한 전체적인 테마 구성을 정의한다.
 
해당 메서드는 가장 가까운 BuildContext 부모에 대해 지정된 ThemeData 값을 찾습니다. 

정리해서 개발하는데 미리 테마를 정의 해놓고, 그 정의해둔 테마를 MaterialApp 디자인때 편리하게 이용가능하게 도와주는 위젯이다.

ThemeData의 property
 
primaryColor : 앱 바의 색상 정의
 
bodyText : 앱 바 제외한 화면의 텍스트 컬러 정의
 
accentColor : FloatingActionButton 컬러 정의
![material_app_theme_data](https://user-images.githubusercontent.com/72657893/215681628-f52ca76a-b679-4b24-b995-bc67e910ce06.png)

참고 : https://mechurak.github.io/2022-10-10_flutter-theme/ 및 공식 문서



