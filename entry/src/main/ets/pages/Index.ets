import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  scroller: Scroller = new Scroller()

  build() {
    Column(){
      //根组件

      //置顶栏
      Row(){

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



      //主体滚动栏
      Scroll(this.scroller){

        //滚动栏根组件
        Column({space:10}){



          Text('欢迎使用智慧零碳工厂监测平台')
            .fontSize(24.8)
            .fontWeight(700)

          Image($rawfile('logo_picture.jpg'))
            .width(200)
            .borderRadius(100)
            .shadow({
              radius:100,
              color:Color.Green
            })
            .margin({top:40,bottom:30})

          Text('绿锦升会为您提供专业高效的服务')
            .fontSize(22)
            .fontWeight(600)
            .margin({top:10})



          Text('请填写以下信息:')
            .fontSize(21)
            .fontWeight(500)
            .margin({top:50,bottom:10})
            .alignSelf(ItemAlign.Start)

          //基本信息栏
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


          //项目信息栏
          Column(){
            //项目信息栏
            Text('项目具体信息')
              .fontSize(20)

            Divider()
              .strokeWidth(2)
              .color(Color.Black)

            //公司情况
            Column(){

              Text('公司现状：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请简要描述公司现状'})
                .height(80)
            }
            .width('100%')

            //需求
            Column(){

              Text('需求：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请尽可能清晰的描述需求'})
                .height(150)

              Text('直接上传文件：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              Column({space:20}){
                //上传文件区域
                Text('支持.pdf/.pptx/.zip/.doc格式文件')
                  .fontSize(18)
                  .fontColor('#ff928f8f')

                Image($rawfile('up_load.svg'))
                  .width(30)

                Text('点击选择文件')
                  .fontSize(18)
                  .fontColor('#ff928f8f')

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



          //时间预约栏
          Column(){
            Text('面谈预约')
              .fontSize(20)

            Divider()
              .strokeWidth(2)
              .color(Color.Black)

            //面谈时间预约
            Column(){
              Text('期望的面谈日期：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'20xx年/xx月/xx日'})
            }

            //期望地点预约
            Column(){
              Text('期望的面谈地点：')
                .fontSize(20)
                .alignSelf(ItemAlign.Start)
                .fontWeight(400)
                .margin({top:20})

              TextInput({placeholder:'请输入面谈地点'})
            }


          }
          .width('100%')
          .margin({top:20})



          //提交按钮
          Button('确认提交')
            .margin({top:30,bottom:80})
            .width(300)
            .fontSize(20)
            .opacity(1)
            .stateStyles({
              pressed:{
                .opacity(0.5)
              }
            })


        }
        .width('90%')
        .backgroundColor(Color.White)
        .padding({top:20,left:5,right:5})



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