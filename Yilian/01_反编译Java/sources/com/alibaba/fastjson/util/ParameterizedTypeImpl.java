package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class ParameterizedTypeImpl implements java.lang.reflect.ParameterizedType {
    public final java.lang.reflect.Type[] actualTypeArguments;
    public final java.lang.reflect.Type ownerType;
    public final java.lang.reflect.Type rawType;

    public ParameterizedTypeImpl(java.lang.reflect.Type[] typeArr, java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        this.actualTypeArguments = typeArr;
        this.ownerType = type;
        this.rawType = type2;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.alibaba.fastjson.util.ParameterizedTypeImpl.class != obj.getClass()) {
            return false;
        }
        com.alibaba.fastjson.util.ParameterizedTypeImpl parameterizedTypeImpl = (com.alibaba.fastjson.util.ParameterizedTypeImpl) obj;
        if (!java.util.Arrays.equals(this.actualTypeArguments, parameterizedTypeImpl.actualTypeArguments)) {
            return false;
        }
        java.lang.reflect.Type type = this.ownerType;
        if (type == null ? parameterizedTypeImpl.ownerType != null : !type.equals(parameterizedTypeImpl.ownerType)) {
            return false;
        }
        java.lang.reflect.Type type2 = this.rawType;
        java.lang.reflect.Type type3 = parameterizedTypeImpl.rawType;
        return type2 != null ? type2.equals(type3) : type3 == null;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type[] getActualTypeArguments() {
        return this.actualTypeArguments;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type getOwnerType() {
        return this.ownerType;
    }

    @Override // java.lang.reflect.ParameterizedType
    public java.lang.reflect.Type getRawType() {
        return this.rawType;
    }

    public int hashCode() {
        java.lang.reflect.Type[] typeArr = this.actualTypeArguments;
        int iHashCode = (typeArr != null ? java.util.Arrays.hashCode(typeArr) : 0) * 31;
        java.lang.reflect.Type type = this.ownerType;
        int iHashCode2 = (iHashCode + (type != null ? type.hashCode() : 0)) * 31;
        java.lang.reflect.Type type2 = this.rawType;
        return iHashCode2 + (type2 != null ? type2.hashCode() : 0);
    }
}
