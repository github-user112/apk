package net.easyconn.miracast;

/* loaded from: classes.dex */
public class MiracastConnectManager {
    @androidx.annotation.Keep
    public void wifiP2PManagerSetDeviceName(android.net.wifi.p2p.WifiP2pManager wifiP2pManager, android.net.wifi.p2p.WifiP2pManager.Channel channel, java.lang.String str, android.net.wifi.p2p.WifiP2pManager.ActionListener actionListener) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            android.net.wifi.p2p.WifiP2pManager.class.getDeclaredMethod("setDeviceName", android.net.wifi.p2p.WifiP2pManager.Channel.class, java.lang.String.class, android.net.wifi.p2p.WifiP2pManager.ActionListener.class).invoke(wifiP2pManager, channel, str, actionListener);
            e.e.a.g.c("wifiP2PManagerSetDeviceName setDeviceName  = " + str, new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    @androidx.annotation.Keep
    public void wifiP2PManagerSetWFDInfo(android.net.wifi.p2p.WifiP2pManager wifiP2pManager, android.net.wifi.p2p.WifiP2pManager.Channel channel, android.net.wifi.p2p.WifiP2pWfdInfo wifiP2pWfdInfo, android.net.wifi.p2p.WifiP2pManager.ActionListener actionListener) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            android.net.wifi.p2p.WifiP2pManager.class.getDeclaredMethod("setWFDInfo", android.net.wifi.p2p.WifiP2pManager.Channel.class, android.net.wifi.p2p.WifiP2pWfdInfo.class, android.net.wifi.p2p.WifiP2pManager.ActionListener.class).invoke(wifiP2pManager, channel, wifiP2pWfdInfo, actionListener);
        } catch (java.lang.Exception e2) {
            e.e.a.g.c(e.a.c.a.a.I(e2, e.a.c.a.a.o("enableWFDInfo wifiP2PManagerSetWFDInfo Exception  ")), new java.lang.Object[0]);
        }
    }
}
