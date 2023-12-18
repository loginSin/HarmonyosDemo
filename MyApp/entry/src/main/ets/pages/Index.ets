import ability from '@ohos.ability.ability';
// 导入页面路由模块
import router from '@ohos.router';

import { StaticAdd } from 'mystaticlibrary'

import TestNapi from 'libmycpplibrary.so'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        // 添加按钮，以响应用户点击
        Button() {
          Text('Next')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        // 跳转按钮绑定onClick事件
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Next' button.`)

          this.message = "StaticAdd " + StaticAdd(2 ,3) + "\n"
          this.message += "NativeAdd " + TestNapi.add(2,3);
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}