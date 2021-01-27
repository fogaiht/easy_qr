#import "EasyQrPlugin.h"
#if __has_include(<easy_qr/easy_qr-Swift.h>)
#import <easy_qr/easy_qr-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "easy_qr-Swift.h"
#endif

@implementation EasyQrPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEasyQrPlugin registerWithRegistrar:registrar];
}
@end
