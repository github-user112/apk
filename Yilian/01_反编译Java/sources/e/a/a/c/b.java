package e.a.a.c;

/* loaded from: classes.dex */
public class b extends java.lang.RuntimeException {
    public java.lang.StringBuffer a;

    public b(java.lang.String str, java.lang.Throwable th) {
        super(str == null ? th != null ? th.getMessage() : null : str, th);
        if (!(th instanceof e.a.a.c.b)) {
            this.a = new java.lang.StringBuffer(200);
            return;
        }
        java.lang.String string = ((e.a.a.c.b) th).a.toString();
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(string.length() + 200);
        this.a = stringBuffer;
        stringBuffer.append(string);
    }

    public static e.a.a.c.b b(java.lang.Throwable th, java.lang.String str) {
        e.a.a.c.b bVar = th instanceof e.a.a.c.b ? (e.a.a.c.b) th : new e.a.a.c.b(null, th);
        bVar.a(str);
        return bVar;
    }

    public void a(java.lang.String str) {
        if (str == null) {
            throw new java.lang.NullPointerException("str == null");
        }
        this.a.append(str);
        if (str.endsWith("\n")) {
            return;
        }
        this.a.append('\n');
    }

    @Override // java.lang.Throwable
    public void printStackTrace(java.io.PrintStream printStream) {
        super.printStackTrace(printStream);
        printStream.println(this.a);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(java.io.PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        printWriter.println(this.a);
    }
}
