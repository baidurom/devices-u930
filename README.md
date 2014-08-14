说明:
  基于官方U930-Device做示范,添加releasetools.py文件,在刷机脚本中自动增添头顶的个人信息或者去除刷机脚本中的机型验证

文件列表
releasetools1替换验证为个人信息.py
releasetools1只删除验证.py
releasetools2保留验证添加个人信息.py
releasetools2添加信息和去验证.py

使用方法,将上面四个文件任意一个重命名为releasetools.py即可在make编译的时候自动调用

原理:
文件组1为直接查找刷机脚本中的ro.product字符,替换为空达到去验证,或者替换为下面的个人信息来实现目的,大家可自行修改为自己的机型和信息
ui_print(" ");
ui_print("*****************************");
ui_print("*  ZTE U930 Baidu Cloud Rom *");
ui_print("*  ^.^     Welcome     ^.^  *");
ui_print("*  http://weibo.com/ccfxny  *");
ui_print("*****************************");

文件组2的两个文件涉及到修改源码根目录/tools/releasetools/ota_from_target_files文件
主要修改加入一行
  script.Print("*Welcome Flash Baidu Yun Rom*")
来实现在不删除机型验证的情况下,替换带有welcome字样的一条语句来增加个人信息.
具体插入位置搜索下面代码中的上下文来确定插入
我这里插入第7行,刚好在机型验证后插入.
  #if not OPTIONS.omit_prereq:
  #  ts = GetBuildProp("ro.build.date.utc", input_zip)
  #  script.AssertOlderBuild(ts)

  AppendAssertions(script, input_zip)
  device_specific.FullOTA_Assertions()
  script.Print("*Welcome Flash Baidu Yun Rom*")
  script.ShowProgress(0.5, 0)

  if OPTIONS.wipe_user_data:
    script.FormatPartition("/data")
```````````````````````````````````````````````````````````````````````````````````````````````
weibo.com/ccfxny
百度行云开发组出品
