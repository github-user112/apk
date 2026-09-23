package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class cb extends com.umeng.analytics.pro.cd {
    public java.io.InputStream a;
    public java.io.OutputStream b;

    public cb() {
        this.a = null;
        this.b = null;
    }

    public cb(java.io.InputStream inputStream) {
        this.a = null;
        this.b = null;
        this.a = inputStream;
    }

    public cb(java.io.InputStream inputStream, java.io.OutputStream outputStream) {
        this.a = null;
        this.b = null;
        this.a = inputStream;
        this.b = outputStream;
    }

    public cb(java.io.OutputStream outputStream) {
        this.a = null;
        this.b = null;
        this.b = outputStream;
    }

    @Override // com.umeng.analytics.pro.cd
    public int a(byte[] bArr, int i, int i2) throws java.io.IOException, com.umeng.analytics.pro.ce {
        java.io.InputStream inputStream = this.a;
        if (inputStream == null) {
            throw new com.umeng.analytics.pro.ce(1, "Cannot read from null inputStream");
        }
        try {
            int i3 = inputStream.read(bArr, i, i2);
            if (i3 >= 0) {
                return i3;
            }
            throw new com.umeng.analytics.pro.ce(4);
        } catch (java.io.IOException e2) {
            throw new com.umeng.analytics.pro.ce(0, e2);
        }
    }

    @Override // com.umeng.analytics.pro.cd
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.cd
    public void b() {
    }

    @Override // com.umeng.analytics.pro.cd
    public void b(byte[] bArr, int i, int i2) throws java.io.IOException, com.umeng.analytics.pro.ce {
        java.io.OutputStream outputStream = this.b;
        if (outputStream == null) {
            throw new com.umeng.analytics.pro.ce(1, "Cannot write to null outputStream");
        }
        try {
            outputStream.write(bArr, i, i2);
        } catch (java.io.IOException e2) {
            throw new com.umeng.analytics.pro.ce(0, e2);
        }
    }

    @Override // com.umeng.analytics.pro.cd
    public void c() throws java.io.IOException {
        java.io.InputStream inputStream = this.a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (java.io.IOException e2) {
                e2.printStackTrace();
            }
            this.a = null;
        }
        java.io.OutputStream outputStream = this.b;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (java.io.IOException e3) {
                e3.printStackTrace();
            }
            this.b = null;
        }
    }

    @Override // com.umeng.analytics.pro.cd
    public void d() throws java.io.IOException, com.umeng.analytics.pro.ce {
        java.io.OutputStream outputStream = this.b;
        if (outputStream == null) {
            throw new com.umeng.analytics.pro.ce(1, "Cannot flush null outputStream");
        }
        try {
            outputStream.flush();
        } catch (java.io.IOException e2) {
            throw new com.umeng.analytics.pro.ce(0, e2);
        }
    }
}
