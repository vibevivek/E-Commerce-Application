@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  scroll_category: Scroller = new Scroller();
  items_scroller: Scroller = new Scroller();
  @State counts: number = 1;

  @State active: boolean = false;

  build() {
//    Row() {
//      Column() {
//        Text(this.message)
//          .fontSize(50)
//          .fontWeight(FontWeight.Bold)
//      }
//      .width('100%')
//    }
//    .height('100%')
    Column({space:5}){
      Flex({ justifyContent: FlexAlign.SpaceBetween }){
        Image($r('app.media.app_icon')).width(40).height(40).borderRadius(10).onClick(()=>{this.counts++});
        Image($r('app.media.user_image')).width(40).height(40).borderRadius(10);
//        Badge({
//          count: this.counts,
//          maxCount: 99,
//          style: { color: 0xFFFFFF, fontSize: 16, badgeSize: 20, badgeColor: Color.Red }
//        }) {
//          Button('message')
//            .onClick(() => {
//              this.counts++
//            })
//            .width(100).height(50).backgroundColor(0x317aff)
//        }.width(100).height(50)
      }.padding(10)

      Flex(){
        Text('Discover this new world.').fontSize('20')
      }.padding({left:10})
      Flex({justifyContent: FlexAlign.SpaceBetween}) {
        Search({ value: 'search' }).width('200').alignSelf(ItemAlign.Start)
        Navigator({target:'pages/filter',type:NavigationType.Push}){
          //Text('Next').fontSize(20)
          Image($r('app.media.filter_icon')).width('40').height('40').backgroundColor(Color.Grey)
        }.active(this.active)
//        Button({ type: ButtonType.Circle, stateEffect: true }) {
//          Image($r('app.media.filter_icon')).width(20).height(20)
//        }.width(55).height(55).backgroundColor(0x317aff)

//        Button(){
//          Image($r('app.media.filter_icon')).width('40').height('40').backgroundColor(Color.Grey)
//        }
      }.padding({left:20, right:20})
      Text('Categories').textAlign(TextAlign.End).fontSize(20).fontWeight(FontWeight.Bold).margin({bottom: 10});//.padding({left:20});
      Scroll(this.scroll_category) {
        Row({ space: 10 }) {
          Button('Miscellaneous');
          Button('Gadgets').backgroundColor(Color.Grey);
          Button('Fashion').backgroundColor(Color.Grey);
          Button('Shoes').backgroundColor(Color.Grey);
        }
      }.scrollable(ScrollDirection.Horizontal).margin(10);
      Flex({ justifyContent: FlexAlign.SpaceBetween }){
        Text('Popular items').fontWeight(FontWeight.Bold).fontSize(20);
        Row({space: 5}) {
          Text('View All').fontWeight(FontWeight.Bold).fontSize(20);
          Button(">", { type: ButtonType.Normal, stateEffect: true }).width(20).height(20).padding(0).borderRadius(7)
        }
      }.padding({left:20, right:20})

      Grid(this.items_scroller){

        GridItem(){
          Navigator({target: 'pages/detail',type:NavigationType.Push}) {
            Column() {
              Image($r('app.media.Laptop_angle_view')).objectFit(ImageFit.Cover).width(135).height(100);
              Text('Brand new Laptop').fontSize(15).fontWeight(FontWeight.Bold);
              Text('$2000').fontWeight(FontWeight.Bolder).fontSize(20);
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(2)
            .borderRadius(10)
            .width(140)
            .height(150)
            .backgroundColor(Color.Pink);
          }
        }

        GridItem(){
          Navigator({target: 'pages/detail',type:NavigationType.Push}) {
            Column() {
              Image($r('app.media.Shoes_front_view')).objectFit(ImageFit.Fill).width(130).height(100);
              Text('Brand new Laptop').fontSize(15).fontWeight(FontWeight.Bold);
              Text('$2000').fontWeight(FontWeight.Bolder).fontSize(20);
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(2)
            .borderRadius(10)
            .width(140)
            .height(150)
            .backgroundColor(Color.Pink);
          }
        }

        GridItem(){
          Navigator({target: 'pages/detail',type:NavigationType.Push}) {
            Column() {
              Image($r('app.media.spiderman_many')).objectFit(ImageFit.Fill).width(135).height(100);
              Text('Brand new Laptop').fontSize(15).fontWeight(FontWeight.Bold);
              Text('$2000').fontWeight(FontWeight.Bolder).fontSize(20);
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(2)
            .borderRadius(10)
            .width(140)
            .height(150)
            .backgroundColor(Color.Pink);
          }
        }

        GridItem(){
          Navigator({target: 'pages/detail',type:NavigationType.Push}) {
            Column() {
              Image($r('app.media.tShirt')).objectFit(ImageFit.Cover).width(135).height(100);
              Text('Brand new Laptop').fontSize(15).fontWeight(FontWeight.Bold);
              Text('$2000').fontWeight(FontWeight.Bolder).fontSize(20);
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(2)
            .borderRadius(10)
            .width(140)
            .height(150)
            .backgroundColor(Color.Pink);
          }
        }

        GridItem(){
          Navigator({target: 'pages/detail',type:NavigationType.Push}) {
            Column() {
              Image($r('app.media.speaker')).objectFit(ImageFit.Cover).width(135).height(100);
              Text('Brand new Laptop').fontSize(15).fontWeight(FontWeight.Bold);
              Text('$2000').fontWeight(FontWeight.Bolder).fontSize(20);
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(2)
            .borderRadius(10)
            .width(140)
            .height(150)
            .backgroundColor(Color.Pink);
          }
        }

        GridItem(){
          Navigator({target: 'pages/detail',type:NavigationType.Push}) {
            Column() {
              Image($r('app.media.Smartphone_front_view')).objectFit(ImageFit.Cover).width(135).height(100);
              Text('Brand new Laptop').fontSize(15).fontWeight(FontWeight.Bold);
              Text('$2000').fontWeight(FontWeight.Bolder).fontSize(20);
            }
            .alignItems(HorizontalAlign.Start)
            .borderWidth(2)
            .borderRadius(10)
            .width(140)
            .height(150)
            .backgroundColor(Color.Pink);
          }
        }
      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(10)
      .height(420)
      .onScrollIndex((first: number) => {
        console.info(first.toString())
      });



      Flex({justifyContent:FlexAlign.SpaceBetween,direction: FlexDirection.Row}){
        Column(){
          Image($r('app.media.home_icon')).width(40).height(40)
          Text("Home").fontSize(10)
        }
        Column() {
          Image($r('app.media.category_icon')).width(40).height(40)
          Text("Categories").fontSize(10)
        }
        Column() {
          Image($r('app.media.notification_icon')).width(40).height(40)
          Text("Notification").fontSize(10)
        }
        Column(){
          Image($r('app.media.myCart_icon')).width(40).height(40)
          Text("My Cart").fontSize(10)
        }
      }.padding(20)


    }.width('100%')

  }



















}