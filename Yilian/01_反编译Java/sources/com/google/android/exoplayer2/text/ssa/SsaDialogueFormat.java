package com.google.android.exoplayer2.text.ssa;

/* loaded from: classes.dex */
public final class SsaDialogueFormat {
    public final int endTimeIndex;
    public final int length;
    public final int startTimeIndex;
    public final int styleIndex;
    public final int textIndex;

    public SsaDialogueFormat(int i, int i2, int i3, int i4, int i5) {
        this.startTimeIndex = i;
        this.endTimeIndex = i2;
        this.styleIndex = i3;
        this.textIndex = i4;
        this.length = i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.text.ssa.SsaDialogueFormat fromFormatLine(java.lang.String r12) {
        /*
            java.lang.String r0 = "Format:"
            boolean r0 = r12.startsWith(r0)
            com.google.android.exoplayer2.util.Assertions.checkArgument(r0)
            r0 = 7
            java.lang.String r12 = r12.substring(r0)
            java.lang.String r0 = ","
            java.lang.String[] r12 = android.text.TextUtils.split(r12, r0)
            r0 = 0
            r1 = -1
            r2 = 0
            r4 = -1
            r5 = -1
            r6 = -1
            r7 = -1
        L1b:
            int r3 = r12.length
            if (r2 >= r3) goto L6f
            r3 = r12[r2]
            java.lang.String r3 = r3.trim()
            java.lang.String r3 = d.s.y.b0(r3)
            int r8 = r3.hashCode()
            r9 = 3
            r10 = 2
            r11 = 1
            switch(r8) {
                case 100571: goto L51;
                case 3556653: goto L47;
                case 109757538: goto L3d;
                case 109780401: goto L33;
                default: goto L32;
            }
        L32:
            goto L5b
        L33:
            java.lang.String r8 = "style"
            boolean r3 = r3.equals(r8)
            if (r3 == 0) goto L5b
            r3 = 2
            goto L5c
        L3d:
            java.lang.String r8 = "start"
            boolean r3 = r3.equals(r8)
            if (r3 == 0) goto L5b
            r3 = 0
            goto L5c
        L47:
            java.lang.String r8 = "text"
            boolean r3 = r3.equals(r8)
            if (r3 == 0) goto L5b
            r3 = 3
            goto L5c
        L51:
            java.lang.String r8 = "end"
            boolean r3 = r3.equals(r8)
            if (r3 == 0) goto L5b
            r3 = 1
            goto L5c
        L5b:
            r3 = -1
        L5c:
            if (r3 == 0) goto L6b
            if (r3 == r11) goto L69
            if (r3 == r10) goto L67
            if (r3 == r9) goto L65
            goto L6c
        L65:
            r7 = r2
            goto L6c
        L67:
            r6 = r2
            goto L6c
        L69:
            r5 = r2
            goto L6c
        L6b:
            r4 = r2
        L6c:
            int r2 = r2 + 1
            goto L1b
        L6f:
            if (r4 == r1) goto L7d
            if (r5 == r1) goto L7d
            if (r7 == r1) goto L7d
            com.google.android.exoplayer2.text.ssa.SsaDialogueFormat r0 = new com.google.android.exoplayer2.text.ssa.SsaDialogueFormat
            int r8 = r12.length
            r3 = r0
            r3.<init>(r4, r5, r6, r7, r8)
            goto L7e
        L7d:
            r0 = 0
        L7e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.text.ssa.SsaDialogueFormat.fromFormatLine(java.lang.String):com.google.android.exoplayer2.text.ssa.SsaDialogueFormat");
    }
}
