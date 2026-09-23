package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class MethodCollector {
    public boolean debugInfoPresent;
    public final int ignoreCount;
    public final int paramCount;
    public final java.lang.StringBuilder result = new java.lang.StringBuilder();
    public int currentParameter = 0;

    public MethodCollector(int i, int i2) {
        this.ignoreCount = i;
        this.paramCount = i2;
        this.debugInfoPresent = i2 == 0;
    }

    public java.lang.String getResult() {
        return this.result.length() != 0 ? this.result.substring(1) : "";
    }

    public void visitLocalVariable(java.lang.String str, int i) {
        int i2 = this.ignoreCount;
        if (i < i2 || i >= i2 + this.paramCount) {
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("arg");
        sbO.append(this.currentParameter);
        if (!str.equals(sbO.toString())) {
            this.debugInfoPresent = true;
        }
        this.result.append(',');
        this.result.append(str);
        this.currentParameter++;
    }
}
