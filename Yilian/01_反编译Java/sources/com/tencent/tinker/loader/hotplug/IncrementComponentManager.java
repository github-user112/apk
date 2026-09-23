package com.tencent.tinker.loader.hotplug;

/* loaded from: classes.dex */
public final class IncrementComponentManager {
    public static final java.lang.String TAG = "Tinker.IncrementCompMgr";
    public static final int TAG_ACTIVITY = 0;
    public static final int TAG_PROVIDER = 2;
    public static final int TAG_RECEIVER = 3;
    public static final int TAG_SERVICE = 1;
    public static android.content.Context sContext = null;
    public static volatile boolean sInitialized = false;
    public static java.lang.String sPackageName;
    public static final java.util.Map<java.lang.String, android.content.pm.ActivityInfo> CLASS_NAME_TO_ACTIVITY_INFO_MAP = new java.util.HashMap();
    public static final java.util.Map<java.lang.String, android.content.IntentFilter> CLASS_NAME_TO_INTENT_FILTER_MAP = new java.util.HashMap();
    public static final com.tencent.tinker.loader.hotplug.IncrementComponentManager.AttrTranslator<android.content.pm.ActivityInfo> ACTIVITY_INFO_ATTR_TRANSLATOR = new com.tencent.tinker.loader.hotplug.IncrementComponentManager.AttrTranslator<android.content.pm.ActivityInfo>() { // from class: com.tencent.tinker.loader.hotplug.IncrementComponentManager.1
        private int parseLaunchMode(java.lang.String str) {
            if ("standard".equalsIgnoreCase(str)) {
                return 0;
            }
            if ("singleTop".equalsIgnoreCase(str)) {
                return 1;
            }
            if ("singleTask".equalsIgnoreCase(str)) {
                return 2;
            }
            if ("singleInstance".equalsIgnoreCase(str)) {
                return 3;
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(com.tencent.tinker.loader.hotplug.IncrementComponentManager.TAG, e.a.c.a.a.e("Unknown launchMode: ", str), new java.lang.Object[0]);
            return 0;
        }

        private int parseScreenOrientation(java.lang.String str) {
            if ("unspecified".equalsIgnoreCase(str)) {
                return -1;
            }
            if ("behind".equalsIgnoreCase(str)) {
                return 3;
            }
            if ("landscape".equalsIgnoreCase(str)) {
                return 0;
            }
            if ("portrait".equalsIgnoreCase(str)) {
                return 1;
            }
            if ("reverseLandscape".equalsIgnoreCase(str)) {
                return 8;
            }
            if ("reversePortrait".equalsIgnoreCase(str)) {
                return 9;
            }
            if ("sensorLandscape".equalsIgnoreCase(str)) {
                return 6;
            }
            if ("sensorPortrait".equalsIgnoreCase(str)) {
                return 7;
            }
            if (com.umeng.analytics.pro.ai.ac.equalsIgnoreCase(str)) {
                return 4;
            }
            if ("fullSensor".equalsIgnoreCase(str)) {
                return 10;
            }
            if ("nosensor".equalsIgnoreCase(str)) {
                return 5;
            }
            if ("user".equalsIgnoreCase(str)) {
                return 2;
            }
            if (android.os.Build.VERSION.SDK_INT >= 18 && "fullUser".equalsIgnoreCase(str)) {
                return 13;
            }
            if (android.os.Build.VERSION.SDK_INT >= 18 && "locked".equalsIgnoreCase(str)) {
                return 14;
            }
            if (android.os.Build.VERSION.SDK_INT < 18 || !"userLandscape".equalsIgnoreCase(str)) {
                return (android.os.Build.VERSION.SDK_INT < 18 || !"userPortrait".equalsIgnoreCase(str)) ? -1 : 12;
            }
            return 11;
        }

        @Override // com.tencent.tinker.loader.hotplug.IncrementComponentManager.AttrTranslator
        public void onInit(android.content.Context context, int i, org.xmlpull.v1.XmlPullParser xmlPullParser) {
            if (i == 0) {
                try {
                    if (xmlPullParser.getEventType() == 2 && com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME.equals(xmlPullParser.getName())) {
                    } else {
                        throw new java.lang.IllegalStateException("unexpected xml parser state when parsing incremental component manifest.");
                    }
                } catch (org.xmlpull.v1.XmlPullParserException e2) {
                    throw new java.lang.IllegalStateException(e2);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:131:0x0272 A[PHI: r4
  0x0272: PHI (r4v7 int) = (r4v3 int), (r4v36 int) binds: [B:185:0x0366, B:130:0x0270] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:132:0x0277 A[PHI: r4
  0x0277: PHI (r4v4 int) = (r4v3 int), (r4v36 int) binds: [B:185:0x0366, B:130:0x0270] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.tencent.tinker.loader.hotplug.IncrementComponentManager.AttrTranslator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onTranslate(android.content.Context r4, int r5, java.lang.String r6, java.lang.String r7, android.content.pm.ActivityInfo r8) {
            /*
                Method dump skipped, instructions count: 875
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.hotplug.IncrementComponentManager.AnonymousClass1.onTranslate(android.content.Context, int, java.lang.String, java.lang.String, android.content.pm.ActivityInfo):void");
        }
    };

    public static abstract class AttrTranslator<T_RESULT> {
        public AttrTranslator() {
        }

        public void onInit(android.content.Context context, int i, org.xmlpull.v1.XmlPullParser xmlPullParser) {
        }

        public abstract void onTranslate(android.content.Context context, int i, java.lang.String str, java.lang.String str2, T_RESULT t_result);

        public final void translate(android.content.Context context, int i, org.xmlpull.v1.XmlPullParser xmlPullParser, T_RESULT t_result) {
            onInit(context, i, xmlPullParser);
            int attributeCount = xmlPullParser.getAttributeCount();
            for (int i2 = 0; i2 < attributeCount; i2++) {
                if ("android".equals(xmlPullParser.getAttributePrefix(i2))) {
                    onTranslate(context, i, xmlPullParser.getAttributeName(i2), xmlPullParser.getAttributeValue(i2), t_result);
                }
            }
        }
    }

    public IncrementComponentManager() {
        throw new java.lang.UnsupportedOperationException();
    }

    public static synchronized void ensureInitialized() {
        if (!sInitialized) {
            throw new java.lang.IllegalStateException("Not initialized!!");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3, types: [org.xmlpull.v1.XmlPullParser] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized boolean init(android.content.Context r6, com.tencent.tinker.loader.shareutil.ShareSecurityCheck r7) {
        /*
            java.lang.Class<com.tencent.tinker.loader.hotplug.IncrementComponentManager> r0 = com.tencent.tinker.loader.hotplug.IncrementComponentManager.class
            monitor-enter(r0)
            java.util.HashMap r1 = r7.getMetaContentMap()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r2 = "assets/inc_component_meta.txt"
            boolean r1 = r1.containsKey(r2)     // Catch: java.lang.Throwable -> Lae
            if (r1 != 0) goto L1b
            java.lang.String r6 = "Tinker.IncrementCompMgr"
            java.lang.String r7 = "package has no incremental component meta, skip init."
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Lae
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(r6, r7, r2)     // Catch: java.lang.Throwable -> Lae
            monitor-exit(r0)
            return r1
        L1b:
            boolean r1 = r6 instanceof android.content.ContextWrapper     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto L2b
            r1 = r6
            android.content.ContextWrapper r1 = (android.content.ContextWrapper) r1     // Catch: java.lang.Throwable -> Lae
            android.content.Context r1 = r1.getBaseContext()     // Catch: java.lang.Throwable -> Lae
            if (r1 != 0) goto L29
            goto L2b
        L29:
            r6 = r1
            goto L1b
        L2b:
            com.tencent.tinker.loader.hotplug.IncrementComponentManager.sContext = r6     // Catch: java.lang.Throwable -> Lae
            java.lang.String r1 = r6.getPackageName()     // Catch: java.lang.Throwable -> Lae
            com.tencent.tinker.loader.hotplug.IncrementComponentManager.sPackageName = r1     // Catch: java.lang.Throwable -> Lae
            java.util.HashMap r7 = r7.getMetaContentMap()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r1 = "assets/inc_component_meta.txt"
            java.lang.Object r7 = r7.get(r1)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> Lae
            java.io.StringReader r1 = new java.io.StringReader     // Catch: java.lang.Throwable -> Lae
            r1.<init>(r7)     // Catch: java.lang.Throwable -> Lae
            r7 = 0
            org.xmlpull.v1.XmlPullParser r2 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L9a org.xmlpull.v1.XmlPullParserException -> L9d
            r2.setInput(r1)     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            int r3 = r2.getEventType()     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
        L50:
            r4 = 1
            if (r3 == r4) goto L8c
            r4 = 2
            if (r3 == r4) goto L57
            goto L87
        L57:
            java.lang.String r3 = r2.getName()     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            java.lang.String r4 = "activity"
            boolean r4 = r4.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            if (r4 == 0) goto L6f
            android.content.pm.ActivityInfo r3 = parseActivity(r6, r2)     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            java.util.Map<java.lang.String, android.content.pm.ActivityInfo> r4 = com.tencent.tinker.loader.hotplug.IncrementComponentManager.CLASS_NAME_TO_ACTIVITY_INFO_MAP     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            java.lang.String r5 = r3.name     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            r4.put(r5, r3)     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            goto L87
        L6f:
            java.lang.String r4 = "service"
            boolean r4 = r4.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            if (r4 == 0) goto L78
            goto L87
        L78:
            java.lang.String r4 = "receiver"
            boolean r4 = r4.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            if (r4 == 0) goto L81
            goto L87
        L81:
            java.lang.String r4 = "provider"
            boolean r3 = r4.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
        L87:
            int r3 = r2.next()     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            goto L50
        L8c:
            com.tencent.tinker.loader.hotplug.IncrementComponentManager.sInitialized = r4     // Catch: java.lang.Throwable -> L96 org.xmlpull.v1.XmlPullParserException -> L98
            r2.setInput(r7)     // Catch: java.lang.Throwable -> L91
        L91:
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(r1)     // Catch: java.lang.Throwable -> Lae
            monitor-exit(r0)
            return r4
        L96:
            r6 = move-exception
            goto La5
        L98:
            r6 = move-exception
            goto L9f
        L9a:
            r6 = move-exception
            r2 = r7
            goto La5
        L9d:
            r6 = move-exception
            r2 = r7
        L9f:
            java.io.IOException r3 = new java.io.IOException     // Catch: java.lang.Throwable -> L96
            r3.<init>(r6)     // Catch: java.lang.Throwable -> L96
            throw r3     // Catch: java.lang.Throwable -> L96
        La5:
            if (r2 == 0) goto Laa
            r2.setInput(r7)     // Catch: java.lang.Throwable -> Laa
        Laa:
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(r1)     // Catch: java.lang.Throwable -> Lae
            throw r6     // Catch: java.lang.Throwable -> Lae
        Lae:
            r6 = move-exception
            monitor-exit(r0)
            goto Lb2
        Lb1:
            throw r6
        Lb2:
            goto Lb1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.loader.hotplug.IncrementComponentManager.init(android.content.Context, com.tencent.tinker.loader.shareutil.ShareSecurityCheck):boolean");
    }

    public static boolean isIncrementActivity(java.lang.String str) {
        ensureInitialized();
        return str != null && CLASS_NAME_TO_ACTIVITY_INFO_MAP.containsKey(str);
    }

    public static synchronized android.content.pm.ActivityInfo parseActivity(android.content.Context context, org.xmlpull.v1.XmlPullParser xmlPullParser) {
        android.content.pm.ActivityInfo activityInfo;
        activityInfo = new android.content.pm.ActivityInfo();
        android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
        activityInfo.applicationInfo = applicationInfo;
        activityInfo.packageName = sPackageName;
        activityInfo.processName = applicationInfo.processName;
        activityInfo.launchMode = 0;
        activityInfo.permission = applicationInfo.permission;
        activityInfo.screenOrientation = -1;
        activityInfo.taskAffinity = applicationInfo.taskAffinity;
        if ((applicationInfo.flags & 536870912) != 0) {
            activityInfo.flags |= 512;
        }
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            activityInfo.documentLaunchMode = 0;
        }
        activityInfo.uiOptions = applicationInfo.uiOptions;
        ACTIVITY_INFO_ATTR_TRANSLATOR.translate(context, 0, xmlPullParser, activityInfo);
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                java.lang.String name = xmlPullParser.getName();
                if ("intent-filter".equalsIgnoreCase(name)) {
                    parseIntentFilter(context, activityInfo.name, xmlPullParser);
                } else if ("meta-data".equalsIgnoreCase(name)) {
                    parseMetaData(context, activityInfo, xmlPullParser);
                }
            }
        }
        return activityInfo;
    }

    public static synchronized void parseIntentFilter(android.content.Context context, java.lang.String str, org.xmlpull.v1.XmlPullParser xmlPullParser) {
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "priority");
        if (!android.text.TextUtils.isEmpty(attributeValue)) {
            intentFilter.setPriority(java.lang.Integer.decode(attributeValue).intValue());
        }
        java.lang.String attributeValue2 = xmlPullParser.getAttributeValue(null, "autoVerify");
        if (!android.text.TextUtils.isEmpty(attributeValue2)) {
            try {
                com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod((java.lang.Class<?>) android.content.IntentFilter.class, "setAutoVerify", (java.lang.Class<?>[]) new java.lang.Class[]{java.lang.Boolean.TYPE}).invoke(intentFilter, java.lang.Boolean.valueOf("true".equalsIgnoreCase(attributeValue2)));
            } catch (java.lang.Throwable unused) {
            }
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4) {
                java.lang.String name = xmlPullParser.getName();
                if ("action".equals(name)) {
                    java.lang.String attributeValue3 = xmlPullParser.getAttributeValue(null, "name");
                    if (attributeValue3 != null) {
                        intentFilter.addAction(attributeValue3);
                    }
                } else if ("category".equals(name)) {
                    java.lang.String attributeValue4 = xmlPullParser.getAttributeValue(null, "name");
                    if (attributeValue4 != null) {
                        intentFilter.addCategory(attributeValue4);
                    }
                } else if ("data".equals(name)) {
                    java.lang.String attributeValue5 = xmlPullParser.getAttributeValue(null, "mimeType");
                    if (attributeValue5 != null) {
                        try {
                            intentFilter.addDataType(attributeValue5);
                        } catch (android.content.IntentFilter.MalformedMimeTypeException e2) {
                            throw new org.xmlpull.v1.XmlPullParserException("bad mimeType", xmlPullParser, e2);
                        }
                    }
                    java.lang.String attributeValue6 = xmlPullParser.getAttributeValue(null, "scheme");
                    if (attributeValue6 != null) {
                        intentFilter.addDataScheme(attributeValue6);
                    }
                    if (android.os.Build.VERSION.SDK_INT >= 19) {
                        java.lang.String attributeValue7 = xmlPullParser.getAttributeValue(null, "ssp");
                        if (attributeValue7 != null) {
                            intentFilter.addDataSchemeSpecificPart(attributeValue7, 0);
                        }
                        java.lang.String attributeValue8 = xmlPullParser.getAttributeValue(null, "sspPrefix");
                        if (attributeValue8 != null) {
                            intentFilter.addDataSchemeSpecificPart(attributeValue8, 1);
                        }
                        java.lang.String attributeValue9 = xmlPullParser.getAttributeValue(null, "sspPattern");
                        if (attributeValue9 != null) {
                            intentFilter.addDataSchemeSpecificPart(attributeValue9, 2);
                        }
                    }
                    java.lang.String attributeValue10 = xmlPullParser.getAttributeValue(null, "host");
                    java.lang.String attributeValue11 = xmlPullParser.getAttributeValue(null, "port");
                    if (attributeValue10 != null) {
                        intentFilter.addDataAuthority(attributeValue10, attributeValue11);
                    }
                    java.lang.String attributeValue12 = xmlPullParser.getAttributeValue(null, androidx.core.content.FileProvider.ATTR_PATH);
                    if (attributeValue12 != null) {
                        intentFilter.addDataPath(attributeValue12, 0);
                    }
                    java.lang.String attributeValue13 = xmlPullParser.getAttributeValue(null, "pathPrefix");
                    if (attributeValue13 != null) {
                        intentFilter.addDataPath(attributeValue13, 1);
                    }
                    java.lang.String attributeValue14 = xmlPullParser.getAttributeValue(null, "pathPattern");
                    if (attributeValue14 != null) {
                        intentFilter.addDataPath(attributeValue14, 2);
                    }
                }
                skipCurrentTag(xmlPullParser);
            }
        }
        CLASS_NAME_TO_INTENT_FILTER_MAP.put(str, intentFilter);
    }

    public static synchronized void parseMetaData(android.content.Context context, android.content.pm.ActivityInfo activityInfo, org.xmlpull.v1.XmlPullParser xmlPullParser) {
        java.lang.ClassLoader classLoader = com.tencent.tinker.loader.hotplug.IncrementComponentManager.class.getClassLoader();
        java.lang.String attributeValue = xmlPullParser.getAttributeValue(null, "name");
        java.lang.String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
        if (!android.text.TextUtils.isEmpty(attributeValue)) {
            if (activityInfo.metaData == null) {
                activityInfo.metaData = new android.os.Bundle(classLoader);
            }
            activityInfo.metaData.putString(attributeValue, attributeValue2);
        }
    }

    public static android.content.pm.ActivityInfo queryActivityInfo(java.lang.String str) {
        ensureInitialized();
        if (str != null) {
            return CLASS_NAME_TO_ACTIVITY_INFO_MAP.get(str);
        }
        return null;
    }

    public static android.content.pm.ResolveInfo resolveIntent(android.content.Intent intent) {
        android.content.IntentFilter intentFilter;
        java.lang.String className;
        ensureInitialized();
        android.content.ComponentName component = intent.getComponent();
        int i = -1;
        int i2 = 0;
        if (component != null) {
            className = component.getClassName();
            if (CLASS_NAME_TO_ACTIVITY_INFO_MAP.containsKey(className)) {
                i = 0;
            } else {
                className = null;
            }
            intentFilter = null;
        } else {
            java.lang.String str = null;
            intentFilter = null;
            int i3 = -1;
            int i4 = 0;
            for (java.util.Map.Entry<java.lang.String, android.content.IntentFilter> entry : CLASS_NAME_TO_INTENT_FILTER_MAP.entrySet()) {
                java.lang.String key = entry.getKey();
                android.content.IntentFilter value = entry.getValue();
                int iMatch = value.match(intent.getAction(), intent.getType(), intent.getScheme(), intent.getData(), intent.getCategories(), TAG);
                boolean z = (iMatch == -3 || iMatch == -4 || iMatch == -2 || iMatch == -1) ? false : true;
                int priority = value.getPriority();
                if (z && priority > i3) {
                    intentFilter = value;
                    str = key;
                    i4 = iMatch;
                    i3 = priority;
                }
            }
            className = str;
            i = i3;
            i2 = i4;
        }
        if (className == null) {
            return null;
        }
        android.content.pm.ResolveInfo resolveInfo = new android.content.pm.ResolveInfo();
        android.content.pm.ActivityInfo activityInfo = CLASS_NAME_TO_ACTIVITY_INFO_MAP.get(className);
        resolveInfo.activityInfo = activityInfo;
        resolveInfo.filter = intentFilter;
        resolveInfo.match = i2;
        resolveInfo.priority = i;
        resolveInfo.resolvePackageName = sPackageName;
        resolveInfo.icon = activityInfo.icon;
        resolveInfo.labelRes = activityInfo.labelRes;
        return resolveInfo;
    }

    public static void skipCurrentTag(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        }
    }
}
