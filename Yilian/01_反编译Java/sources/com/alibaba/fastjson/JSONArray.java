package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class JSONArray extends com.alibaba.fastjson.JSON implements java.util.List<java.lang.Object>, java.lang.Cloneable, java.util.RandomAccess, java.io.Serializable {
    public static final long serialVersionUID = 1;
    public transient java.lang.reflect.Type componentType;
    public final java.util.List<java.lang.Object> list;
    public transient java.lang.Object relatedArray;

    public JSONArray() {
        this.list = new java.util.ArrayList();
    }

    public JSONArray(int i) {
        this.list = new java.util.ArrayList(i);
    }

    public JSONArray(java.util.List<java.lang.Object> list) {
        if (list == null) {
            throw new java.lang.IllegalArgumentException("list is null.");
        }
        this.list = list;
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
        for (java.lang.Object obj : this.list) {
            if (obj != null) {
                java.lang.String name = obj.getClass().getName();
                if (com.alibaba.fastjson.util.TypeUtils.getClassFromMapping(name) == null) {
                    com.alibaba.fastjson.parser.ParserConfig.global.checkAutoType(name, null);
                }
            }
        }
    }

    @Override // java.util.List
    public void add(int i, java.lang.Object obj) {
        this.list.add(i, obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(java.lang.Object obj) {
        return this.list.add(obj);
    }

    @Override // java.util.List
    public boolean addAll(int i, java.util.Collection<? extends java.lang.Object> collection) {
        return this.list.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(java.util.Collection<?> collection) {
        return this.list.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        this.list.clear();
    }

    public java.lang.Object clone() {
        return new com.alibaba.fastjson.JSONArray(new java.util.ArrayList(this.list));
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(java.lang.Object obj) {
        return this.list.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(java.util.Collection<?> collection) {
        return this.list.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(java.lang.Object obj) {
        java.util.List<java.lang.Object> list;
        if (this == obj) {
            return true;
        }
        if (obj instanceof com.alibaba.fastjson.JSONArray) {
            list = this.list;
            obj = ((com.alibaba.fastjson.JSONArray) obj).list;
        } else {
            list = this.list;
        }
        return list.equals(obj);
    }

    public com.alibaba.fastjson.JSONArray fluentAdd(int i, java.lang.Object obj) {
        this.list.add(i, obj);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentAdd(java.lang.Object obj) {
        this.list.add(obj);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentAddAll(int i, java.util.Collection<?> collection) {
        this.list.addAll(i, collection);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentAddAll(java.util.Collection<?> collection) {
        this.list.addAll(collection);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentClear() {
        this.list.clear();
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentRemove(int i) {
        this.list.remove(i);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentRemove(java.lang.Object obj) {
        this.list.remove(obj);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentRemoveAll(java.util.Collection<?> collection) {
        this.list.removeAll(collection);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentRetainAll(java.util.Collection<?> collection) {
        this.list.retainAll(collection);
        return this;
    }

    public com.alibaba.fastjson.JSONArray fluentSet(int i, java.lang.Object obj) {
        set(i, obj);
        return this;
    }

    @Override // java.util.List
    public java.lang.Object get(int i) {
        return this.list.get(i);
    }

    public java.math.BigDecimal getBigDecimal(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToBigDecimal(get(i));
    }

    public java.math.BigInteger getBigInteger(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToBigInteger(get(i));
    }

    public java.lang.Boolean getBoolean(int i) {
        java.lang.Object obj = get(i);
        if (obj == null) {
            return null;
        }
        return com.alibaba.fastjson.util.TypeUtils.castToBoolean(obj);
    }

    public boolean getBooleanValue(int i) {
        java.lang.Object obj = get(i);
        if (obj == null) {
            return false;
        }
        return com.alibaba.fastjson.util.TypeUtils.castToBoolean(obj).booleanValue();
    }

    public java.lang.Byte getByte(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToByte(get(i));
    }

    public byte getByteValue(int i) throws java.lang.NumberFormatException {
        java.lang.Byte bCastToByte = com.alibaba.fastjson.util.TypeUtils.castToByte(get(i));
        if (bCastToByte == null) {
            return (byte) 0;
        }
        return bCastToByte.byteValue();
    }

    public java.lang.reflect.Type getComponentType() {
        return this.componentType;
    }

    public java.util.Date getDate(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToDate(get(i));
    }

    public java.lang.Double getDouble(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToDouble(get(i));
    }

    public double getDoubleValue(int i) throws java.lang.NumberFormatException {
        java.lang.Double dCastToDouble = com.alibaba.fastjson.util.TypeUtils.castToDouble(get(i));
        if (dCastToDouble == null) {
            return 0.0d;
        }
        return dCastToDouble.doubleValue();
    }

    public java.lang.Float getFloat(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToFloat(get(i));
    }

    public float getFloatValue(int i) throws java.lang.NumberFormatException {
        java.lang.Float fCastToFloat = com.alibaba.fastjson.util.TypeUtils.castToFloat(get(i));
        if (fCastToFloat == null) {
            return 0.0f;
        }
        return fCastToFloat.floatValue();
    }

    public int getIntValue(int i) {
        java.lang.Integer numCastToInt = com.alibaba.fastjson.util.TypeUtils.castToInt(get(i));
        if (numCastToInt == null) {
            return 0;
        }
        return numCastToInt.intValue();
    }

    public java.lang.Integer getInteger(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToInt(get(i));
    }

    public com.alibaba.fastjson.JSONArray getJSONArray(int i) {
        java.lang.Object obj = this.list.get(i);
        return obj instanceof com.alibaba.fastjson.JSONArray ? (com.alibaba.fastjson.JSONArray) obj : obj instanceof java.util.List ? new com.alibaba.fastjson.JSONArray((java.util.List<java.lang.Object>) obj) : (com.alibaba.fastjson.JSONArray) com.alibaba.fastjson.JSON.toJSON(obj);
    }

    public com.alibaba.fastjson.JSONObject getJSONObject(int i) {
        java.lang.Object obj = this.list.get(i);
        return obj instanceof com.alibaba.fastjson.JSONObject ? (com.alibaba.fastjson.JSONObject) obj : obj instanceof java.util.Map ? new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) obj) : (com.alibaba.fastjson.JSONObject) com.alibaba.fastjson.JSON.toJSON(obj);
    }

    public java.lang.Long getLong(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToLong(get(i));
    }

    public long getLongValue(int i) {
        java.lang.Long lCastToLong = com.alibaba.fastjson.util.TypeUtils.castToLong(get(i));
        if (lCastToLong == null) {
            return 0L;
        }
        return lCastToLong.longValue();
    }

    public <T> T getObject(int i, java.lang.Class<T> cls) {
        return (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(this.list.get(i), cls);
    }

    public <T> T getObject(int i, java.lang.reflect.Type type) {
        java.lang.Object obj = this.list.get(i);
        return type instanceof java.lang.Class ? (T) com.alibaba.fastjson.util.TypeUtils.castToJavaBean(obj, (java.lang.Class) type) : (T) com.alibaba.fastjson.JSON.parseObject(com.alibaba.fastjson.JSON.toJSONString(obj), type, new com.alibaba.fastjson.parser.Feature[0]);
    }

    public java.lang.Object getRelatedArray() {
        return this.relatedArray;
    }

    public java.lang.Short getShort(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToShort(get(i));
    }

    public short getShortValue(int i) throws java.lang.NumberFormatException {
        java.lang.Short shCastToShort = com.alibaba.fastjson.util.TypeUtils.castToShort(get(i));
        if (shCastToShort == null) {
            return (short) 0;
        }
        return shCastToShort.shortValue();
    }

    public java.lang.Object getSqlDate(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToSqlDate(get(i));
    }

    public java.lang.String getString(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToString(get(i));
    }

    public java.lang.Object getTimestamp(int i) {
        return com.alibaba.fastjson.util.TypeUtils.castToTimestamp(get(i));
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override // java.util.List
    public int indexOf(java.lang.Object obj) {
        return this.list.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public java.util.Iterator<java.lang.Object> iterator() {
        return this.list.iterator();
    }

    @Override // java.util.List
    public int lastIndexOf(java.lang.Object obj) {
        return this.list.lastIndexOf(obj);
    }

    @Override // java.util.List
    public java.util.ListIterator<java.lang.Object> listIterator() {
        return this.list.listIterator();
    }

    @Override // java.util.List
    public java.util.ListIterator<java.lang.Object> listIterator(int i) {
        return this.list.listIterator(i);
    }

    @Override // java.util.List
    public java.lang.Object remove(int i) {
        return this.list.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(java.lang.Object obj) {
        return this.list.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(java.util.Collection<?> collection) {
        return this.list.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(java.util.Collection<?> collection) {
        return this.list.retainAll(collection);
    }

    @Override // java.util.List
    public java.lang.Object set(int i, java.lang.Object obj) {
        if (i != -1) {
            if (this.list.size() > i) {
                return this.list.set(i, obj);
            }
            for (int size = this.list.size(); size < i; size++) {
                this.list.add(null);
            }
        }
        this.list.add(obj);
        return null;
    }

    public void setComponentType(java.lang.reflect.Type type) {
        this.componentType = type;
    }

    public void setRelatedArray(java.lang.Object obj) {
        this.relatedArray = obj;
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.list.size();
    }

    @Override // java.util.List
    public java.util.List<java.lang.Object> subList(int i, int i2) {
        return this.list.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public java.lang.Object[] toArray() {
        return this.list.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.list.toArray(tArr);
    }

    public <T> java.util.List<T> toJavaList(java.lang.Class<T> cls) {
        java.util.ArrayList arrayList = new java.util.ArrayList(size());
        com.alibaba.fastjson.parser.ParserConfig globalInstance = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
        java.util.Iterator<java.lang.Object> it = iterator();
        while (it.hasNext()) {
            arrayList.add(com.alibaba.fastjson.util.TypeUtils.cast(it.next(), (java.lang.Class) cls, globalInstance));
        }
        return arrayList;
    }
}
