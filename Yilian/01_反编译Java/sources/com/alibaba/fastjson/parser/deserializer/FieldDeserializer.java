package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public abstract class FieldDeserializer {
    public com.alibaba.fastjson.serializer.BeanContext beanContext;
    public final java.lang.Class<?> clazz;
    public final com.alibaba.fastjson.util.FieldInfo fieldInfo;

    public FieldDeserializer(java.lang.Class<?> cls, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        this.clazz = cls;
        this.fieldInfo = fieldInfo;
    }

    public static boolean degradeValueAssignment(java.lang.reflect.Field field, java.lang.reflect.Method method, java.lang.Object obj, java.lang.Object obj2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (setFieldValue(field, obj, obj2)) {
            return true;
        }
        try {
            obj.getClass().getDeclaredMethod("set" + method.getName().substring(3), method.getReturnType()).invoke(obj, obj2);
            return true;
        } catch (java.lang.IllegalAccessException | java.lang.NoSuchMethodException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    public static boolean setFieldValue(java.lang.reflect.Field field, java.lang.Object obj, java.lang.Object obj2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        if (field == null || java.lang.reflect.Modifier.isFinal(field.getModifiers())) {
            return false;
        }
        field.set(obj, obj2);
        return true;
    }

    public int getFastMatchToken() {
        return 0;
    }

    public java.lang.Class<?> getOwnerClass() {
        return this.clazz;
    }

    public abstract void parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map);

    public void setValue(java.lang.Object obj, int i) {
        setValue(obj, java.lang.Integer.valueOf(i));
    }

    public void setValue(java.lang.Object obj, long j) {
        setValue(obj, java.lang.Long.valueOf(j));
    }

    public void setValue(java.lang.Object obj, java.lang.Object obj2) {
        com.alibaba.fastjson.util.FieldInfo fieldInfo;
        java.lang.String str;
        if (obj2 == null && this.fieldInfo.fieldClass.isPrimitive()) {
            return;
        }
        com.alibaba.fastjson.util.FieldInfo fieldInfo2 = this.fieldInfo;
        if (fieldInfo2.fieldClass == java.lang.String.class && (str = fieldInfo2.format) != null && str.equals("trim")) {
            obj2 = ((java.lang.String) obj2).trim();
        }
        try {
            java.lang.reflect.Method method = this.fieldInfo.method;
            if (method == null) {
                java.lang.reflect.Field field = this.fieldInfo.field;
                if (!this.fieldInfo.getOnly) {
                    if (field != null) {
                        field.set(obj, obj2);
                        return;
                    }
                    return;
                }
                if (this.fieldInfo.fieldClass == java.util.concurrent.atomic.AtomicInteger.class) {
                    java.util.concurrent.atomic.AtomicInteger atomicInteger = (java.util.concurrent.atomic.AtomicInteger) field.get(obj);
                    if (atomicInteger != null) {
                        atomicInteger.set(((java.util.concurrent.atomic.AtomicInteger) obj2).get());
                        return;
                    }
                    return;
                }
                if (this.fieldInfo.fieldClass == java.util.concurrent.atomic.AtomicLong.class) {
                    java.util.concurrent.atomic.AtomicLong atomicLong = (java.util.concurrent.atomic.AtomicLong) field.get(obj);
                    if (atomicLong != null) {
                        atomicLong.set(((java.util.concurrent.atomic.AtomicLong) obj2).get());
                        return;
                    }
                    return;
                }
                if (this.fieldInfo.fieldClass == java.util.concurrent.atomic.AtomicBoolean.class) {
                    java.util.concurrent.atomic.AtomicBoolean atomicBoolean = (java.util.concurrent.atomic.AtomicBoolean) field.get(obj);
                    if (atomicBoolean != null) {
                        atomicBoolean.set(((java.util.concurrent.atomic.AtomicBoolean) obj2).get());
                        return;
                    }
                    return;
                }
                if (java.util.Map.class.isAssignableFrom(this.fieldInfo.fieldClass)) {
                    java.util.Map map = (java.util.Map) field.get(obj);
                    if (map != null && map != java.util.Collections.emptyMap() && !map.getClass().getName().startsWith("java.util.Collections$Unmodifiable")) {
                        map.putAll((java.util.Map) obj2);
                        return;
                    }
                    return;
                }
                java.util.Collection collection = (java.util.Collection) field.get(obj);
                if (collection != null && obj2 != null && collection != java.util.Collections.emptySet() && collection != java.util.Collections.emptyList() && !collection.getClass().getName().startsWith("java.util.Collections$Unmodifiable")) {
                    collection.clear();
                    collection.addAll((java.util.Collection) obj2);
                    return;
                }
                return;
            }
            if (!this.fieldInfo.getOnly) {
                method.invoke(obj, obj2);
                return;
            }
            if (this.fieldInfo.fieldClass == java.util.concurrent.atomic.AtomicInteger.class) {
                java.util.concurrent.atomic.AtomicInteger atomicInteger2 = (java.util.concurrent.atomic.AtomicInteger) method.invoke(obj, new java.lang.Object[0]);
                if (atomicInteger2 != null) {
                    atomicInteger2.set(((java.util.concurrent.atomic.AtomicInteger) obj2).get());
                    return;
                }
                fieldInfo = this.fieldInfo;
            } else if (this.fieldInfo.fieldClass == java.util.concurrent.atomic.AtomicLong.class) {
                java.util.concurrent.atomic.AtomicLong atomicLong2 = (java.util.concurrent.atomic.AtomicLong) method.invoke(obj, new java.lang.Object[0]);
                if (atomicLong2 != null) {
                    atomicLong2.set(((java.util.concurrent.atomic.AtomicLong) obj2).get());
                    return;
                }
                fieldInfo = this.fieldInfo;
            } else if (this.fieldInfo.fieldClass == java.util.concurrent.atomic.AtomicBoolean.class) {
                java.util.concurrent.atomic.AtomicBoolean atomicBoolean2 = (java.util.concurrent.atomic.AtomicBoolean) method.invoke(obj, new java.lang.Object[0]);
                if (atomicBoolean2 != null) {
                    atomicBoolean2.set(((java.util.concurrent.atomic.AtomicBoolean) obj2).get());
                    return;
                }
                fieldInfo = this.fieldInfo;
            } else if (java.util.Map.class.isAssignableFrom(method.getReturnType())) {
                try {
                    java.util.Map map2 = (java.util.Map) method.invoke(obj, new java.lang.Object[0]);
                    if (map2 != null) {
                        if (map2 == java.util.Collections.emptyMap()) {
                            return;
                        }
                        if (map2.isEmpty() && ((java.util.Map) obj2).isEmpty()) {
                            return;
                        }
                        java.lang.String name = map2.getClass().getName();
                        if (!name.equals("java.util.ImmutableCollections$Map1") && !name.equals("java.util.ImmutableCollections$MapN") && !name.startsWith("java.util.Collections$Unmodifiable")) {
                            if (map2.getClass().getName().equals("kotlin.collections.EmptyMap")) {
                                degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                                return;
                            } else {
                                map2.putAll((java.util.Map) obj2);
                                return;
                            }
                        }
                        return;
                    }
                    if (obj2 == null) {
                        return;
                    } else {
                        fieldInfo = this.fieldInfo;
                    }
                } catch (java.lang.reflect.InvocationTargetException unused) {
                    degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                    return;
                }
            } else {
                try {
                    java.util.Collection collection2 = (java.util.Collection) method.invoke(obj, new java.lang.Object[0]);
                    if (collection2 != null && obj2 != null) {
                        java.lang.String name2 = collection2.getClass().getName();
                        if (collection2 != java.util.Collections.emptySet() && collection2 != java.util.Collections.emptyList() && name2 != "java.util.ImmutableCollections$ListN" && name2 != "java.util.ImmutableCollections$List12" && !name2.startsWith("java.util.Collections$Unmodifiable")) {
                            if (!collection2.isEmpty()) {
                                collection2.clear();
                            } else if (((java.util.Collection) obj2).isEmpty()) {
                                return;
                            }
                            if (!name2.equals("kotlin.collections.EmptyList") && !name2.equals("kotlin.collections.EmptySet")) {
                                collection2.addAll((java.util.Collection) obj2);
                                return;
                            }
                            degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                            return;
                        }
                        return;
                    }
                    if (collection2 != null || obj2 == null) {
                        return;
                    } else {
                        fieldInfo = this.fieldInfo;
                    }
                } catch (java.lang.reflect.InvocationTargetException unused2) {
                    degradeValueAssignment(this.fieldInfo.field, method, obj, obj2);
                    return;
                }
            }
            degradeValueAssignment(fieldInfo.field, method, obj, obj2);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("set property error, ");
            sbO.append(this.clazz.getName());
            sbO.append("#");
            sbO.append(this.fieldInfo.name);
            throw new com.alibaba.fastjson.JSONException(sbO.toString(), e2);
        }
    }

    public void setValue(java.lang.Object obj, java.lang.String str) {
        setValue(obj, (java.lang.Object) str);
    }

    public void setValue(java.lang.Object obj, boolean z) {
        setValue(obj, java.lang.Boolean.valueOf(z));
    }

    public void setWrappedValue(java.lang.String str, java.lang.Object obj) {
        throw new com.alibaba.fastjson.JSONException("TODO");
    }
}
