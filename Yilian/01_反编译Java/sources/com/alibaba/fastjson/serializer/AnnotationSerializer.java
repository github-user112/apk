package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class AnnotationSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static com.alibaba.fastjson.serializer.AnnotationSerializer instance = new com.alibaba.fastjson.serializer.AnnotationSerializer();
    public static volatile java.lang.Class sun_AnnotationType = null;
    public static volatile boolean sun_AnnotationType_error = false;
    public static volatile java.lang.reflect.Method sun_AnnotationType_getInstance;
    public static volatile java.lang.reflect.Method sun_AnnotationType_members;

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        com.alibaba.fastjson.JSONException jSONException;
        java.lang.Class<?>[] interfaces = obj.getClass().getInterfaces();
        if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
            java.lang.Class<?> cls = interfaces[0];
            if (sun_AnnotationType == null && !sun_AnnotationType_error) {
                try {
                    sun_AnnotationType = java.lang.Class.forName("sun.reflect.annotation.AnnotationType");
                } finally {
                }
            }
            if (sun_AnnotationType == null) {
                throw new com.alibaba.fastjson.JSONException("not support Type Annotation.");
            }
            if (sun_AnnotationType_getInstance == null && !sun_AnnotationType_error) {
                try {
                    sun_AnnotationType_getInstance = sun_AnnotationType.getMethod("getInstance", java.lang.Class.class);
                } finally {
                }
            }
            if (sun_AnnotationType_members == null && !sun_AnnotationType_error) {
                try {
                    sun_AnnotationType_members = sun_AnnotationType.getMethod("members", new java.lang.Class[0]);
                } finally {
                }
            }
            if (sun_AnnotationType_getInstance == null || sun_AnnotationType_error) {
                throw new com.alibaba.fastjson.JSONException("not support Type Annotation.");
            }
            try {
                java.lang.Object[] objArr = {cls};
                java.lang.Object objInvoke = null;
                try {
                    java.util.Map map = (java.util.Map) sun_AnnotationType_members.invoke(sun_AnnotationType_getInstance.invoke(null, objArr), new java.lang.Object[0]);
                    com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject(map.size());
                    for (java.util.Map.Entry entry : map.entrySet()) {
                        try {
                            objInvoke = ((java.lang.reflect.Method) entry.getValue()).invoke(obj, new java.lang.Object[0]);
                        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
                        }
                        jSONObject.put((java.lang.String) entry.getKey(), com.alibaba.fastjson.JSON.toJSON(objInvoke));
                    }
                    jSONSerializer.write(jSONObject);
                } finally {
                }
            } finally {
            }
        }
    }
}
