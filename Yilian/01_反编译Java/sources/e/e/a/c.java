package e.e.a;

/* loaded from: classes.dex */
public class c implements e.e.a.f {
    public final android.os.Handler a;

    public static class a extends android.os.Handler {
        public final java.lang.String a;
        public final int b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(android.os.Looper looper, java.lang.String str, int i) {
            super(looper);
            if (looper == null) {
                throw null;
            }
            if (str == null) {
                throw null;
            }
            this.a = str;
            this.b = i;
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            java.io.FileWriter fileWriter;
            java.lang.String str = (java.lang.String) message.obj;
            java.lang.String str2 = this.a;
            java.io.FileWriter fileWriter2 = null;
            if (str2 == null) {
                throw null;
            }
            java.io.File file = new java.io.File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            java.io.File file2 = new java.io.File(file, java.lang.String.format("%s_%s.csv", "logs", 0));
            java.io.File file3 = null;
            int i = 0;
            while (file2.exists()) {
                i++;
                file3 = file2;
                file2 = new java.io.File(file, java.lang.String.format("%s_%s.csv", "logs", java.lang.Integer.valueOf(i)));
            }
            if (file3 != null && file3.length() < this.b) {
                file2 = file3;
            }
            try {
                fileWriter = new java.io.FileWriter(file2, true);
            } catch (java.io.IOException unused) {
            }
            try {
                if (str == null) {
                    throw null;
                }
                fileWriter.append((java.lang.CharSequence) str);
                fileWriter.flush();
                fileWriter.close();
            } catch (java.io.IOException unused2) {
                fileWriter2 = fileWriter;
                if (fileWriter2 != null) {
                    try {
                        fileWriter2.flush();
                        fileWriter2.close();
                    } catch (java.io.IOException unused3) {
                    }
                }
            }
        }
    }

    public c(android.os.Handler handler) {
        this.a = handler;
    }
}
