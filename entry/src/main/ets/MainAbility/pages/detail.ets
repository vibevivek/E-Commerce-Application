@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  scroll_sizes_available: Scroller = new Scroller;
  scroll_description: Scroller = new Scroller;
  @State value: number = 1;
  @State spidy: String = 'spiderman_many';
  build(){
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween }){
        Navigator({target:'pages/index',type: NavigationType.Back}) {
          Text('<').fontSize(25).fontWeight(FontWeight.Bolder);
        }
        Text('Detail').fontSize(25).fontWeight(FontWeight.Bolder);
        Text('..').fontSize(25).fontWeight(FontWeight.Bolder);
      }.padding({left: 20, right: 20, top: 20, bottom:40})

      Image($r('app.media.spiderman_many')).height(200).width(280).borderRadius(10);
//      ImageAnimator()
//        .images([
//          {
//            src: 'app.media.spiderman_both',
//            duration: 500,
//            width: 325,
//            height: 200,
//            top: 0,
//            left: 0
//          },
//          {
//            src: 'app.media.spiderman_both',
//            duration: 500,
//            width: 325,
//            height: 200,
//            top: 0,
//            left: 0
//          }
//        ]);

      Text('SpiderMan kit').fontSize(30).fontWeight(FontWeight.Bolder).fontColor(Color.Red);//.padding({left:50});

      Text('$200').fontSize(20).fontWeight(FontWeight.Bolder);

      //TODO
      //Text('Read more.....');
      Scroll(this.scroll_description){
        Text('This is a wonderful gift for all those who love SpiderMan especially for children it will increase their imagination power and also they  will enjoy playing with it................................................................................................................................')
          .fontColor('#cdcdcd')
          .fontSize(15);
      }.scrollable(ScrollDirection.Vertical).padding({left:40,right:40}).width(300).height(80);

      Flex({ justifyContent: FlexAlign.SpaceBetween }){
        Text('Color').fontSize(20).fontWeight(FontWeight.Bold);
        Row({space:5}){
          Button({ type: ButtonType.Circle, stateEffect: true }).borderRadius(8).backgroundColor(Color.Red);
          Button({ type: ButtonType.Circle, stateEffect: true }).borderRadius(8).backgroundColor(Color.Black);
          Button({ type: ButtonType.Circle, stateEffect: true }).borderRadius(8).backgroundColor(Color.Pink);
        }
        Counter() {
          Text(this.value.toString()).fontSize(18).fontColor(Color.White).fontWeight(FontWeight.Bolder);
        }
        .onInc(() => {
          this.value++
        })
        .onDec(() => {
          this.value--
        })
        .backgroundColor(Color.Blue);
      }.padding({left: 40, right:40, top: 20, bottom: 20});

      Flex({ justifyContent: FlexAlign.SpaceBetween }){
        Text('Available Sizes').fontSize(20).fontWeight(FontWeight.Bold);
      }.padding({left: 40, right:40, bottom: 20});

      Scroll(this.scroll_sizes_available) {
        Row({ space: 20 }) {
          Button('6 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
          Button('7 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8);
          Button('8 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
          Button('9 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
          Button('10 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
        }
      }.scrollable(ScrollDirection.Horizontal).padding({left:40,right:40});

      Flex({justifyContent:FlexAlign.SpaceBetween,direction: FlexDirection.Row}){
        Column(){
          Image($r('app.media.add_favorites')).width(60).height(60);
        }
        Column() {
          Button('Add to cart', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).width(140).height(60);
          //Image($r('app.media.add_favorites')).width(60).height(60);
        }
      }.padding({left:60,right:60,top:40})

    }
    .width('100%')

  }
}
