package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class GenericArrayTypeImpl implements java.lang.reflect.GenericArrayType {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public final java.lang.reflect.Type genericComponentType;

    public GenericArrayTypeImpl(java.lang.reflect.Type type) {
        this.genericComponentType = type;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof java.lang.reflect.GenericArrayType) {
            return this.genericComponentType.equals(((java.lang.reflect.GenericArrayType) obj).getGenericComponentType());
        }
        return false;
    }

    @Override // java.lang.reflect.GenericArrayType
    public java.lang.reflect.Type getGenericComponentType() {
        return this.genericComponentType;
    }

    public int hashCode() {
        return this.genericComponentType.hashCode();
    }

    public java.lang.String toString() {
        java.lang.reflect.Type genericComponentType = getGenericComponentType();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(genericComponentType instanceof java.lang.Class ? ((java.lang.Class) genericComponentType).getName() : genericComponentType.toString());
        sb.append("[]");
        return sb.toString();
    }
}
