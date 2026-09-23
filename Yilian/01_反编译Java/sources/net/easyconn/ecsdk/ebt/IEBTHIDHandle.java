package net.easyconn.ecsdk.ebt;

/* loaded from: classes.dex */
public interface IEBTHIDHandle {
    void onKeyCodeData(int i);

    void onTouchEventData(net.easyconn.ecsdk.ECTypes.ECTouchEventData eCTouchEventData, net.easyconn.ecsdk.ECTypes.ECTouchEventType eCTouchEventType);
}
