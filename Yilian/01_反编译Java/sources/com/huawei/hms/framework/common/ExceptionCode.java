package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ExceptionCode {
    public static final int CANCEL = 1104;
    public static final java.lang.String CONNECT = "connect";
    public static final int CONNECTION_ABORT = 110205;
    public static final int CONNECTION_REFUSED = 110209;
    public static final int CONNECTION_RESET = 110204;
    public static final int CONNECT_FAILED = 110206;
    public static final int CRASH_EXCEPTION = 1103;
    public static final int INTERRUPT_CONNECT_CLOSE = 110214;
    public static final int INTERRUPT_EXCEPTION = 110213;
    public static final int NETWORK_CHANGED = 110216;
    public static final int NETWORK_IO_EXCEPTION = 1102;
    public static final int NETWORK_UNREACHABLE = 110208;
    public static final int PROTOCOL_ERROR = 110217;
    public static final java.lang.String READ = "read";
    public static final int READ_ERROR = 110203;
    public static final int ROUTE_FAILED = 110207;
    public static final int SHUTDOWN_EXCEPTION = 110218;
    public static final int SOCKET_CLOSE = 110215;
    public static final int SOCKET_CONNECT_TIMEOUT = 110221;
    public static final int SOCKET_READ_TIMEOUT = 110223;
    public static final int SOCKET_TIMEOUT = 110200;
    public static final int SOCKET_WRITE_TIMEOUT = 110225;
    public static final int SSL_HANDSHAKE_EXCEPTION = 110211;
    public static final int SSL_PEERUNVERIFIED_EXCEPTION = 110212;
    public static final int SSL_PROTOCOL_EXCEPTION = 110210;
    public static final int UNABLE_TO_RESOLVE_HOST = 110202;
    public static final int UNEXPECTED_EOF = 110201;
    public static final java.lang.String WRITE = "write";

    public static java.lang.String checkExceptionContainsKey(java.lang.Exception exc, java.lang.String... strArr) {
        java.lang.String strCheckStrContainsKey = checkStrContainsKey(com.huawei.hms.framework.common.StringUtils.toLowerCase(exc.getMessage()), strArr);
        if (!android.text.TextUtils.isEmpty(strCheckStrContainsKey)) {
            return strCheckStrContainsKey;
        }
        for (java.lang.StackTraceElement stackTraceElement : exc.getStackTrace()) {
            strCheckStrContainsKey = checkStrContainsKey(com.huawei.hms.framework.common.StringUtils.toLowerCase(stackTraceElement.toString()), strArr);
            if (!android.text.TextUtils.isEmpty(strCheckStrContainsKey)) {
                return strCheckStrContainsKey;
            }
        }
        return strCheckStrContainsKey;
    }

    public static java.lang.String checkStrContainsKey(java.lang.String str, java.lang.String... strArr) {
        if (android.text.TextUtils.isEmpty(str)) {
            return "";
        }
        for (java.lang.String str2 : strArr) {
            if (str.contains(str2)) {
                return str2;
            }
        }
        return "";
    }

    public static int getErrorCodeFromException(java.lang.Exception exc) {
        if (exc == null) {
            return NETWORK_IO_EXCEPTION;
        }
        if (!(exc instanceof java.io.IOException)) {
            return CRASH_EXCEPTION;
        }
        java.lang.String message = exc.getMessage();
        if (message == null) {
            return NETWORK_IO_EXCEPTION;
        }
        java.lang.String lowerCase = com.huawei.hms.framework.common.StringUtils.toLowerCase(message);
        int errorCodeFromMsg = getErrorCodeFromMsg(lowerCase);
        return errorCodeFromMsg != 1102 ? errorCodeFromMsg : exc instanceof java.net.SocketTimeoutException ? getErrorCodeSocketTimeout(exc) : exc instanceof java.net.ConnectException ? CONNECT_FAILED : exc instanceof java.net.NoRouteToHostException ? ROUTE_FAILED : exc instanceof javax.net.ssl.SSLProtocolException ? SSL_PROTOCOL_EXCEPTION : exc instanceof javax.net.ssl.SSLHandshakeException ? SSL_HANDSHAKE_EXCEPTION : exc instanceof javax.net.ssl.SSLPeerUnverifiedException ? SSL_PEERUNVERIFIED_EXCEPTION : exc instanceof java.net.UnknownHostException ? UNABLE_TO_RESOLVE_HOST : exc instanceof java.io.InterruptedIOException ? lowerCase.contains("connection has been shut down") ? INTERRUPT_CONNECT_CLOSE : INTERRUPT_EXCEPTION : errorCodeFromMsg;
    }

    public static int getErrorCodeFromMsg(java.lang.String str) {
        return str.contains("unexpected end of stream") ? UNEXPECTED_EOF : str.contains("unable to resolve host") ? UNABLE_TO_RESOLVE_HOST : str.contains("read error") ? READ_ERROR : str.contains("connection reset") ? CONNECTION_RESET : str.contains("software caused connection abort") ? CONNECTION_ABORT : str.contains("failed to connect to") ? CONNECT_FAILED : str.contains("connection refused") ? CONNECTION_REFUSED : str.contains("connection timed out") ? SOCKET_CONNECT_TIMEOUT : str.contains("no route to host") ? ROUTE_FAILED : str.contains("network is unreachable") ? NETWORK_UNREACHABLE : str.contains("socket closed") ? SOCKET_CLOSE : NETWORK_IO_EXCEPTION;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getErrorCodeSocketTimeout(java.lang.Exception r8) {
        /*
            r0 = 3
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = 0
            java.lang.String r2 = "connect"
            r0[r1] = r2
            r3 = 1
            java.lang.String r4 = "read"
            r0[r3] = r4
            r5 = 2
            java.lang.String r6 = "write"
            r0[r5] = r6
            java.lang.String r8 = checkExceptionContainsKey(r8, r0)
            int r0 = r8.hashCode()
            r7 = 3496342(0x355996, float:4.899419E-39)
            if (r0 == r7) goto L39
            r4 = 113399775(0x6c257df, float:7.3103804E-35)
            if (r0 == r4) goto L31
            r4 = 951351530(0x38b478ea, float:8.605591E-5)
            if (r0 == r4) goto L2a
            goto L41
        L2a:
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L41
            goto L42
        L31:
            boolean r8 = r8.equals(r6)
            if (r8 == 0) goto L41
            r1 = 2
            goto L42
        L39:
            boolean r8 = r8.equals(r4)
            if (r8 == 0) goto L41
            r1 = 1
            goto L42
        L41:
            r1 = -1
        L42:
            if (r1 == 0) goto L54
            if (r1 == r3) goto L50
            if (r1 == r5) goto L4c
            r8 = 110200(0x1ae78, float:1.54423E-40)
            return r8
        L4c:
            r8 = 110225(0x1ae91, float:1.54458E-40)
            return r8
        L50:
            r8 = 110223(0x1ae8f, float:1.54455E-40)
            return r8
        L54:
            r8 = 110221(0x1ae8d, float:1.54453E-40)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.common.ExceptionCode.getErrorCodeSocketTimeout(java.lang.Exception):int");
    }
}
