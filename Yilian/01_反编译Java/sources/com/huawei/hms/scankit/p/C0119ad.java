package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ad, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0119ad {
    public static final java.util.regex.Pattern a = java.util.regex.Pattern.compile("(\\d{4})(\\d{2})(\\d{2})T(\\d{2})(\\d{2})(\\d{2})Z");
    public static final java.util.regex.Pattern b = java.util.regex.Pattern.compile("(\\d{4})(\\d{2})(\\d{2})T(\\d{2})(\\d{2})(\\d{2})");

    /* renamed from: c, reason: collision with root package name */
    public static final java.util.regex.Pattern f675c = java.util.regex.Pattern.compile("(\\d{4})(\\d{2})(\\d{2})");

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.regex.Pattern f676d = java.util.regex.Pattern.compile("(\\d{4})(\\d{2})(\\d{2})\\d{6}Z");

    public static void a(com.huawei.hms.ml.scan.HmsScan.EventTime eventTime, int i, int i2, int i3) {
        eventTime.year = i;
        eventTime.month = i2;
        eventTime.day = i3;
    }

    public static void a(java.lang.String str, com.huawei.hms.ml.scan.HmsScan.EventTime eventTime) {
        java.util.regex.Matcher matcher = a.matcher(str);
        java.util.regex.Matcher matcher2 = b.matcher(str);
        java.util.regex.Matcher matcher3 = f675c.matcher(str);
        java.util.regex.Matcher matcher4 = f676d.matcher(str);
        try {
            if (matcher.matches()) {
                a(eventTime, java.lang.Integer.parseInt(matcher.group(1)), java.lang.Integer.parseInt(matcher.group(2)), java.lang.Integer.parseInt(matcher.group(3)));
                b(eventTime, java.lang.Integer.parseInt(matcher.group(4)), java.lang.Integer.parseInt(matcher.group(5)), java.lang.Integer.parseInt(matcher.group(6)));
                eventTime.isUTCTime = true;
            } else if (matcher2.matches()) {
                a(eventTime, java.lang.Integer.parseInt(matcher2.group(1)), java.lang.Integer.parseInt(matcher2.group(2)), java.lang.Integer.parseInt(matcher2.group(3)));
                b(eventTime, java.lang.Integer.parseInt(matcher2.group(4)), java.lang.Integer.parseInt(matcher2.group(5)), java.lang.Integer.parseInt(matcher2.group(6)));
            } else {
                if (!matcher3.matches()) {
                    if (matcher4.matches()) {
                        a(eventTime, java.lang.Integer.parseInt(matcher4.group(1)), java.lang.Integer.parseInt(matcher4.group(2)), java.lang.Integer.parseInt(matcher4.group(3)));
                        return;
                    }
                    return;
                }
                a(eventTime, java.lang.Integer.parseInt(matcher3.group(1)), java.lang.Integer.parseInt(matcher3.group(2)), java.lang.Integer.parseInt(matcher3.group(3)));
            }
            eventTime.originalValue = str;
        } catch (java.lang.NullPointerException unused) {
            com.huawei.hms.scankit.util.a.b("exception", "NullPointerException");
        }
    }

    public static void b(com.huawei.hms.ml.scan.HmsScan.EventTime eventTime, int i, int i2, int i3) {
        eventTime.hours = i;
        eventTime.minutes = i2;
        eventTime.seconds = i3;
    }
}
