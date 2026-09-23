package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public interface MethodVisitor {
    void visitEnd();

    void visitFieldInsn(int i, java.lang.String str, java.lang.String str2, java.lang.String str3);

    void visitIincInsn(int i, int i2);

    void visitInsn(int i);

    void visitIntInsn(int i, int i2);

    void visitJumpInsn(int i, com.alibaba.fastjson.asm.Label label);

    void visitLabel(com.alibaba.fastjson.asm.Label label);

    void visitLdcInsn(java.lang.Object obj);

    void visitMaxs(int i, int i2);

    void visitMethodInsn(int i, java.lang.String str, java.lang.String str2, java.lang.String str3);

    void visitTypeInsn(int i, java.lang.String str);

    void visitVarInsn(int i, int i2);
}
