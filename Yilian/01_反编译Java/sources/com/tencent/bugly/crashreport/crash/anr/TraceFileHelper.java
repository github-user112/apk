package com.tencent.bugly.crashreport.crash.anr;

/* loaded from: classes.dex */
public class TraceFileHelper {

    public static class a {
        public long a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public long f987c;

        /* renamed from: d, reason: collision with root package name */
        public java.util.Map<java.lang.String, java.lang.String[]> f988d;
    }

    public interface b {
        boolean a(long j);

        boolean a(long j, long j2, java.lang.String str);

        boolean a(java.lang.String str, int i, java.lang.String str2, java.lang.String str3, boolean z);

        boolean a(java.lang.String str, long j, long j2);
    }

    public static class c implements com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b {
        public final /* synthetic */ com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a a;
        public final /* synthetic */ java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f989c;

        public c(com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar, java.lang.String str, boolean z) {
            this.a = aVar;
            this.b = str;
            this.f989c = z;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(long j) {
            com.tencent.bugly.proguard.aa.a("process end %d", java.lang.Long.valueOf(j));
            com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar = this.a;
            return aVar.a <= 0 || aVar.f987c <= 0 || aVar.b == null;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(long j, long j2, java.lang.String str) {
            com.tencent.bugly.proguard.aa.a("new process %s", str);
            if (!str.equals(this.b)) {
                return true;
            }
            com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar = this.a;
            aVar.a = j;
            aVar.b = str;
            aVar.f987c = j2;
            return this.f989c;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(java.lang.String str, int i, java.lang.String str2, java.lang.String str3, boolean z) {
            com.tencent.bugly.proguard.aa.a("new thread %s", str);
            com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar = this.a;
            if (aVar.a > 0 && aVar.f987c > 0 && aVar.b != null) {
                if (aVar.f988d == null) {
                    aVar.f988d = new java.util.HashMap();
                }
                this.a.f988d.put(str, new java.lang.String[]{str2, str3, e.a.c.a.a.K("", i)});
            }
            return true;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(java.lang.String str, long j, long j2) {
            return true;
        }
    }

    public static class d implements com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b {
        public final /* synthetic */ com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a a;
        public final /* synthetic */ boolean b;

        public d(com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar, boolean z) {
            this.a = aVar;
            this.b = z;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(long j) {
            com.tencent.bugly.proguard.aa.a("process end %d", java.lang.Long.valueOf(j));
            return false;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(long j, long j2, java.lang.String str) {
            com.tencent.bugly.proguard.aa.a("new process %s", str);
            com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar = this.a;
            aVar.a = j;
            aVar.b = str;
            aVar.f987c = j2;
            return this.b;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(java.lang.String str, int i, java.lang.String str2, java.lang.String str3, boolean z) {
            com.tencent.bugly.proguard.aa.a("new thread %s", str);
            com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar = this.a;
            if (aVar.f988d == null) {
                aVar.f988d = new java.util.HashMap();
            }
            this.a.f988d.put(str, new java.lang.String[]{str2, str3, e.a.c.a.a.K("", i)});
            return true;
        }

        @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
        public boolean a(java.lang.String str, long j, long j2) {
            return true;
        }
    }

    public static java.lang.String a(java.io.BufferedReader bufferedReader) throws java.io.IOException {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        while (true) {
            java.lang.String line = bufferedReader.readLine();
            if (line == null || line.trim().length() <= 0) {
                break;
            }
            stringBuffer.append(line + "\n");
        }
        return stringBuffer.toString();
    }

    public static java.lang.Object[] a(java.io.BufferedReader bufferedReader, java.util.regex.Pattern... patternArr) throws java.io.IOException {
        if (bufferedReader != null && patternArr != null) {
            while (true) {
                java.lang.String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                for (java.util.regex.Pattern pattern : patternArr) {
                    if (pattern.matcher(line).matches()) {
                        return new java.lang.Object[]{pattern, line};
                    }
                }
            }
        }
        return null;
    }

    public static java.lang.String b(java.io.BufferedReader bufferedReader) throws java.io.IOException {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (int i = 0; i < 3; i++) {
            java.lang.String line = bufferedReader.readLine();
            if (line == null) {
                return null;
            }
            stringBuffer.append(line + "\n");
        }
        return stringBuffer.toString();
    }

    public static com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a readFirstDumpInfo(java.lang.String str, boolean z) throws java.lang.Throwable {
        if (str == null) {
            com.tencent.bugly.proguard.aa.b("path:%s", str);
            return null;
        }
        com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar = new com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a();
        readTraceFile(str, new com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.d(aVar, z));
        if (aVar.a > 0 && aVar.f987c > 0 && aVar.b != null) {
            return aVar;
        }
        com.tencent.bugly.proguard.aa.b("first dump error %s", aVar.a + " " + aVar.f987c + " " + aVar.b);
        return null;
    }

    public static com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a readTargetDumpInfo(java.lang.String str, java.lang.String str2, boolean z) throws java.lang.Throwable {
        if (str != null && str2 != null) {
            com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a aVar = new com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a();
            readTraceFile(str2, new com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.c(aVar, str, z));
            if (aVar.a > 0 && aVar.f987c > 0 && aVar.b != null) {
                return aVar;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0155, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x015b, code lost:
    
        if (com.tencent.bugly.proguard.aa.b(r0) == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015d, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0160, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void readTraceFile(java.lang.String r18, com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.readTraceFile(java.lang.String, com.tencent.bugly.crashreport.crash.anr.TraceFileHelper$b):void");
    }
}
