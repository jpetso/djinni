// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from token.djinni

#import "DBToken+Private.h"
#import "DBToken.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "DJIObjcWrapperCache+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface DBTokenCppProxy : NSObject<DBToken>

@property (nonatomic, readonly) ::djinni::DbxCppWrapperCache<::Token>::Handle cppRef;

- (id)initWithCpp:(const std::shared_ptr<::Token>&)cppRef;

@end

@implementation DBTokenCppProxy

- (id)initWithCpp:(const std::shared_ptr<::Token>&)cppRef
{
    if (self = [super init]) {
        _cppRef.assign(cppRef);
    }
    return self;
}

- (nonnull NSString *)whoami {
    try {
        auto r = _cppRef.get()->whoami();
        return ::djinni::String::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

@end

namespace djinni_generated {

class Token::ObjcProxy final
: public ::Token
, public ::djinni::DbxObjcWrapperCache<ObjcProxy>::Handle
{
public:
    using Handle::Handle;
    std::string whoami() override
    {
        @autoreleasepool {
            auto r = [Handle::get() whoami];
            return ::djinni::String::toCpp(r);
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto Token::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    if ([(id)objc isKindOfClass:[DBTokenCppProxy class]]) {
        return ((DBTokenCppProxy*)objc).cppRef.get();
    }
    return ::djinni::DbxObjcWrapperCache<ObjcProxy>::getInstance()->get(objc);
}

auto Token::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    if (auto cppPtr = dynamic_cast<ObjcProxy*>(cpp.get())) {
        return cppPtr->Handle::get();
    }
    return ::djinni::DbxCppWrapperCache<::Token>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[DBTokenCppProxy alloc] initWithCpp:p];
    });
}

}  // namespace djinni_generated
