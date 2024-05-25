import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column(){
      //根组件
      Row(){
        //置顶栏
        Column(){
          //最上角叉子组件
          Image($rawfile('X.svg'))
            .height(20)
            .fillColor(Color.White)
            .onClick(()=>{
              router.back()
            })

        }
        .backgroundColor(Color.Black)
        .stateStyles({
          pressed:{
            .backgroundColor(Color.Gray)
          }
        })
        .height(30)
        .width(30)
        .margin({left:12,right:10})
        .justifyContent(FlexAlign.Center)


        Text('北京信息科技大学体育信息化平台')
          .fontColor(Color.White)
          .fontWeight(600)

        Column(){
          //右上角更多组件
          Image($rawfile('more_sport.svg'))
            .width(30)
        }
        .height(30)
        .width(30)
        .margin({right:10})
        .justifyContent(FlexAlign.Center)
        .backgroundColor(Color.Black)
        .stateStyles({
          pressed:{
            .backgroundColor(Color.Gray)
          }
        })

      }
      .flexBasis(60)
      .width('100%')
      .backgroundColor(Color.Black)
      .justifyContent(FlexAlign.SpaceBetween)
    }
  }
}