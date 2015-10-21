%group WXMsgRecallPatch

%hook BaseMessageNodeView
- (bool) canShowRevokeMenu
{
    %orig;
    return YES;
}
%end

%hook BaseMsgContentViewController
- (bool) isMsgCanRevoke:(id)arg1
{
	%orig(arg1);
    return YES;
}
%end

%hook CMessageMgr
- (void) onRevokeMsg:(id)arg1
{
    return;
}
%end

%end

%ctor {
    %init(WXMsgRecallPatch);
}