
import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "Welcome" in edify.script[i]:
      edify.script[i] = """ui_print(" ");
ui_print("*****************************");
ui_print("*  ZTE U5 Baidu Cloud Rom   *");
ui_print("*  ^.^     Welcome     ^.^  *");
ui_print("* http://weibo.com/ccfxny   *");
ui_print("*****************************");"""
      return


def FullOTA_InstallEnd(info):
    RemoveDeviceAssert(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
