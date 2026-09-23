package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class JSONObject extends com.alibaba.fastjson.JSON implements java.util.Map<java.lang.String, java.lang.Object>, java.lang.Cloneable, java.io.Serializable, java.lang.reflect.InvocationHandler {
    public static final int DEFAULT_INITIAL_CAPACITY = 16;
    public static final long serialVersionUID = 1;
    public final java.util.Map<java.lang.String, java.lang.Object> map;

    public static class SecureObjectInputStream extends java.io.ObjectInputStream {
        public static java.lang.reflect.Field[] fields;
        public static volatile boolean fields_error;

        public SecureObjectInputStream(java.io.ObjectInputStream objectInputStream) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
            super(objectInputStream);
            for (int i = 0; i < fields.length; i++) {
                try {
                    java.lang.reflect.Field field = fields[i];
                    field.set(this, field.get(objectInputStream));
                } catch (java.lang.IllegalAccessException unused) {
                    fields_error = true;
                    return;
                }
            }
        }

        public static void ensureFields() {
            if (fields != null || fields_error) {
                return;
            }
            try {
                java.lang.reflect.Field[] declaredFields = java.io.ObjectInputStream.class.getDeclaredFields();
                java.lang.String[] strArr = {"bin", "passHandle", "handles", "curContext"};
                java.lang.reflect.Field[] fieldArr = new java.lang.reflect.Field[4];
                for (int i = 0; i < 4; i++) {
                    java.lang.reflect.Field field = com.alibaba.fastjson.util.TypeUtils.getField(java.io.ObjectInputStream.class, strArr[i], declaredFields);
                    field.setAccessible(true);
                    fieldArr[i] = field;
                }
                fields = fieldArr;
            } catch (java.lang.Throwable unused) {
                fields_error = true;
            }
        }

        @Override // java.io.ObjectInputStream
        public void readStreamHeader() {
        }

        @Override // java.io.ObjectInputStream
        public java.lang.Class<?> resolveClass(java.io.ObjectStreamClass objectStreamClass) throws java.lang.Throwable {
            java.lang.String name = objectStreamClass.getName();
            if (name.length() > 2) {
                int iLastIndexOf = name.lastIndexOf(91);
                if (iLastIndexOf != -1) {
                    name = name.substring(iLastIndexOf + 1);
                }
                if (name.length() > 2 && name.charAt(0) == 'L' && name.charAt(name.length() - 1) == ';') {
                    name = name.substring(1, name.length() - 1);
                }
                if (com.alibaba.fastjson.util.TypeUtils.getClassFromMapping(name) == null) {
                    com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(name, null, com.alibaba.fastjson.parser.Feature.SupportAutoType.mask);
                }
            }
            return super.resolveClass(objectStreamClass);
        }

        @Override // java.io.ObjectInputStream
        public java.lang.Class<?> resolveProxyClass(java.lang.String[] strArr) {
            for (java.lang.String str : strArr) {
                if (com.alibaba.fastjson.util.TypeUtils.getClassFromMapping(str) == null) {
                    com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(str, null);
                }
            }
            return super.resolveProxyClass(strArr);
        }
    }

    public JSONObject() {
        this(16, false);
    }

    public JSONObject(int i) {
        this(i, false);
    }

    public JSONObject(int i, boolean z) {
        this.map = z ? new java.util.LinkedHashMap<>(i) : new java.util.HashMap<>(i);
    }

    public JSONObject(java.util.Map<java.lang.String, java.lang.Object> map) {
        if (map == null) {
            throw new java.lang.IllegalArgumentException("map is null.");
        }
        this.map = map;
    }

    public JSONObject(boolean z) {
        this(16, z);
    }

    private void readObject(java.io.ObjectInputStream objectInputStream) throws java.lang.ClassNotFoundException, java.io.IOException {
        com.alibaba.fastjson.JSONObject.SecureObjectInputStream.ensureFields();
        if (com.alibaba.fastjson.JSONObject.SecureObjectInputStream.fields != null && !com.alibaba.fastjson.JSONObject.SecureObjectInputStream.fields_error) {
            try {
                new com.alibaba.fastjson.JSONObject.SecureObjectInputStream(objectInputStream).defaultReadObject();
                return;
            } catch (java.io.NotActiveException unused) {
            }
        }
        objectInputStream.defaultReadObject();
        for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : this.map.entrySet()) {
            java.lang.String key = entry.getKey();
            if (key != null) {
                com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(key.getClass());
            }
            java.lang.Object value = entry.getValue();
            if (value != null) {
                com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(value.getClass());
            }
        }
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public com.alibaba.fastjson.JSONObject m0clone() {
        return new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) (this.map instanceof java.util.LinkedHashMap ? new java.util.LinkedHashMap(this.map) : new java.util.HashMap(this.map)));
    }

    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        boolean zContainsKey = this.map.containsKey(obj);
        return !zContainsKey ? ((obj instanceof java.lang.Number) || (obj instanceof java.lang.Character) || (obj instanceof java.lang.Boolean) || (obj instanceof java.util.UUID)) ? this.map.containsKey(obj.toString()) : zContainsKey : zContainsKey;
    }

    @Override // java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<java.lang.String, java.lang.Object>> entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(java.lang.Object obj) {
        java.util.Map<java.lang.String, java.lang.Object> map;
        if (this == obj) {
            return true;
        }
        if (obj instanceof com.alibaba.fastjson.JSONObject) {
            map = this.map;
            obj = ((com.alibaba.fastjson.JSONObject) obj).map;
        } else {
            map = this.map;
        }
        return map.equals(obj);
    }

    public com.alibaba.fastjson.JSONObject fluentClear() {
        this.map.clear();
        return this;
    }

    public com.alibaba.fastjson.JSONObject fluentPut(java.lang.String str, java.lang.Object obj) {
        this.map.put(str, obj);
        return this;
    }

    public com.alibaba.fastjson.JSONObject fluentPutAll(java.util.Map<? extends java.lang.String, ?> map) {
        this.map.putAll(map);
        return this;
    }

    public com.alibaba.fastjson.JSONObject fluentRemove(java.lang.Object obj) {
        this.map.remove(obj);
        return this;
    }

    @Override // java.util.Map
    public java.lang.Object get(java.lang.Object obj) {
        java.lang.Object obj2 = this.map.get(obj);
        return obj2 == null ? ((obj instanceof java.lang.Number) || (obj instanceof java.lang.Character) || (obj instanceof java.lang.Boolean) || (obj instanceof java.util.UUID)) ? this.map.get(obj.toString()) : obj2 : obj2;
    }

    public java.math.BigDecimal getBigDecimal(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToBigDecimal(get(str));
    }

    public java.math.BigInteger getBigInteger(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToBigInteger(get(str));
    }

    public java.lang.Boolean getBoolean(java.lang.String str) {
        java.lang.Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.util.TypeUtils.castToBoolean(obj);
    }

    public boolean getBooleanValue(java.lang.String str) {
        java.lang.Boolean boolCastToBoolean = com.alibaba.fastjson.util.TypeUtils.castToBoolean(get(str));
        if (boolCastToBoolean == null) {
            return false;
        }
        return boolCastToBoolean.booleanValue();
    }

    public java.lang.Byte getByte(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToByte(get(str));
    }

    public byte getByteValue(java.lang.String str) throws java.lang.NumberFormatException {
        java.lang.Byte bCastToByte = com.alibaba.fastjson.util.TypeUtils.castToByte(get(str));
        if (bCastToByte == null) {
            return (byte) 0;
        }
        return bCastToByte.byteValue();
    }

    public byte[] getBytes(java.lang.String str) {
        java.lang.Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.util.TypeUtils.castToBytes(obj);
    }

    public java.util.Date getDate(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToDate(get(str));
    }

    public java.lang.Double getDouble(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToDouble(get(str));
    }

    public double getDoubleValue(java.lang.String str) throws java.lang.NumberFormatException {
        java.lang.Double dCastToDouble = com.alibaba.fastjson.util.TypeUtils.castToDouble(get(str));
        if (dCastToDouble == null) {
            return 0.0d;
        }
        return dCastToDouble.doubleValue();
    }

    public java.lang.Float getFloat(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToFloat(get(str));
    }

    public float getFloatValue(java.lang.String str) throws java.lang.NumberFormatException {
        java.lang.Float fCastToFloat = com.alibaba.fastjson.util.TypeUtils.castToFloat(get(str));
        if (fCastToFloat == null) {
            return 0.0f;
        }
        return fCastToFloat.floatValue();
    }

    public java.util.Map<java.lang.String, java.lang.Object> getInnerMap() {
        return this.map;
    }

    public int getIntValue(java.lang.String str) {
        java.lang.Integer numCastToInt = com.alibaba.fastjson.util.TypeUtils.castToInt(get(str));
        if (numCastToInt == null) {
            return 0;
        }
        return numCastToInt.intValue();
    }

    public java.lang.Integer getInteger(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToInt(get(str));
    }

    public com.alibaba.fastjson.JSONArray getJSONArray(java.lang.String str) {
        java.lang.Object obj = this.map.get(str);
        if (obj instanceof com.alibaba.fastjson.JSONArray) {
            return (com.alibaba.fastjson.JSONArray) obj;
        }
        if (obj instanceof java.util.List) {
            return new com.alibaba.fastjson.JSONArray((java.util.List<java.lang.Object>) obj);
        }
        return (com.alibaba.fastjson.JSONArray) (obj instanceof java.lang.String ? com.alibaba.fastjson.JSON.parse((java.lang.String) obj) : com.alibaba.fastjson.JSON.toJSON(obj));
    }

    public com.alibaba.fastjson.JSONObject getJSONObject(java.lang.String str) {
        java.lang.Object obj = this.map.get(str);
        return obj instanceof com.alibaba.fastjson.JSONObject ? (com.alibaba.fastjson.JSONObject) obj : obj instanceof java.util.Map ? new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) obj) : obj instanceof java.lang.String ? com.alibaba.fastjson.JSON.parseObject((java.lang.String) obj) : (com.alibaba.fastjson.JSONObject) com.alibaba.fastjson.JSON.toJSON(obj);
    }

    public java.lang.Long getLong(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToLong(get(str));
    }

    public long getLongValue(java.lang.String str) {
        java.lang.Long lCastToLong = com.alibaba.fastjson.util.TypeUtils.castToLong(get(str));
        if (lCastToLong == null) {
            return 0L;
        }
        return lCastToLong.longValue();
    }

    public <T> T getObject(java.lang.String str, com.alibaba.fastjson.TypeReference typeReference) {
        T t = (T) this.map.get(str);
        return typeReference == null ? t : (T) com.alibaba.fastjson.util.TypeUtils.cast(t, typeReference.getType(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public <T> T getObject(java.lang.String str, java.lang.Class<T> cls) {
        return (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(this.map.get(str), cls);
    }

    public <T> T getObject(java.lang.String str, java.lang.reflect.Type type) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(this.map.get(str), type, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    @Override // java.util.Map
    public java.lang.Object getOrDefault(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    public java.lang.Short getShort(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToShort(get(str));
    }

    public short getShortValue(java.lang.String str) throws java.lang.NumberFormatException {
        java.lang.Short shCastToShort = com.alibaba.fastjson.util.TypeUtils.castToShort(get(str));
        if (shCastToShort == null) {
            return (short) 0;
        }
        return shCastToShort.shortValue();
    }

    public java.lang.Object getSqlDate(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToSqlDate(get(str));
    }

    public java.lang.String getString(java.lang.String str) {
        java.lang.Object obj = get(str);
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public java.lang.Object getTimestamp(java.lang.String str) {
        return com.alibaba.fastjson.util.TypeUtils.castToTimestamp(get(str));
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.map.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public java.lang.Object invoke(java.lang.Object obj, java.lang.reflect.Method method, java.lang.Object[] objArr) {
        java.lang.String strSubstring;
        java.lang.StringBuilder sb;
        java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
        java.lang.String string = null;
        if (parameterTypes.length == 1) {
            if (method.getName().equals("equals")) {
                return java.lang.Boolean.valueOf(equals(objArr[0]));
            }
            if (method.getReturnType() != java.lang.Void.TYPE) {
                throw new com.alibaba.fastjson.JSONException("illegal setter");
            }
            com.alibaba.fastjson.annotation.JSONField jSONField = (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(method, com.alibaba.fastjson.annotation.JSONField.class);
            java.lang.String strName = (jSONField == null || jSONField.name().length() == 0) ? null : jSONField.name();
            if (strName == null) {
                java.lang.String name = method.getName();
                if (!name.startsWith("set")) {
                    throw new com.alibaba.fastjson.JSONException("illegal setter");
                }
                java.lang.String strSubstring2 = name.substring(3);
                if (strSubstring2.length() == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal setter");
                }
                strName = java.lang.Character.toLowerCase(strSubstring2.charAt(0)) + strSubstring2.substring(1);
            }
            this.map.put(strName, objArr[0]);
            return null;
        }
        if (parameterTypes.length != 0) {
            throw new java.lang.UnsupportedOperationException(method.toGenericString());
        }
        if (method.getReturnType() == java.lang.Void.TYPE) {
            throw new com.alibaba.fastjson.JSONException("illegal getter");
        }
        com.alibaba.fastjson.annotation.JSONField jSONField2 = (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(method, com.alibaba.fastjson.annotation.JSONField.class);
        if (jSONField2 != null && jSONField2.name().length() != 0) {
            string = jSONField2.name();
        }
        if (string == null) {
            java.lang.String name2 = method.getName();
            if (name2.startsWith("get")) {
                strSubstring = name2.substring(3);
                if (strSubstring.length() == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal getter");
                }
                sb = new java.lang.StringBuilder();
            } else {
                if (!name2.startsWith(com.umeng.analytics.pro.ai.ae)) {
                    if (name2.startsWith("hashCode")) {
                        return java.lang.Integer.valueOf(hashCode());
                    }
                    if (name2.startsWith("toString")) {
                        return toString();
                    }
                    throw new com.alibaba.fastjson.JSONException("illegal getter");
                }
                strSubstring = name2.substring(2);
                if (strSubstring.length() == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal getter");
                }
                sb = new java.lang.StringBuilder();
            }
            sb.append(java.lang.Character.toLowerCase(strSubstring.charAt(0)));
            sb.append(strSubstring.substring(1));
            string = sb.toString();
        }
        return com.alibaba.fastjson.util.TypeUtils.cast(this.map.get(string), method.getGenericReturnType(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public java.util.Set<java.lang.String> keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public java.lang.Object put(java.lang.String str, java.lang.Object obj) {
        return this.map.put(str, obj);
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends java.lang.String, ? extends java.lang.Object> map) {
        this.map.putAll(map);
    }

    @Override // java.util.Map
    public java.lang.Object remove(java.lang.Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.JSON
    public <T> T toJavaObject(java.lang.Class<T> cls) {
        return (cls == java.util.Map.class || cls == com.alibaba.fastjson.JSONObject.class || cls == com.alibaba.fastjson.JSON.class) ? this : (cls != java.lang.Object.class || containsKey(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY)) ? (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(this, cls, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance()) : this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T toJavaObject(java.lang.Class<T> cls, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i) {
        return cls == java.util.Map.class ? this : (cls != java.lang.Object.class || containsKey(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY)) ? (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(this, cls, parserConfig) : this;
    }

    @Override // java.util.Map
    public java.util.Collection<java.lang.Object> values() {
        return this.map.values();
    }
}
