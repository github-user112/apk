package f.a.k.m0;

/* loaded from: classes.dex */
public class p0 implements f.a.i.l.a.d {
    public final /* synthetic */ f.a.k.m0.q0 a;

    public p0(f.a.k.m0.q0 q0Var) {
        this.a = q0Var;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:29|(1:31)(1:32)|33|(1:35)(16:36|227|37|217|38|39|(3:219|41|52)(2:45|(3:47|(3:49|50|51)|52)(27:54|(1:56)|59|225|60|61|207|62|63|(1:65)(1:66)|67|209|68|(2:70|(9:72|73|(1:75)(1:76)|77|229|78|(2:84|(3:86|87|88)(1:89))|90|(3:239|92|93)(1:94))(1:238))|237|101|102|213|103|(1:146)|147|205|148|(1:159)(2:150|(2:152|159)(2:153|(1:155)))|(2:161|(1:163))|(4:165|(1:167)|168|234)(9:221|169|170|223|171|172|(1:174)(2:175|(1:177)(1:235))|178|236)|184))|144|(0)|147|205|148|(0)(0)|(0)|(0)(0)|184)|53|144|(0)|147|205|148|(0)(0)|(0)|(0)(0)|184) */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x032b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x032c, code lost:
    
        r2 = e.a.c.a.a.o("checkLocalApkMD5 Exception e : ");
        r2.append(r0.getMessage());
        e.e.a.g.a(r2.toString());
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02e1 A[Catch: all -> 0x03f6, TRY_LEAVE, TryCatch #10 {all -> 0x03f6, blocks: (B:128:0x02da, B:130:0x02e1, B:132:0x02e7), top: B:211:0x02da }] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02f9 A[Catch: IOException -> 0x02f5, TRY_LEAVE, TryCatch #1 {IOException -> 0x02f5, blocks: (B:136:0x02f1, B:140:0x02f9), top: B:203:0x02f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0317 A[Catch: Exception -> 0x032b, TryCatch #2 {Exception -> 0x032b, blocks: (B:148:0x0311, B:150:0x0317, B:152:0x031d, B:153:0x0321, B:155:0x0327), top: B:205:0x0311 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0408 A[Catch: IOException -> 0x0404, TRY_LEAVE, TryCatch #12 {IOException -> 0x0404, blocks: (B:190:0x0400, B:194:0x0408), top: B:215:0x0400 }] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x02f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0400 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x036b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:? A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1063
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.k.m0.p0.a(int):void");
    }

    public void b(java.lang.String str) {
        f.a.i.l.a.v(this.a.a, str, "net.easyconn.fileProvider");
        this.a.f3095f = false;
    }

    public void c(int i, java.lang.String str, float f2) {
        e.e.a.g.b("UpdateManager", "onDownload status = " + i + " percent = " + f2);
        if (i == 2) {
            this.a.f3092c.m(str, f2);
        } else {
            this.a.f3092c.v();
            this.a.f3092c.s(i);
        }
    }
}
