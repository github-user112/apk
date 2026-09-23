package f.a.i.m;

/* loaded from: classes.dex */
public class g {
    public static int A = 0;
    public static int B = -1;
    public static boolean a = false;
    public static boolean b = true;

    /* renamed from: c, reason: collision with root package name */
    public static java.util.Properties f2936c = null;

    /* renamed from: d, reason: collision with root package name */
    public static f.a.i.a f2937d = null;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f2938e = false;

    /* renamed from: f, reason: collision with root package name */
    public static net.easyconn.ecsdk.ECTypes.ECOptions f2939f = null;

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.Boolean f2940g = null;
    public static java.lang.Boolean h = null;
    public static int i = -1;
    public static int j = -1;
    public static int k = -1;
    public static int l = -1;
    public static int m = -1;
    public static int n = -1;
    public static int o = -1;
    public static int p = -1;
    public static int q = 2;
    public static boolean r = false;
    public static boolean s = false;
    public static boolean t = false;
    public static boolean u = false;
    public static java.lang.String v;
    public static java.lang.String w;
    public static java.lang.String x;
    public static int y;
    public static int z;

    public static boolean A(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_QT_MODE", "false"))).booleanValue();
    }

    public static boolean B(android.content.Context context) {
        if (G(context) == 1) {
            return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_VR_TIPS", "false"))).booleanValue();
        }
        return false;
    }

    public static boolean C(android.content.Context context) {
        if (G(context) == 1) {
            return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_WEATHER_INFO", "false"))).booleanValue();
        }
        return false;
    }

    public static boolean D(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("true") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_WIFI_ANDROID_SERVICE", "true"))).booleanValue();
    }

    public static boolean E(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("true") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_WIFI_IOS_SERVICE", "true"))).booleanValue();
    }

    public static boolean F(android.content.Context context) {
        return E(context) | D(context);
    }

    public static int G(android.content.Context context) {
        if (!h0(context)) {
            return 0;
        }
        try {
            A = java.lang.Integer.parseInt(f2936c.getProperty("FLAVOR"));
        } catch (java.lang.NumberFormatException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getPropertyFlavor NumberFormatException, e = ");
            sbO.append(e2.toString());
            e.e.a.g.a(sbO.toString());
            A = 0;
        }
        return A;
    }

    public static boolean H(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("FORCE_PUBLISH_ACCORDING_MDNS_LIST") : java.lang.Boolean.valueOf(f2936c.getProperty("FORCE_PUBLISH_ACCORDING_MDNS_LIST", "false"))).booleanValue();
    }

    public static boolean I(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("HANDLE_USB_DEVICE_IN_SERVICE", "false"))).booleanValue();
    }

    public static boolean J(android.content.Context context) {
        return h0(context) && java.lang.Integer.valueOf(f2936c.getProperty("TYPE_MIRROR_MODE", "0")).intValue() == 2;
    }

    public static int K(android.content.Context context) {
        android.graphics.Point point;
        int i2 = p;
        int i3 = q;
        if (i2 != i3) {
            o = -1;
            p = i3;
        }
        e.a.c.a.a.A(e.a.c.a.a.o("getPropertyMirrorHeight height = "), o);
        int i4 = o;
        if (i4 != -1) {
            return i4;
        }
        int iC = f.a.i.m.d.c();
        if (iC > 0) {
            o = iC;
            return iC;
        }
        if (!h0(context)) {
            return 0;
        }
        java.lang.String property = f2936c.getProperty(i0() ? "MIRROR_PORTRAIT_HEIGHT" : "MIRROR_HEIGHT");
        if (android.text.TextUtils.isEmpty(property)) {
            android.view.Display defaultDisplay = ((android.view.WindowManager) context.getSystemService("window")).getDefaultDisplay();
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                point = new android.graphics.Point();
                defaultDisplay.getRealSize(point);
            } else {
                point = new android.graphics.Point();
                defaultDisplay.getSize(point);
            }
            int i5 = point.x;
            int i6 = point.y;
            e.e.a.g.b("Screen width is %d, height is %d", java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6));
            o = i6;
        } else {
            o = java.lang.Integer.valueOf(property).intValue();
        }
        e.e.a.g.b("Screen height is %d", java.lang.Integer.valueOf(o));
        return o;
    }

    public static int L(android.content.Context context) {
        int iIntValue;
        android.graphics.Point point;
        int i2 = n;
        int i3 = q;
        if (i2 != i3) {
            m = -1;
            n = i3;
        }
        e.a.c.a.a.A(e.a.c.a.a.o("getPropertyMirrorWidth width = "), m);
        int i4 = m;
        if (i4 != -1) {
            return i4;
        }
        int iD = f.a.i.m.d.d();
        if (iD > 0) {
            m = iD;
            return iD;
        }
        if (!h0(context)) {
            return 0;
        }
        java.lang.String property = f2936c.getProperty(i0() ? "MIRROR_PORTRAIT_WIDTH" : "MIRROR_WIDTH");
        if (android.text.TextUtils.isEmpty(property)) {
            android.view.Display defaultDisplay = ((android.view.WindowManager) context.getSystemService("window")).getDefaultDisplay();
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                point = new android.graphics.Point();
                defaultDisplay.getRealSize(point);
            } else {
                point = new android.graphics.Point();
                defaultDisplay.getSize(point);
            }
            iIntValue = point.x;
            e.e.a.g.b("Screen width is %d, height is %d", java.lang.Integer.valueOf(iIntValue), java.lang.Integer.valueOf(point.y));
        } else {
            iIntValue = java.lang.Integer.valueOf(property).intValue();
        }
        m = iIntValue;
        e.e.a.g.b("Screen width is %d", java.lang.Integer.valueOf(o));
        return m;
    }

    public static int M(android.content.Context context) {
        if (!h0(context)) {
            return 0;
        }
        try {
            return java.lang.Integer.parseInt(f2936c.getProperty("EC_PRODUCT_TYPE", "0"));
        } catch (java.lang.NumberFormatException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getPropertyProductType NumberFormatException, e = ");
            sbO.append(e2.toString());
            e.e.a.g.a(sbO.toString());
            return 0;
        }
    }

    public static java.lang.String N(android.content.Context context) {
        return !h0(context) ? "" : f2936c.getProperty("QR_REGISTER_PRODUCT_CODE", "");
    }

    public static java.lang.String O(android.content.Context context) {
        return !h0(context) ? "" : f2936c.getProperty("QZ_CAR_DESCRIPTION", "");
    }

    public static float P(android.content.Context context) {
        return (!h0(context) ? java.lang.Float.valueOf("1") : java.lang.Float.valueOf(f2936c.getProperty("SCALE_SCREEN", "1"))).floatValue();
    }

    public static int Q(android.content.Context context) {
        if (!h0(context)) {
            return java.lang.Integer.parseInt("0");
        }
        java.lang.String property = f2936c.getProperty("SCREEN_DPI", "0");
        return android.text.TextUtils.isEmpty(property) ? java.lang.Integer.parseInt("0") : java.lang.Integer.valueOf(property).intValue();
    }

    public static int R(android.content.Context context) {
        return !h0(context) ? java.lang.Integer.parseInt("0") : java.lang.Integer.valueOf(f2936c.getProperty("SCREEN_TYPE", "0")).intValue();
    }

    public static boolean S(android.content.Context context) {
        if (h0(context)) {
            return e.a.c.a.a.E(f2936c, "SHOW_FPS", "false") || f.a.i.g.a.b(context).a.getBoolean("key_ec_show_fps_state", false);
        }
        return java.lang.Boolean.valueOf("false").booleanValue();
    }

    public static boolean T(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_BT_HID", "false"))).booleanValue();
    }

    public static boolean U(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("EC_SUPPORT_FUNCTION_BT_CALL_BY_HU", "false"))).booleanValue();
    }

    public static boolean V(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ECP_SUPPORT_FUNCTION_MEDIA_TRANSPORT_VIA_EC", "false"))).booleanValue();
    }

    public static boolean W(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_FUNCTION_PHONE_CONTROL_CAR", "false"))).booleanValue();
    }

    public static boolean X(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_MIRROR_OVERLAY", "false"))).booleanValue();
    }

    public static boolean Y(android.content.Context context) {
        if (h0(context)) {
            return java.lang.Boolean.parseBoolean(f2936c.getProperty("SUPPORT_FUNCTION_PARALLEL_WORLD", "false"));
        }
        return false;
    }

    public static boolean Z(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_QR_BLE_AP", "false"))).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r5) {
        /*
            boolean r0 = q(r5)
            r1 = 0
            if (r0 == 0) goto L10
            r0 = 2
            boolean r2 = o(r5)
            if (r2 == 0) goto L11
            r0 = 3
            goto L11
        L10:
            r0 = 0
        L11:
            boolean r2 = s(r5)
            java.lang.String r3 = "false"
            if (r2 != 0) goto L36
            boolean r2 = h0(r5)
            if (r2 != 0) goto L24
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r3)
            goto L30
        L24:
            java.util.Properties r2 = f.a.i.m.g.f2936c
            java.lang.String r4 = "ENABLE_SDK_WIFI_DIRECT"
            java.lang.String r2 = r2.getProperty(r4, r3)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
        L30:
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L38
        L36:
            r0 = r0 | 8
        L38:
            boolean r2 = p(r5)
            if (r2 == 0) goto L40
            r0 = r0 | 16
        L40:
            boolean r2 = h0(r5)
            if (r2 != 0) goto L4b
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r3)
            goto L57
        L4b:
            java.util.Properties r2 = f.a.i.m.g.f2936c
            java.lang.String r4 = "ENABLE_EAP_MODE"
            java.lang.String r2 = r2.getProperty(r4, r3)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
        L57:
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L5f
            r0 = r0 | 32
        L5f:
            boolean r2 = r(r5)
            if (r2 == 0) goto L67
            r0 = r0 | 64
        L67:
            boolean r2 = A(r5)
            if (r2 == 0) goto L6f
            r0 = r0 | 128(0x80, float:1.794E-43)
        L6f:
            boolean r2 = D(r5)
            if (r2 == 0) goto L77
            r0 = r0 | 512(0x200, float:7.175E-43)
        L77:
            boolean r5 = E(r5)
            if (r5 == 0) goto L7f
            r0 = r0 | 256(0x100, float:3.59E-43)
        L7f:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r2 = "calculateSupportConnect ret = "
            r5.append(r2)
            r5.append(r0)
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r3 = java.lang.Integer.toBinaryString(r0)
            r2[r1] = r3
            java.lang.String r1 = "(%s)"
            java.lang.String r1 = java.lang.String.format(r1, r2)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            e.e.a.g.a(r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.m.g.a(android.content.Context):int");
    }

    public static boolean a0(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_REGISTER_BY_QR", "false"))).booleanValue();
    }

    public static boolean b(android.content.Context context) {
        if (h0(context)) {
            return java.lang.Boolean.parseBoolean(f2936c.getProperty("ENABLE_SOCKSERVER_AUTH", "false"));
        }
        return false;
    }

    public static boolean b0(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("TALKIE_TRANS_BY_BT", "false"))).booleanValue();
    }

    public static synchronized f.a.i.a c(android.content.Context context) {
        e.e.a.g.c("getEcConfigProperty start", new java.lang.Object[0]);
        if (!h0(context)) {
            e.e.a.g.c("getEcConfigProperty initPropertis error", new java.lang.Object[0]);
            return null;
        }
        if (f2937d != null) {
            e.e.a.g.a("getEcConfigProperty ecConfigOptions != null, return");
            return f2937d;
        }
        f.a.i.a aVar = new f.a.i.a();
        int iIntValue = java.lang.Integer.valueOf(f2936c.getProperty("MEDIA_LEVEL", "1")).intValue();
        int iIntValue2 = java.lang.Integer.valueOf(f2936c.getProperty("SCREEN_TYPE", "0")).intValue();
        int iIntValue3 = java.lang.Integer.valueOf(f2936c.getProperty("MIC_TYPE", "1")).intValue();
        net.easyconn.ecsdk.ECTypes.ECCarDescription eCCarDescription = new net.easyconn.ecsdk.ECTypes.ECCarDescription();
        eCCarDescription.mediaLevel = iIntValue != 0 ? iIntValue != 1 ? net.easyconn.ecsdk.ECTypes.ECMediaLevel.EC_DVD_LEVEL_HIGH : net.easyconn.ecsdk.ECTypes.ECMediaLevel.EC_DVD_LEVEL_MIDDLE : net.easyconn.ecsdk.ECTypes.ECMediaLevel.EC_DVD_LEVEL_LOW;
        eCCarDescription.screenType = iIntValue2 != 0 ? iIntValue2 != 1 ? iIntValue2 != 3 ? iIntValue2 != 4 ? net.easyconn.ecsdk.ECTypes.ECScreenType.EC_CAR_SCREEN_UNKNOWN : net.easyconn.ecsdk.ECTypes.ECScreenType.EC_CAR_SCREEN_VERTICAL_ROUND : net.easyconn.ecsdk.ECTypes.ECScreenType.EC_CAR_SCREEN_HORIZONTIAL_ROUND : net.easyconn.ecsdk.ECTypes.ECScreenType.EC_CAR_SCREEN_VERTICAL : net.easyconn.ecsdk.ECTypes.ECScreenType.EC_CAR_SCREEN_HORIZONTAL;
        eCCarDescription.micType = iIntValue3 != 0 ? iIntValue3 != 1 ? net.easyconn.ecsdk.ECTypes.ECMicType.EC_MIC_TYPE_UNSUPPORT : net.easyconn.ecsdk.ECTypes.ECMicType.EC_MIC_TYPE_PHONE : net.easyconn.ecsdk.ECTypes.ECMicType.EC_MIC_TYPE_NATIVE;
        eCCarDescription.mediaOS = f2936c.getProperty("MEDIA_OS", "test-media-os");
        eCCarDescription.mediaModel = f2936c.getProperty("MEDIA_MODEL", "");
        eCCarDescription.carBrand = f2936c.getProperty("CAR_BRAND", "test-car-brand");
        eCCarDescription.carModel = f2936c.getProperty("CAR_MODEL", "test-car-model");
        eCCarDescription.carConfig = f2936c.getProperty("CAR_CONFIG", "test-car-config");
        eCCarDescription.supportBTCall = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_BT_CALL", "false")).booleanValue();
        eCCarDescription.supportBTSetting = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_BT_SETTING", "false")).booleanValue();
        if (f.a.i.m.d.f()) {
            eCCarDescription.supportBTCall = f.a.i.m.d.h();
        }
        eCCarDescription.dpi = Q(context);
        eCCarDescription.enableDpi = v(context);
        eCCarDescription.supportConnect = a(context);
        boolean zBooleanValue = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_FUNCTION_INPUT", "false")).booleanValue();
        boolean zBooleanValue2 = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_FUNCTION_BT_AUTO_PAIR", "false")).booleanValue();
        boolean zBooleanValue3 = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_SPEECH_WAKE", "false")).booleanValue();
        boolean zBooleanValue4 = java.lang.Boolean.valueOf(f2936c.getProperty("EC_SUPPORT_FUNCTION_HU_HOTSPOT", "false")).booleanValue();
        boolean zBooleanValue5 = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_FUNCTION_VR_TEXT", "false")).booleanValue();
        boolean zBooleanValue6 = java.lang.Boolean.valueOf(f2936c.getProperty("MAIN_PAGE_QR_SWITCH", "false")).booleanValue();
        boolean zG = g(context);
        boolean zW = W(context);
        boolean zV = V(context);
        boolean zU = U(context);
        boolean zT = T(context);
        boolean Z = Z(context);
        boolean zX = X(context);
        boolean zY = Y(context);
        e.e.a.g.a("supportFunction supportParallelWorld = " + zY);
        int i2 = 128;
        int i3 = (zBooleanValue ? 1 : 0) | (zBooleanValue3 ? 2 : 0) | (zBooleanValue4 ? 32 : 0) | (zBooleanValue5 ? 4 : 0) | (zBooleanValue6 ? 128 : 0);
        if (!zG) {
            i2 = 0;
        }
        eCCarDescription.supportFunction = (zY ? 4096 : 0) | i3 | i2 | (zBooleanValue2 ? 16 : 0) | (zW ? 1024 : 0) | (zV ? 2048 : 0) | (zU ? 256 : 0) | (zT ? 16384 : 0) | (zX ? 32768 : 0) | (Z ? 8192 : 0);
        e.e.a.g.a("supportFunction is " + eCCarDescription.supportFunction);
        eCCarDescription.productType = java.lang.Integer.parseInt(f2936c.getProperty("EC_PRODUCT_TYPE", "0"));
        eCCarDescription.micSupportFeature = java.lang.Integer.valueOf(f2936c.getProperty("MIC_SUPPORT_FEATURE", "0")).intValue();
        if (!android.text.TextUtils.isEmpty(f2936c.getProperty("VR_WAKEUP_TEXT"))) {
            eCCarDescription.wakeupWord = f2936c.getProperty("VR_WAKEUP_TEXT");
        }
        net.easyconn.ecsdk.ECTypes.ECOptions eCOptions = new net.easyconn.ecsdk.ECTypes.ECOptions();
        eCOptions.enableUsbBroadcastReceiver = java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_USB_BROADCAST_RECEIVER", "false")).booleanValue();
        eCOptions.enableAndroidUsbForAOA = true;
        eCOptions.enableAndroidUsbForADB = true;
        eCOptions.enableIOSUsb = java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_SDK_IOS_USB", "true")).booleanValue();
        eCOptions.useBindTransport = java.lang.Boolean.valueOf(f2936c.getProperty("USE_BIND_TRANSPORT", "false")).booleanValue();
        eCOptions.useSubProcess = java.lang.Boolean.valueOf(f2936c.getProperty("USE_SUB_PROCESS", "false")).booleanValue();
        eCOptions.useCarBtCallRecords = java.lang.Boolean.valueOf(f2936c.getProperty("USE_CAR_BT_CALL_RECORDS", "false")).booleanValue();
        eCOptions.supportRVForAdb = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_RV_ADB", "false")).booleanValue();
        eCOptions.enableWifiDirect = java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_SDK_WIFI_DIRECT", "false")).booleanValue();
        eCOptions.usbFilterPath = f2936c.getProperty("USB_FILTER", "");
        eCOptions.useDefaultMdnsPort = f0(context);
        if (android.text.TextUtils.isEmpty(f2936c.getProperty("SUPPORT_OTA_UPDATE"))) {
            eCOptions.supportOTAUpdate = true;
        } else {
            eCOptions.supportOTAUpdate = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_OTA_UPDATE")).booleanValue();
        }
        if (java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_PHONE_SIGNAL", "false")).booleanValue()) {
            eCOptions.supportPhoneSignal = true;
        }
        java.lang.String strB = f.a.i.m.d.b(context);
        e.e.a.g.a("licensePath is " + strB);
        if (!android.text.TextUtils.isEmpty(strB)) {
            eCOptions.workspace = strB;
        }
        eCOptions.bluetoothPolicy = java.lang.Integer.valueOf(f2936c.getProperty("BLUETOOTH_POLICY", java.lang.String.valueOf(0))).intValue();
        eCOptions.supportThirdPartyApp = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_THIRDPARTY_APP", "false")).booleanValue();
        eCOptions.supportScreenTouch = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_SCREEN_TOUCH", "true")).booleanValue();
        eCOptions.supportBackDesktop = java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_BACK_CAR_DESKTOP", "false")).booleanValue();
        f2938e = java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_IOS_DECODE_PX3", "false")).booleanValue();
        b = java.lang.Boolean.valueOf(f2936c.getProperty("MEDIACODEC_MULTI_THREADS", "true")).booleanValue();
        a = java.lang.Boolean.valueOf(f2936c.getProperty("MAIN_PAGE_QR_SWITCH", "false")).booleanValue();
        e.e.a.g.a("**=> mMainPageQrSwitch is " + a);
        eCOptions.supportScreenMirroring = java.lang.Boolean.valueOf(f2936c.getProperty("SUPPORT_SCREEN_MIRRORING", "true")).booleanValue();
        int iIntValue4 = java.lang.Integer.valueOf(f2936c.getProperty("TYPE_MIRROR_MODE", "0")).intValue();
        if (iIntValue4 == 0) {
            eCOptions.mirrorMode = 0;
        } else if (iIntValue4 == 1) {
            eCOptions.mirrorMode = 1;
        } else if (iIntValue4 == 2) {
            eCOptions.mirrorMode = 2;
        }
        if (android.text.TextUtils.isEmpty(f2936c.getProperty("SOCKET_TIMEOUT_PERIOD"))) {
            e.e.a.g.a("socketTimeoutPeriod not need set");
        } else {
            int iIntValue5 = java.lang.Integer.valueOf(f2936c.getProperty("SOCKET_TIMEOUT_PERIOD", "0")).intValue();
            e.e.a.g.a("socketTimeoutPeriod is " + iIntValue5);
            eCOptions.socketTimeoutPeriod = iIntValue5;
        }
        net.easyconn.ecsdk.ECTypes.ECConfig eCConfig = new net.easyconn.ecsdk.ECTypes.ECConfig();
        eCConfig.aoaManufacturer = f2936c.getProperty("MANUFACTURER");
        eCConfig.aoaModel = f2936c.getProperty("MODEL");
        eCConfig.aoaVersion = f2936c.getProperty("VERSION");
        eCConfig.aoaUri = f2936c.getProperty("URI");
        eCConfig.flavor = java.lang.Integer.valueOf(f2936c.getProperty("FLAVOR")).intValue();
        eCConfig.channel = java.lang.Integer.valueOf(f2936c.getProperty("CHANNEL")).intValue();
        eCConfig.phoneAppPackage = f2936c.getProperty("PHONE_APP_PKG");
        eCConfig.phoneAppMainActivity = f2936c.getProperty("PHONE_APP_MAIN_ACTIVITY");
        eCConfig.lightningBindApp = java.lang.Boolean.valueOf(f2936c.getProperty("LIGHTNING_BIND_APP", "true")).booleanValue();
        eCConfig.existAdbServerInSystem = java.lang.Boolean.valueOf(f2936c.getProperty("EXIST_ADB_SERVER_IN_SYSTEM", "false")).booleanValue();
        java.lang.String property = f2936c.getProperty("PACKAGE_NAME");
        e.e.a.g.a("getEcConfig packageName is " + property);
        if (!android.text.TextUtils.isEmpty(property)) {
            eCConfig.packageName = property;
        }
        boolean zB = b(context);
        e.e.a.g.a("getEcConfig enableSockServerAuth is " + zB);
        eCConfig.enableSockServerAuth = zB;
        java.lang.String property2 = f2936c.getProperty("LIST_AUTH_SIGNATURE");
        e.e.a.g.c("listAuthSignature is " + property2, new java.lang.Object[0]);
        if (!android.text.TextUtils.isEmpty(property2)) {
            eCConfig.signature = property2;
        }
        java.lang.String property3 = f2936c.getProperty("BONJOUR_MDNS_SERVER_PATH");
        e.e.a.g.c("bonjourMDNSServerPath is " + property3, new java.lang.Object[0]);
        if (!android.text.TextUtils.isEmpty(property3)) {
            eCConfig.bonjourMDNSServerPath = property3;
        }
        eCOptions.config = eCConfig;
        aVar.a(eCCarDescription);
        aVar.b(eCOptions);
        f2937d = aVar;
        e.e.a.g.c("getEcConfigProperty end", new java.lang.Object[0]);
        return aVar;
    }

    public static boolean c0(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("THEME_IS_LIGHT", "false"))).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d7 A[PHI: r1
  0x00d7: PHI (r1v3 int) = (r1v2 int), (r1v4 int) binds: [B:18:0x00d1, B:21:0x00d5] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static net.easyconn.ecsdk.ECTypes.ECOptions d(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.i.m.g.d(android.content.Context):net.easyconn.ecsdk.ECTypes$ECOptions");
    }

    public static boolean d0(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("TTS_TRANS_BY_BT", "false"))).booleanValue();
    }

    public static boolean e(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_TAB_STATUS_TIP", "false"))).booleanValue();
    }

    public static java.lang.String e0(android.content.Context context) {
        return !h0(context) ? "" : f2936c.getProperty("USB_FILTER", "");
    }

    public static boolean f(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("HU_SUPPORT_INTERNET_ACCESS", "false"))).booleanValue();
    }

    public static boolean f0(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("true") : java.lang.Boolean.valueOf(f2936c.getProperty("USE_DEFAULT_MDNS_PORT", "true"))).booleanValue();
    }

    public static boolean g(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("NEW_STATUS_TIP_SUPPORT_QR_LINK", "false"))).booleanValue();
    }

    public static boolean g0(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("VR_TRANS_BY_BT", "false"))).booleanValue();
    }

    public static long h(android.content.Context context) {
        return (!h0(context) ? java.lang.Long.valueOf("1000") : java.lang.Long.valueOf(f2936c.getProperty("OPEN_TRANSPORT_RETRY_TIME", "1000"))).longValue();
    }

    public static boolean h0(android.content.Context context) throws java.io.IOException {
        if (f2936c != null) {
            return true;
        }
        f2936c = new java.util.Properties();
        java.io.InputStream inputStreamOpen = null;
        try {
            try {
                e.e.a.g.c("initPropertis open EcConfig", new java.lang.Object[0]);
                inputStreamOpen = context.getAssets().open("EcConfig.prop");
                f2936c.load(new java.io.InputStreamReader(inputStreamOpen));
                j0(context);
                if (inputStreamOpen == null) {
                    return true;
                }
                try {
                    inputStreamOpen.close();
                    return true;
                } catch (java.io.IOException e2) {
                    e.e.a.g.d(e2, e2.getMessage(), new java.lang.Object[0]);
                    return true;
                }
            } catch (java.lang.Exception e3) {
                e.e.a.g.d(e3, e3.getMessage(), new java.lang.Object[0]);
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (java.io.IOException e4) {
                        e.e.a.g.d(e4, e4.getMessage(), new java.lang.Object[0]);
                    }
                }
                return false;
            }
        } catch (java.lang.Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (java.io.IOException e5) {
                    e.e.a.g.d(e5, e5.getMessage(), new java.lang.Object[0]);
                }
            }
            throw th;
        }
    }

    public static int i(android.content.Context context) throws java.lang.NumberFormatException {
        if (!h0(context)) {
            return 0;
        }
        int i2 = java.lang.Integer.parseInt(f2936c.getProperty("AIRPLAY_VERSIONCODE", "0"));
        y = i2;
        return i2;
    }

    public static boolean i0() {
        return q == 1;
    }

    public static int j(android.content.Context context) {
        if (!h0(context)) {
            return 0;
        }
        try {
            return java.lang.Integer.parseInt(f2936c.getProperty("EC_CAP_SCREEN_MODE", "0"));
        } catch (java.lang.NumberFormatException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getPropertyCapScreenMode NumberFormatException, e = ");
            sbO.append(e2.toString());
            e.e.a.g.a(sbO.toString());
            return 0;
        }
    }

    public static void j0(android.content.Context context) throws java.lang.Throwable {
        java.io.FileInputStream fileInputStream;
        int i2;
        int i3;
        e.e.a.g.c("mergeWithEtc start", new java.lang.Object[0]);
        int i4 = java.lang.Integer.parseInt(f2936c.getProperty("FLAVOR"));
        if (i4 == 1 || i4 == 2) {
            e.a.c.a.a.v("without init by flavor = ", i4);
            return;
        }
        java.util.Properties properties = new java.util.Properties();
        java.io.FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new java.io.FileInputStream(new java.io.File("/etc/ec.conf"));
            } catch (java.lang.Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
            }
        } catch (java.io.IOException unused) {
        }
        try {
            properties.load(fileInputStream);
            try {
                fileInputStream.close();
            } catch (java.io.IOException e2) {
                e2.printStackTrace();
            }
            boolean zE = e.a.c.a.a.E(f2936c, "ENABLE_APP_ANDROID_USB", "true");
            boolean zE2 = e.a.c.a.a.E(f2936c, "ENABLE_WIFI_ANDROID_SERVICE", "true");
            boolean zE3 = e.a.c.a.a.E(f2936c, "ENABLE_APP_WIFI_DIRECT", "false");
            boolean zE4 = e.a.c.a.a.E(f2936c, "ENABLE_APP_IOS_USB", "true");
            boolean zE5 = e.a.c.a.a.E(f2936c, "ENABLE_QT_MODE", "false");
            boolean zE6 = e.a.c.a.a.E(f2936c, "ENABLE_WIFI_IOS_SERVICE", "true");
            boolean zE7 = e.a.c.a.a.E(f2936c, "ENABLE_AIRPLAY_MODE", "false");
            int i5 = ((zE ? 1 : 0) << 8) | ((zE2 ? 1 : 0) << 7) | ((zE3 ? 1 : 0) << 6) | ((zE4 ? 1 : 0) << 5) | ((zE5 ? 1 : 0) << 4) | ((!zE5 ? 1 : 0) << 3) | ((zE6 ? 1 : 0) << 2) | ((zE7 ? 1 : 0) << 1) | (!zE7 ? 1 : 0);
            java.lang.String property = properties.getProperty("project_flavor", "0");
            if (android.text.TextUtils.isEmpty(property)) {
                property = "0";
            }
            int iIntValue = java.lang.Integer.valueOf(property).intValue();
            if (iIntValue == 1) {
                if (i4 != 0) {
                    return;
                }
                java.lang.String property2 = properties.getProperty("conn_type", "0");
                switch (java.lang.Integer.valueOf(android.text.TextUtils.isEmpty(property2) ? "0" : property2).intValue()) {
                    case 1:
                        i3 = 493;
                        break;
                    case 2:
                        i3 = 429;
                        break;
                    case 3:
                        i3 = 256;
                        break;
                    case 4:
                        i3 = 40;
                        break;
                    case 5:
                        i3 = 448;
                        break;
                    case 6:
                        i3 = com.google.android.exoplayer2.audio.MpegAudioUtil.SAMPLES_PER_FRAME_L1;
                        break;
                    case 7:
                        i3 = 45;
                        break;
                    case 8:
                        i3 = 296;
                        break;
                    default:
                        i3 = -1;
                        break;
                }
                if (i3 != -1 && (i5 | i3) == i5) {
                    k0(i5 & i3);
                    return;
                }
                return;
            }
            if (iIntValue == 2 && i4 == 4) {
                java.lang.String property3 = properties.getProperty("conn_type", "0");
                switch (java.lang.Integer.valueOf(android.text.TextUtils.isEmpty(property3) ? "0" : property3).intValue()) {
                    case 1:
                        i2 = 501;
                        break;
                    case 2:
                        i2 = 502;
                        break;
                    case 3:
                        i2 = 493;
                        break;
                    case 4:
                        i2 = 437;
                        break;
                    case 5:
                        i2 = 438;
                        break;
                    case 6:
                        i2 = 429;
                        break;
                    case 7:
                        i2 = 390;
                        break;
                    case 8:
                        i2 = 256;
                        break;
                    case 9:
                        i2 = 48;
                        break;
                    case 10:
                        i2 = 448;
                        break;
                    case 11:
                        i2 = com.google.android.exoplayer2.audio.MpegAudioUtil.SAMPLES_PER_FRAME_L1;
                        break;
                    case 12:
                        i2 = 53;
                        break;
                    case 13:
                        i2 = 54;
                        break;
                    case 14:
                        i2 = 45;
                        break;
                    case 15:
                        i2 = com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_MISSING_LIB;
                        break;
                    case 16:
                        i2 = 296;
                        break;
                    case 17:
                        i2 = net.easyconn.jni.PlatinumReflection.MEDIA_RENDER_CTL_MSG_SETMUTE;
                        break;
                    case 18:
                        i2 = 134;
                        break;
                    default:
                        i2 = -1;
                        break;
                }
                if (i2 != -1 && (i5 | i2) == i5) {
                    k0(i5 & i2);
                }
            }
        } catch (java.io.IOException unused2) {
            fileInputStream2 = fileInputStream;
            e.e.a.g.c("etcProps create fail!", new java.lang.Object[0]);
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (java.io.IOException e3) {
                    e3.printStackTrace();
                }
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (java.io.IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static int k(android.content.Context context) {
        if (h0(context)) {
            return java.lang.Integer.valueOf(f2936c.getProperty("CHANNEL", "0")).intValue();
        }
        return 0;
    }

    public static void k0(int i2) {
        f2936c.setProperty("ENABLE_APP_ANDROID_USB", java.lang.String.valueOf((i2 >>> 8) == 1));
        f2936c.setProperty("ENABLE_WIFI_ANDROID_SERVICE", java.lang.String.valueOf(((i2 >>> 7) & 1) == 1));
        f2936c.setProperty("ENABLE_APP_WIFI_DIRECT", java.lang.String.valueOf(((i2 >>> 6) & 1) == 1));
        f2936c.setProperty("ENABLE_APP_IOS_USB", java.lang.String.valueOf(((i2 >>> 5) & 1) == 1));
        f2936c.setProperty("ENABLE_QT_MODE", java.lang.String.valueOf(((i2 >>> 4) & 1) == 1));
        f2936c.setProperty("ENABLE_WIFI_IOS_SERVICE", java.lang.String.valueOf(((i2 >>> 2) & 1) == 1));
        f2936c.setProperty("ENABLE_AIRPLAY_MODE", java.lang.String.valueOf(((i2 >>> 1) & 1) == 1));
    }

    public static java.lang.String l(android.content.Context context) {
        if (h0(context)) {
            return f2936c.getProperty("CUSTOM_DEVICE_NAME", "");
        }
        return null;
    }

    public static void l0(android.content.Context context, java.lang.String str) {
        if (h0(context)) {
            f2936c.setProperty("THEME_IS_LIGHT", str);
        }
    }

    public static boolean m(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("DLNA_PAY_FUNCTION", "false"))).booleanValue();
    }

    public static boolean m0(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_BLE_BLUETOOTH", "false"))).booleanValue();
    }

    public static boolean n(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("true") : java.lang.Boolean.valueOf(f2936c.getProperty("EC_UI_SUPPORT_CONTROL", "true"))).booleanValue();
    }

    public static boolean o(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_APP_ADB_MODE", "false"))).booleanValue();
    }

    public static boolean p(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_AIRPLAY_MODE", "false"))).booleanValue();
    }

    public static boolean q(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("true") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_APP_ANDROID_USB", "true"))).booleanValue();
    }

    public static boolean r(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("true") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_APP_IOS_USB", "true"))).booleanValue();
    }

    public static boolean s(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_APP_WIFI_DIRECT", "false"))).booleanValue();
    }

    public static boolean t(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_BLE_ENCRYPT", "false"))).booleanValue();
    }

    public static boolean u(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_DAY_NIGHT_THEME", "false"))).booleanValue();
    }

    public static boolean v(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_DPI", "false"))).booleanValue();
    }

    public static boolean w(android.content.Context context) {
        return (!h0(context) ? java.lang.Boolean.valueOf("false") : java.lang.Boolean.valueOf(f2936c.getProperty("ENABLE_FLOAT_MENU_HOME", "false"))).booleanValue();
    }

    public static boolean x(android.content.Context context) {
        if (!h0(context)) {
            return java.lang.Boolean.valueOf("false").booleanValue();
        }
        boolean zE = e.a.c.a.a.E(f2936c, "WIFI_NETLINK_BEFORE_LOLLIPOP", "false");
        t = zE;
        return zE;
    }

    public static boolean y(android.content.Context context) {
        if (!h0(context)) {
            return java.lang.Boolean.valueOf("false").booleanValue();
        }
        boolean zE = e.a.c.a.a.E(f2936c, "ENABLE_NETLINK", "false");
        r = zE;
        return zE;
    }

    public static boolean z(android.content.Context context) {
        if (!h0(context)) {
            return java.lang.Boolean.valueOf("false").booleanValue();
        }
        boolean zE = e.a.c.a.a.E(f2936c, "ENABLE_NETLINK_INCLUDE_WIFI", "false");
        u = zE;
        return zE;
    }
}
