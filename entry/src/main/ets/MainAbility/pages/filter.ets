@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State outSetValue: number = 4000;
  scroll_sizes: Scroller = new Scroller;
  scroll_gender: Scroller = new Scroller;
  categories: SelectOption[] = [
    {value:"Laptop"},{value:'Smartphones'},{value:'Fashion'}, {value:'Toys'}];
  brands: SelectOption[] = [
    {value:"Dell"},{value:'Apple'},{value:'Samsung'}, {value:'Lenovo'}];
  build() {
    Column({space:5}){
      Flex({ justifyContent: FlexAlign.SpaceBetween }){
        Navigator({target:'pages/index',type: NavigationType.Back}) {
          Text('<').fontSize(25).fontWeight(FontWeight.Bolder);
        }
        Text('Filter').fontSize(25).fontWeight(FontWeight.Bolder);
        Text('..').fontSize(25).fontWeight(FontWeight.Bolder);
      }.padding({left: 20, right: 20, top: 20})
      Flex({ justifyContent: FlexAlign.SpaceBetween }){
        Text('Gender').fontSize(20).fontWeight(FontWeight.Bolder);

      }.padding(20)
      Scroll(this.scroll_gender) {
        Row({ space: 20 }) {
          Button('Male', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8);
          Button('Female', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
          Button('Both', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
        }
      }.scrollable(ScrollDirection.Horizontal);
      Flex() {
        Text('Category').fontSize(20).fontWeight(FontWeight.Bolder).textAlign(TextAlign.Start);
      }.padding({left:20,right:20,top:20});
      Select(this.categories).margin({left:20}).value('Select Category');


      Flex() {
        Text('Brand').fontSize(20).fontWeight(FontWeight.Bolder).textAlign(TextAlign.Start);
      }.padding({left:20,right:20});
      Select(this.brands).margin({left:20}).value('Select Brand').fontColor(Color.Pink);

      Flex() {
        Text('Price').fontSize(20).fontWeight(FontWeight.Bolder).textAlign(TextAlign.Start);
      }.padding({left:20});
      Slider({value: 4000,min:0,max:10000,step:100,style:SliderStyle.OutSet})
        .blockColor(Color.Blue)
        .trackColor(Color.Gray)
        .selectedColor(Color.Blue)
        .showSteps(true)
        .showTips(true)
        .width(250)
        .align(Alignment.Start)
        .onChange((value: number, mode: SliderChangeMode) => {
            this.outSetValue = value
            console.info('value:' + value + 'mode:' + mode.toString())
          })
          Text('Below $ ' + this.outSetValue.toFixed(0)).fontSize(16).fontWeight(FontWeight.Bold)
      Flex() {
        Text('Sizes').fontSize(20).fontWeight(FontWeight.Bolder).textAlign(TextAlign.Start);
      }.padding({left:20});

      Scroll(this.scroll_sizes) {
        Row({ space: 20 }) {
          Button('6 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
          Button('7 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8);
          Button('8 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
          Button('9 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
          Button('10 inches', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(Color.Gray);
        }
      }.scrollable(ScrollDirection.Horizontal).margin(30);

      Row({ space: 20 }) {
        Button('Clear all', { type: ButtonType.Normal, stateEffect: true }).backgroundColor(Color.Gray).borderRadius(15).fontSize(15).width(100).height(60);
        Button('Add', { type: ButtonType.Normal, stateEffect: true }).borderRadius(15).fontSize(20).width(100).height(60);
        };

    }.width('100%')
  }
}

















