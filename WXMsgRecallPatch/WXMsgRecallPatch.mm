#line 1 "/Users/Zheng/Desktop/WXMsgRecallPatch/WXMsgRecallPatch/WXMsgRecallPatch.xm"
#include <logos/logos.h>
#include <substrate.h>
@class CMessageMgr; @class BaseMessageNodeView; @class BaseMsgContentViewController; 


#line 1 "/Users/Zheng/Desktop/WXMsgRecallPatch/WXMsgRecallPatch/WXMsgRecallPatch.xm"
static bool (*_logos_orig$WXMsgRecallPatch$BaseMessageNodeView$canShowRevokeMenu)(BaseMessageNodeView*, SEL); static bool _logos_method$WXMsgRecallPatch$BaseMessageNodeView$canShowRevokeMenu(BaseMessageNodeView*, SEL); static bool (*_logos_orig$WXMsgRecallPatch$BaseMsgContentViewController$isMsgCanRevoke$)(BaseMsgContentViewController*, SEL, id); static bool _logos_method$WXMsgRecallPatch$BaseMsgContentViewController$isMsgCanRevoke$(BaseMsgContentViewController*, SEL, id); static void (*_logos_orig$WXMsgRecallPatch$CMessageMgr$onRevokeMsg$)(CMessageMgr*, SEL, id); static void _logos_method$WXMsgRecallPatch$CMessageMgr$onRevokeMsg$(CMessageMgr*, SEL, id); 



static bool _logos_method$WXMsgRecallPatch$BaseMessageNodeView$canShowRevokeMenu(BaseMessageNodeView* self, SEL _cmd) {
    _logos_orig$WXMsgRecallPatch$BaseMessageNodeView$canShowRevokeMenu(self, _cmd);
    return YES;
}




static bool _logos_method$WXMsgRecallPatch$BaseMsgContentViewController$isMsgCanRevoke$(BaseMsgContentViewController* self, SEL _cmd, id arg1) {
	_logos_orig$WXMsgRecallPatch$BaseMsgContentViewController$isMsgCanRevoke$(self, _cmd, arg1);
    return YES;
}




static void _logos_method$WXMsgRecallPatch$CMessageMgr$onRevokeMsg$(CMessageMgr* self, SEL _cmd, id arg1) {
    return;
}




static __attribute__((constructor)) void _logosLocalCtor_f0225b01() {
    {Class _logos_class$WXMsgRecallPatch$BaseMessageNodeView = objc_getClass("BaseMessageNodeView"); MSHookMessageEx(_logos_class$WXMsgRecallPatch$BaseMessageNodeView, @selector(canShowRevokeMenu), (IMP)&_logos_method$WXMsgRecallPatch$BaseMessageNodeView$canShowRevokeMenu, (IMP*)&_logos_orig$WXMsgRecallPatch$BaseMessageNodeView$canShowRevokeMenu);Class _logos_class$WXMsgRecallPatch$BaseMsgContentViewController = objc_getClass("BaseMsgContentViewController"); MSHookMessageEx(_logos_class$WXMsgRecallPatch$BaseMsgContentViewController, @selector(isMsgCanRevoke:), (IMP)&_logos_method$WXMsgRecallPatch$BaseMsgContentViewController$isMsgCanRevoke$, (IMP*)&_logos_orig$WXMsgRecallPatch$BaseMsgContentViewController$isMsgCanRevoke$);Class _logos_class$WXMsgRecallPatch$CMessageMgr = objc_getClass("CMessageMgr"); MSHookMessageEx(_logos_class$WXMsgRecallPatch$CMessageMgr, @selector(onRevokeMsg:), (IMP)&_logos_method$WXMsgRecallPatch$CMessageMgr$onRevokeMsg$, (IMP*)&_logos_orig$WXMsgRecallPatch$CMessageMgr$onRevokeMsg$);}
}
