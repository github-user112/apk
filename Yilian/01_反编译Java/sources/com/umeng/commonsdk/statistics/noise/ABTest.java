package com.umeng.commonsdk.statistics.noise;

/* loaded from: classes.dex */
public class ABTest implements com.umeng.commonsdk.statistics.internal.d {
    public static com.umeng.commonsdk.statistics.noise.ABTest instance;
    public android.content.Context context;
    public boolean isInTest = false;
    public int mPolicy = -1;
    public int mInterval = -1;
    public int mGroup = -1;
    public float mProb13 = 0.0f;
    public float mProb07 = 0.0f;
    public java.lang.String mPoli = null;

    public ABTest(android.content.Context context, java.lang.String str, int i) {
        this.context = null;
        this.context = context;
        onExperimentChanged(str, i);
    }

    public static synchronized com.umeng.commonsdk.statistics.noise.ABTest getService(android.content.Context context) {
        if (instance == null) {
            instance = new com.umeng.commonsdk.statistics.noise.ABTest(context, com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, "client_test", null), java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(context, "test_report_interval", "0")).intValue());
        }
        return instance;
    }

    private void parseFIXED(java.lang.String str) {
        if (str == null) {
            return;
        }
        java.lang.String[] strArrSplit = str.split("\\|");
        if (this.mProb13 > (strArrSplit[2].equals("SIG13") ? java.lang.Float.valueOf(strArrSplit[3]).floatValue() : 0.0f)) {
            this.isInTest = false;
            return;
        }
        int iIntValue = strArrSplit[0].equals("FIXED") ? java.lang.Integer.valueOf(strArrSplit[1]).intValue() : -1;
        int[] iArr = null;
        if (strArrSplit[4].equals("RPT")) {
            this.mPoli = "RPT";
            java.lang.String[] strArrSplit2 = strArrSplit[5].split(",");
            iArr = new int[strArrSplit2.length];
            for (int i = 0; i < strArrSplit2.length; i++) {
                iArr[i] = java.lang.Integer.valueOf(strArrSplit2[i]).intValue();
            }
        } else if (strArrSplit[4].equals("DOM")) {
            this.mPoli = "DOM";
            this.isInTest = true;
            try {
                java.lang.String[] strArrSplit3 = strArrSplit[5].split(",");
                iArr = new int[strArrSplit3.length];
                for (int i2 = 0; i2 < strArrSplit3.length; i2++) {
                    iArr[i2] = java.lang.Integer.valueOf(strArrSplit3[i2]).intValue();
                }
            } catch (java.lang.Exception unused) {
            }
        }
        if (iIntValue == -1) {
            this.isInTest = false;
            return;
        }
        this.isInTest = true;
        this.mGroup = iIntValue;
        if (iArr != null) {
            this.mPolicy = iArr[iIntValue - 1];
        }
    }

    private void parseSig7(java.lang.String str) {
        float[] fArr;
        if (str == null) {
            return;
        }
        java.lang.String[] strArrSplit = str.split("\\|");
        float f2 = 0.0f;
        if (this.mProb13 > (strArrSplit[2].equals("SIG13") ? java.lang.Float.valueOf(strArrSplit[3]).floatValue() : 0.0f)) {
            this.isInTest = false;
            return;
        }
        int[] iArr = null;
        if (strArrSplit[0].equals("SIG7")) {
            java.lang.String[] strArrSplit2 = strArrSplit[1].split(",");
            fArr = new float[strArrSplit2.length];
            for (int i = 0; i < strArrSplit2.length; i++) {
                fArr[i] = java.lang.Float.valueOf(strArrSplit2[i]).floatValue();
            }
        } else {
            fArr = null;
        }
        if (strArrSplit[4].equals("RPT")) {
            this.mPoli = "RPT";
            java.lang.String[] strArrSplit3 = strArrSplit[5].split(",");
            iArr = new int[strArrSplit3.length];
            for (int i2 = 0; i2 < strArrSplit3.length; i2++) {
                iArr[i2] = java.lang.Integer.valueOf(strArrSplit3[i2]).intValue();
            }
        } else if (strArrSplit[4].equals("DOM")) {
            this.isInTest = true;
            this.mPoli = "DOM";
            try {
                java.lang.String[] strArrSplit4 = strArrSplit[5].split(",");
                iArr = new int[strArrSplit4.length];
                for (int i3 = 0; i3 < strArrSplit4.length; i3++) {
                    iArr[i3] = java.lang.Integer.valueOf(strArrSplit4[i3]).intValue();
                }
            } catch (java.lang.Exception unused) {
            }
        }
        int i4 = 0;
        while (true) {
            if (i4 >= fArr.length) {
                i4 = -1;
                break;
            }
            f2 += fArr[i4];
            if (this.mProb07 < f2) {
                break;
            } else {
                i4++;
            }
        }
        if (i4 == -1) {
            this.isInTest = false;
            return;
        }
        this.isInTest = true;
        this.mGroup = i4 + 1;
        if (iArr != null) {
            this.mPolicy = iArr[i4];
        }
    }

    private float prob(java.lang.String str, int i) {
        int i2 = i * 2;
        if (str == null) {
            return 0.0f;
        }
        return java.lang.Integer.valueOf(str.substring(i2, i2 + 5), 16).intValue() / 1048576.0f;
    }

    public static boolean validate(java.lang.String str) throws java.lang.NumberFormatException {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        java.lang.String[] strArrSplit = str.split("\\|");
        if (strArrSplit.length != 6) {
            return false;
        }
        if (strArrSplit[0].startsWith("SIG7") && strArrSplit[1].split(",").length == strArrSplit[5].split(",").length) {
            return true;
        }
        if (strArrSplit[0].startsWith("FIXED")) {
            int length = strArrSplit[5].split(",").length;
            int i = java.lang.Integer.parseInt(strArrSplit[1]);
            if (length >= i && i >= 1) {
                return true;
            }
        }
        return false;
    }

    public int getGroup() {
        return this.mGroup;
    }

    public java.lang.String getGroupInfo() {
        return !this.isInTest ? com.umeng.analytics.pro.c.O : java.lang.String.valueOf(this.mGroup);
    }

    public int getTestInterval() {
        return this.mInterval;
    }

    public java.lang.String getTestName() {
        return this.mPoli;
    }

    public int getTestPolicy() {
        return this.mPolicy;
    }

    public boolean isInTest() {
        return this.isInTest;
    }

    public void onExperimentChanged(java.lang.String str, int i) {
        this.mInterval = i;
        java.lang.String signature = com.umeng.commonsdk.statistics.idtracking.Envelope.getSignature(this.context);
        if (android.text.TextUtils.isEmpty(signature) || android.text.TextUtils.isEmpty(str)) {
            this.isInTest = false;
            return;
        }
        try {
            this.mProb13 = prob(signature, 12);
            this.mProb07 = prob(signature, 6);
            if (str.startsWith("SIG7")) {
                parseSig7(str);
            } else if (str.startsWith("FIXED")) {
                parseFIXED(str);
            }
        } catch (java.lang.Exception e2) {
            this.isInTest = false;
            com.umeng.commonsdk.statistics.common.MLog.e("v:" + str, e2);
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.d
    public void onImprintChanged(com.umeng.commonsdk.statistics.idtracking.ImprintHandler.a aVar) {
        onExperimentChanged(aVar.a("client_test", null), java.lang.Integer.valueOf(aVar.a("test_report_interval", "0")).intValue());
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o(" p13:");
        sbO.append(this.mProb13);
        sbO.append(" p07:");
        sbO.append(this.mProb07);
        sbO.append(" policy:");
        sbO.append(this.mPolicy);
        sbO.append(" interval:");
        sbO.append(this.mInterval);
        return sbO.toString();
    }
}
