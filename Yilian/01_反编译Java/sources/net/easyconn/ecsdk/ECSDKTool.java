package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public class ECSDKTool {
    public static final java.lang.String TAG = "ECSDKTool";

    public static net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo[] GetNetInterfaceInfo() throws java.net.SocketException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            java.util.Enumeration<java.net.NetworkInterface> networkInterfaces = java.net.NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                java.net.NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                android.util.Log.d(TAG, "GetNetInterfaceInfo discovery ifname=" + networkInterfaceNextElement.getName() + ",displayName=" + networkInterfaceNextElement.getDisplayName());
                for (java.net.InterfaceAddress interfaceAddress : networkInterfaceNextElement.getInterfaceAddresses()) {
                    java.net.InetAddress address = interfaceAddress.getAddress();
                    if (!address.isLoopbackAddress() && networkInterfaceNextElement.isUp()) {
                        java.lang.String hostAddress = address.getHostAddress();
                        android.util.Log.d(TAG, "GetNetInterfaceInfo ip = " + hostAddress);
                        if (address.getHostAddress().indexOf(":") <= 0) {
                            if (!isValidIpAddress(hostAddress)) {
                                break;
                            }
                            java.lang.String strCalcMaskByPrefixLength = calcMaskByPrefixLength(interfaceAddress.getNetworkPrefixLength());
                            android.util.Log.d(TAG, "maskAddress=" + strCalcMaskByPrefixLength + " subnetAddress" + calcSubnetAddress(hostAddress, strCalcMaskByPrefixLength));
                            arrayList.add(new net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo(networkInterfaceNextElement.getName(), hostAddress, strCalcMaskByPrefixLength, networkInterfaceNextElement.supportsMulticast()));
                        }
                    }
                }
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo[] eCNetInterfaceInfoArr = new net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            eCNetInterfaceInfoArr[i] = new net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo(((net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo) arrayList.get(i)).ifa_name, ((net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo) arrayList.get(i)).ifa_address, ((net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo) arrayList.get(i)).ifa_netmask, ((net.easyconn.ecsdk.ECTypes.ECNetInterfaceInfo) arrayList.get(i)).supportsMulticast);
        }
        return eCNetInterfaceInfoArr;
    }

    public static long byte4ToLong(byte[] bArr) {
        long j = 0;
        if (bArr != null && bArr.length >= 4) {
            for (int i = 0; i < 4; i++) {
                j += (bArr[i] & 255) << (i * 8);
            }
        }
        return j;
    }

    public static int byteToInt(byte[] bArr) {
        if (bArr == null || bArr.length > 4) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i += (bArr[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public static java.lang.String calcMaskByPrefixLength(int i) {
        int i2 = (-1) << (32 - i);
        int[] iArr = new int[4];
        for (int i3 = 0; i3 < 4; i3++) {
            iArr[3 - i3] = (i2 >> (i3 * 8)) & 255;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("");
        sbO.append(iArr[0]);
        java.lang.String string = sbO.toString();
        for (int i4 = 1; i4 < 4; i4++) {
            java.lang.StringBuilder sbQ = e.a.c.a.a.q(string, ".");
            sbQ.append(iArr[i4]);
            string = sbQ.toString();
        }
        return string;
    }

    public static java.lang.String calcSubnetAddress(java.lang.String str, java.lang.String str2) throws java.net.UnknownHostException {
        java.lang.String str3 = "";
        try {
            java.net.InetAddress byName = java.net.InetAddress.getByName(str);
            java.net.InetAddress byName2 = java.net.InetAddress.getByName(str2);
            byte[] address = byName.getAddress();
            byte[] address2 = byName2.getAddress();
            int length = address.length;
            int[] iArr = new int[length];
            for (int i = 0; i < length; i++) {
                iArr[i] = address[i] & address2[i] & 255;
            }
            str3 = "" + iArr[0];
            for (int i2 = 1; i2 < length; i2++) {
                str3 = str3 + "." + iArr[i2];
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        return str3;
    }

    public static boolean isValidIpAddress(java.lang.String str) {
        return (str == null || str.isEmpty() || str.equals("0.0.0.0") || !str.matches("^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$")) ? false : true;
    }
}
