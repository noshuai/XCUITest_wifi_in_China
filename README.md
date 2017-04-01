# XCUITest_wifi_in_China
验证在中国大陆国行手机上, XCUITest无法使用网络的问题
问题描述:
硬件: iPhone6S 国行和港行手机(两者差距在于国行手机多了一个功能: Settings-> WLAN -> Apps Using WLAN & Cellular功能)
软件: iOS10.3系统
同样运行XCUITest, 港行手机可以正常执行, 国行手机会提示{Error Domain=kCFErrorDomainCFNetwork Code=-1009 "(null)" UserInfo={_kCFStreamErrorCodeKey=50, _kCFStreamErrorDomainKey=1}}, NSErrorFailingURLStringKey=http://cn.bing.com/, NSErrorFailingURLKey=http://cn.bing.com/, _kCFStreamErrorDomainKey=1, _kCFStreamErrorCodeKey=50, NSLocalizedDescription=The Internet connection appears to be offline.}" - Error Domain=NSURLErrorDomain Code=-1009 "The Internet connection appears to be offline." UserInfo={NSUnderlyingError=0x170241620 {Error Domain=kCFErrorDomainCFNetwork Code=-1009 "(null)" UserInfo={_kCFStreamErrorCodeKey=50, _kCFStreamErrorDomainKey=1}}, NSErrorFailingURLStringKey=http://cn.bing.com/, NSErrorFailingURLKey=http://cn.bing.com/, _kCFStreamErrorDomainKey=1, _kCFStreamErrorCodeKey=50, NSLocalizedDescription=The Internet connection appears to be offline.}
