## Travel-tour-project
### 基于uniapp开发一款景区导览小程序，前端是微信小程序，后端是node+express+mysql（功能包括：手机短信验证、活动报名、扫二维码集齐碎片领取奖品、智能路线推荐、智能语音播报等），mp-weixin文件可以直接在微信小程序运行

### 服务器是node+express：主要目的是将操作数据库得到的结果打包成JSON格式，再通过api接口形式返回，运行指令nodemon serve

## 具体功能实现原理：
### 1.短信验证是基于榛子云短信，注意zhenzisms.client.init('https://sms_developer.zhenzikj.com', 'appId', 'appSecret');放置自己的appId，appSecret
### 具体参考文档：
http://smsow.zhenzikj.com/doc/weixinmp_code_sdk_doc.html

### 2.智能语音原理是通过文字转语音，调用的是百度的语音api

### 3.地图导览默认是调用腾讯地图，若没安装腾讯地图，会调用高德地图

### 4.二维码目前仅供项目中的二维码，可设计自己喜欢的二维码，参考：https://www.liantu.com/
#### 其原理是在数据库中建立一个collect表，字段为phonenumber，model1，model2...model9，表示某手机用户在不同模块下的激活情况，
#### 当扫码成功，将对应模块的model变为true，并让对应图片显示出来。

### 5.项目报名：和上述原理一样，通过apply表，记录报名的用户和其所报名的项目


