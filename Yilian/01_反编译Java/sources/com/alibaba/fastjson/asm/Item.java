package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public final class Item {
    public int hashCode;
    public int index;
    public int intVal;
    public long longVal;
    public com.alibaba.fastjson.asm.Item next;
    public java.lang.String strVal1;
    public java.lang.String strVal2;
    public java.lang.String strVal3;
    public int type;

    public Item() {
    }

    public Item(int i, com.alibaba.fastjson.asm.Item item) {
        this.index = i;
        this.type = item.type;
        this.intVal = item.intVal;
        this.longVal = item.longVal;
        this.strVal1 = item.strVal1;
        this.strVal2 = item.strVal2;
        this.strVal3 = item.strVal3;
        this.hashCode = item.hashCode;
    }

    public boolean isEqualTo(com.alibaba.fastjson.asm.Item item) {
        int i = this.type;
        if (i != 1) {
            if (i != 15) {
                if (i == 12) {
                    return item.strVal1.equals(this.strVal1) && item.strVal2.equals(this.strVal2);
                }
                if (i != 13) {
                    switch (i) {
                        case 3:
                        case 4:
                            return item.intVal == this.intVal;
                        case 5:
                        case 6:
                            break;
                        case 7:
                        case 8:
                            break;
                        default:
                            return item.strVal1.equals(this.strVal1) && item.strVal2.equals(this.strVal2) && item.strVal3.equals(this.strVal3);
                    }
                }
            }
            return item.longVal == this.longVal;
        }
        return item.strVal1.equals(this.strVal1);
    }

    public void set(int i) {
        this.type = 3;
        this.intVal = i;
        this.hashCode = Integer.MAX_VALUE & (3 + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void set(int r3, java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            r2 = this;
            r2.type = r3
            r2.strVal1 = r4
            r2.strVal2 = r5
            r2.strVal3 = r6
            r0 = 1
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r3 == r0) goto L41
            r0 = 7
            if (r3 == r0) goto L41
            r0 = 8
            if (r3 == r0) goto L41
            r0 = 12
            if (r3 == r0) goto L33
            r0 = 13
            if (r3 == r0) goto L41
            int r4 = r4.hashCode()
            int r5 = r5.hashCode()
            int r5 = r5 * r4
            int r4 = r6.hashCode()
            int r4 = r4 * r5
        L2d:
            int r4 = r4 + r3
            r3 = r4 & r1
        L30:
            r2.hashCode = r3
            return
        L33:
            int r4 = r4.hashCode()
            int r5 = r5.hashCode()
            int r5 = r5 * r4
            int r5 = r5 + r3
            r3 = r5 & r1
            goto L30
        L41:
            int r4 = r4.hashCode()
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.asm.Item.set(int, java.lang.String, java.lang.String, java.lang.String):void");
    }
}
