package f.a.i.j;

/* loaded from: classes.dex */
public class b {
    public f.a.i.j.b.a a;
    public java.util.List<f.a.i.j.b.c> b = new java.util.ArrayList(20);

    public static class a {
        public java.lang.String a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f2912c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f2913d;

        /* renamed from: e, reason: collision with root package name */
        public java.lang.String f2914e;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.String f2915f;

        /* renamed from: g, reason: collision with root package name */
        public java.lang.String f2916g;
        public java.lang.String h;
        public java.lang.String i;
        public java.lang.String j;

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            sb.append("\"");
            sb.append("carChip");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.a, "\",", "\"", "carCpuFrequency");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.b, "\",", "\"", "carMemorySize");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.f2912c, "\",", "\"", "carSysVersion");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.f2913d, "\",", "\"", "carResolution");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.f2914e, "\",", "\"", "carScreenDensity");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.f2915f, "\",", "\"", "carId");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.f2916g, "\",", "\"", "carVersion");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.h, "\",", "\"", "carChannel");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.i, "\",", "\"", "carModle");
            e.a.c.a.a.B(sb, "\"", ":\"", null, "\",");
            e.a.c.a.a.B(sb, "\"", "connectSessionId", "\"", ":\"");
            e.a.c.a.a.B(sb, null, "\",", "\"", "carBluetooth");
            sb.append("\"");
            sb.append(":\"");
            sb.append(this.j);
            sb.append("\"");
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
            return sb.toString();
        }
    }

    /* renamed from: f.a.i.j.b$b, reason: collision with other inner class name */
    public static class C0083b {
        public java.lang.String a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2917c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f2918d;

        public C0083b() {
        }

        public C0083b(java.lang.String str, int i, int i2, java.lang.String str2) {
            this.a = str;
            this.b = i;
            this.f2917c = i2;
            this.f2918d = str2;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            sb.append("\"");
            sb.append("event_id");
            sb.append("\"");
            sb.append(":\"");
            sb.append(this.b);
            sb.append("\",");
            sb.append("\"");
            sb.append("event_desc");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.f2918d, "\",", "\"", "event_time");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.a, "\",", "\"", "sub_event_id");
            sb.append("\"");
            sb.append(":\"");
            sb.append(this.f2917c);
            sb.append("\"");
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
            return sb.toString();
        }
    }

    public static class c {
        public java.lang.String a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public java.util.List<f.a.i.j.b.C0083b> f2919c = new java.util.ArrayList(20);

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            sb.append("\"");
            sb.append("sessionId");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.a, "\",", "\"", "startTime");
            sb.append("\"");
            sb.append(":\"");
            e.a.c.a.a.B(sb, this.b, "\",", "\"", com.umeng.analytics.pro.c.t);
            e.a.c.a.a.B(sb, "\"", ":[", "],", "\"");
            e.a.c.a.a.B(sb, "eventDurations", "\"", ":[", "],");
            e.a.c.a.a.B(sb, "\"", com.umeng.analytics.pro.c.ar, "\"", ":[");
            java.util.List<f.a.i.j.b.C0083b> list = this.f2919c;
            if (list != null && !list.isEmpty()) {
                java.util.Iterator<f.a.i.j.b.C0083b> it = this.f2919c.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().toString());
                    sb.append(",");
                }
                sb.deleteCharAt(sb.length() - 1);
            }
            return e.a.c.a.a.j(sb, "]", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbR = e.a.c.a.a.r("{\"context\":{", "\"carbit_data\":{", "\"carInfo\":");
        f.a.i.j.b.a aVar = this.a;
        e.a.c.a.a.B(sbR, aVar == null ? "" : aVar.toString(), "},", "\"session_data\":{", "\"sessions\":[");
        java.util.List<f.a.i.j.b.c> list = this.b;
        if (list != null && !list.isEmpty()) {
            java.util.Iterator<f.a.i.j.b.c> it = this.b.iterator();
            while (it.hasNext()) {
                sbR.append(it.next().toString());
                sbR.append(",");
            }
            sbR.deleteCharAt(sbR.length() - 1);
        }
        sbR.append("]");
        sbR.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        sbR.append("}}");
        return sbR.toString();
    }
}
