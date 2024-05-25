import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  scroller: Scroller = new Scroller()

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


        Text('智慧零碳工厂监测平台')
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
      .height(60)
      .width('100%')
      .backgroundColor(Color.Black)
      .justifyContent(FlexAlign.SpaceBetween)




      Scroll(this.scroller){
        //主体滚动栏

        Column({space:10}){
          //滚动栏根组件


          Text('欢迎使用智慧零碳工厂监测平台')
            .fontSize(26)
            .fontWeight(700)

          Text('绿锦升会为您提供专业高效的服务')
            .fontSize(24)
            .fontWeight(600)
            .margin({top:10})

          Text('请填写以下信息:')
            .fontSize(22)
            .fontWeight(500)
            .margin({top:50,bottom:10})
            .alignSelf(ItemAlign.Start)


          Column(){
            //基本信息栏
            Text('公司基本信息')
              .fontSize(20)

            Divider()
              .strokeWidth(2)
              .color(Color.Black)

            Column(){
              //公司名称
              Text('公司名称：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请输入公司名称'})
            }
            .width('100%')


            Column(){
              //负责人
              Text('项目负责人：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请输入负责人姓名'})
            }
            .width('100%')


            Column(){
              //联系人电话
              Text('联系人电话：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请输入联系人电话'})
                .type(InputType.PhoneNumber)
            }
            .width('100%')


            Column(){
              //邮箱
              Text('邮箱：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请输入邮箱'})
            }
            .width('100%')


            Column(){
              //公司地址
              Text('公司地址：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请输入公司地址'})
            }
            .width('100%')

          }
          .width('100%')
          .margin({
            bottom:20
          })



          Column(){
            //项目信息栏
            Text('项目具体信息')
              .fontSize(20)

            Divider()
              .strokeWidth(2)
              .color(Color.Black)

            Column(){
              //需求
              Text('需求：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请尽可能清晰的描述需求'})
                .height(150)

              Text('也可以直接上传文件：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              Column(){
                //上传文件区域
                Text('支持.pdf/.pptx/.zip/.doc格式文件')

              }
              .width(320)
              .height(200)
              .margin({top:10})
              .justifyContent(FlexAlign.Center)
              .alignItems(HorizontalAlign.Center)
              .borderRadius(20)
              .backgroundColor('#ffeeeeee')

            }
            .width('100%')

          }
          .width('100%')

        }
        .width('90%')
        .backgroundColor(Color.White)
        .padding({top:20})



      }
      .width('100%')
      .scrollable(ScrollDirection.Vertical)//竖直滚动方式
      .height(840)
      .linearGradient({
        direction:GradientDirection.RightBottom,
        colors:[['#c415e3ee',0],['#ff37de07',1]]
      })
      .shadow({
        radius:80,
        color:Color.Black
      })

    }
    .width('100%')
    .height('100%')
  }
}