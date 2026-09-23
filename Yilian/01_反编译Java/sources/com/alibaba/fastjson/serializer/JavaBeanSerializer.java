package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class JavaBeanSerializer extends com.alibaba.fastjson.serializer.SerializeFilterable implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public final com.alibaba.fastjson.serializer.SerializeBeanInfo beanInfo;
    public final com.alibaba.fastjson.serializer.FieldSerializer[] getters;
    public volatile transient long[] hashArray;
    public volatile transient short[] hashArrayMapping;
    public final com.alibaba.fastjson.serializer.FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo) {
        com.alibaba.fastjson.serializer.FieldSerializer[] fieldSerializerArr;
        boolean z;
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new com.alibaba.fastjson.serializer.FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i = 0;
        while (true) {
            fieldSerializerArr = this.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i] = new com.alibaba.fastjson.serializer.FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i]);
            i++;
        }
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr = serializeBeanInfo.fields;
        if (fieldInfoArr == serializeBeanInfo.sortedFields) {
            this.getters = fieldSerializerArr;
        } else {
            this.getters = new com.alibaba.fastjson.serializer.FieldSerializer[fieldInfoArr.length];
            int i2 = 0;
            while (true) {
                if (i2 >= this.getters.length) {
                    z = false;
                    break;
                }
                com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[i2].name);
                if (fieldSerializer == null) {
                    z = true;
                    break;
                } else {
                    this.getters[i2] = fieldSerializer;
                    i2++;
                }
            }
            if (z) {
                com.alibaba.fastjson.serializer.FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                java.lang.System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
            }
        }
        com.alibaba.fastjson.annotation.JSONType jSONType = serializeBeanInfo.jsonType;
        if (jSONType != null) {
            for (java.lang.Class<? extends com.alibaba.fastjson.serializer.SerializeFilter> cls : jSONType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]));
                } catch (java.lang.Exception unused) {
                }
            }
        }
    }

    public JavaBeanSerializer(java.lang.Class<?> cls) {
        this(cls, (java.util.Map<java.lang.String, java.lang.String>) null);
    }

    public JavaBeanSerializer(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.String> map) {
        this(com.alibaba.fastjson.util.TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(java.lang.Class<?> cls, java.lang.String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    public static java.util.Map<java.lang.String, java.lang.String> createAliasMap(java.lang.String... strArr) {
        java.util.HashMap map = new java.util.HashMap();
        for (java.lang.String str : strArr) {
            map.put(str, str);
        }
        return map;
    }

    public boolean applyLabel(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.String str) {
        java.util.List<com.alibaba.fastjson.serializer.LabelFilter> list = jSONSerializer.labelFilters;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.LabelFilter> it = list.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(str)) {
                    return false;
                }
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.LabelFilter> list2 = this.labelFilters;
        if (list2 == null) {
            return true;
        }
        java.util.Iterator<com.alibaba.fastjson.serializer.LabelFilter> it2 = list2.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(str)) {
                return false;
            }
        }
        return true;
    }

    public com.alibaba.fastjson.serializer.BeanContext getBeanContext(int i) {
        return this.sortedGetters[i].fieldContext;
    }

    public java.util.Set<java.lang.String> getFieldNames(java.lang.Object obj) {
        java.util.HashSet hashSet = new java.util.HashSet();
        for (com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public com.alibaba.fastjson.serializer.FieldSerializer getFieldSerializer(long j) {
        com.alibaba.fastjson.PropertyNamingStrategy[] propertyNamingStrategyArrValues;
        int iBinarySearch;
        if (this.hashArray == null) {
            propertyNamingStrategyArrValues = com.alibaba.fastjson.PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArrValues.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                com.alibaba.fastjson.serializer.FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i >= fieldSerializerArr.length) {
                    break;
                }
                java.lang.String str = fieldSerializerArr[i].fieldInfo.name;
                jArr[i2] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
                i2++;
                for (com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArrValues) {
                    java.lang.String strTranslate = propertyNamingStrategy.translate(str);
                    if (!str.equals(strTranslate)) {
                        jArr[i2] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(strTranslate);
                        i2++;
                    }
                }
                i++;
            }
            java.util.Arrays.sort(jArr, 0, i2);
            this.hashArray = new long[i2];
            java.lang.System.arraycopy(jArr, 0, this.hashArray, 0, i2);
        } else {
            propertyNamingStrategyArrValues = null;
        }
        int iBinarySearch2 = java.util.Arrays.binarySearch(this.hashArray, j);
        if (iBinarySearch2 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArrValues == null) {
                propertyNamingStrategyArrValues = com.alibaba.fastjson.PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            java.util.Arrays.fill(sArr, (short) -1);
            int i3 = 0;
            while (true) {
                com.alibaba.fastjson.serializer.FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i3 >= fieldSerializerArr2.length) {
                    break;
                }
                java.lang.String str2 = fieldSerializerArr2[i3].fieldInfo.name;
                int iBinarySearch3 = java.util.Arrays.binarySearch(this.hashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str2));
                if (iBinarySearch3 >= 0) {
                    sArr[iBinarySearch3] = (short) i3;
                }
                for (com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArrValues) {
                    java.lang.String strTranslate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(strTranslate2) && (iBinarySearch = java.util.Arrays.binarySearch(this.hashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64(strTranslate2))) >= 0) {
                        sArr[iBinarySearch] = (short) i3;
                    }
                }
                i3++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[iBinarySearch2];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public com.alibaba.fastjson.serializer.FieldSerializer getFieldSerializer(java.lang.String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        int length = this.sortedGetters.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int iCompareTo = this.sortedGetters[i2].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i = i2 + 1;
            } else {
                if (iCompareTo <= 0) {
                    return this.sortedGetters[i2];
                }
                length = i2 - 1;
            }
        }
        return null;
    }

    public java.lang.reflect.Type getFieldType(int i) {
        return this.sortedGetters[i].fieldInfo.fieldType;
    }

    public java.lang.Object getFieldValue(java.lang.Object obj, java.lang.String str) {
        com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer == null) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("field not found. ", str));
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (java.lang.IllegalAccessException e2) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("getFieldValue error.", str), e2);
        } catch (java.lang.reflect.InvocationTargetException e3) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("getFieldValue error.", str), e3);
        }
    }

    public java.lang.Object getFieldValue(java.lang.Object obj, java.lang.String str, long j, boolean z) {
        com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer == null) {
            if (z) {
                throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("field not found. ", str));
            }
            return null;
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (java.lang.IllegalAccessException e2) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("getFieldValue error.", str), e2);
        } catch (java.lang.reflect.InvocationTargetException e3) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("getFieldValue error.", str), e3);
        }
    }

    public java.util.List<java.lang.Object> getFieldValues(java.lang.Object obj) {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.sortedGetters.length);
        for (com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public java.util.Map<java.lang.String, java.lang.Object> getFieldValuesMap(java.lang.Object obj) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(this.sortedGetters.length);
        for (com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer : this.sortedGetters) {
            boolean zIsEnabled = com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(fieldSerializer.features, com.alibaba.fastjson.serializer.SerializerFeature.SkipTransientField);
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldSerializer.fieldInfo;
            if (!zIsEnabled || fieldInfo == null || !fieldInfo.fieldTransient) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo2 = fieldSerializer.fieldInfo;
                if (fieldInfo2.unwrapped) {
                    java.lang.Object json = com.alibaba.fastjson.JSON.toJSON(fieldSerializer.getPropertyValue(obj));
                    if (json instanceof java.util.Map) {
                        linkedHashMap.putAll((java.util.Map) json);
                    } else {
                        fieldInfo2 = fieldSerializer.fieldInfo;
                        linkedHashMap.put(fieldInfo2.name, fieldSerializer.getPropertyValue(obj));
                    }
                } else {
                    linkedHashMap.put(fieldInfo2.name, fieldSerializer.getPropertyValue(obj));
                }
            }
        }
        return linkedHashMap;
    }

    public com.alibaba.fastjson.annotation.JSONType getJSONType() {
        return this.beanInfo.jsonType;
    }

    public java.util.List<java.lang.Object> getObjectFieldValues(java.lang.Object obj) {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.sortedGetters.length);
        for (com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer : this.sortedGetters) {
            java.lang.Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(java.lang.Object obj) {
        int i = 0;
        for (com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                i++;
            }
        }
        return i;
    }

    public java.lang.Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public boolean isWriteAsArray(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    public boolean isWriteAsArray(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, int i) {
        int i2 = com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i2) == 0 && !jSONSerializer.out.beanToArray && (i & i2) == 0) ? false : true;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.lang.Throwable {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0355 A[Catch: Exception -> 0x049f, all -> 0x04ea, TryCatch #4 {all -> 0x04ea, blocks: (B:66:0x00e4, B:68:0x00ee, B:74:0x0105, B:83:0x011d, B:85:0x0123, B:91:0x0131, B:93:0x013b, B:105:0x0159, B:109:0x0166, B:112:0x0172, B:114:0x0179, B:117:0x01a4, B:119:0x01b0, B:121:0x01bf, B:123:0x01c9, B:126:0x01d3, B:128:0x01de, B:130:0x01e2, B:133:0x01e9, B:135:0x01ed, B:136:0x01f1, B:138:0x01f6, B:142:0x0200, B:144:0x020b, B:146:0x020f, B:149:0x0216, B:152:0x021d, B:154:0x0222, B:157:0x022a, B:159:0x0232, B:161:0x023d, B:163:0x0241, B:166:0x0248, B:168:0x024c, B:169:0x0251, B:171:0x0256, B:174:0x025e, B:176:0x0266, B:178:0x0271, B:180:0x0275, B:183:0x027c, B:185:0x0280, B:186:0x0285, B:188:0x028a, B:192:0x0294, B:194:0x0298, B:196:0x02a2, B:200:0x02ad, B:202:0x02b1, B:204:0x02ba, B:206:0x02c5, B:208:0x02cb, B:210:0x02cf, B:213:0x02da, B:215:0x02de, B:217:0x02e2, B:220:0x02ed, B:222:0x02f1, B:224:0x02f5, B:227:0x0300, B:229:0x0304, B:231:0x0308, B:234:0x0316, B:236:0x031a, B:238:0x031e, B:241:0x032b, B:243:0x032f, B:245:0x0333, B:248:0x0341, B:250:0x0345, B:252:0x0349, B:256:0x0355, B:258:0x0359, B:260:0x035d, B:263:0x0368, B:265:0x0375, B:270:0x0381, B:272:0x0387, B:326:0x0444, B:328:0x0448, B:330:0x044c, B:333:0x0456, B:335:0x045e, B:336:0x0466, B:338:0x046c, B:276:0x0394, B:278:0x039a, B:280:0x03a6, B:287:0x03bb, B:292:0x03c5, B:296:0x03d7, B:299:0x03df, B:302:0x03e9, B:304:0x03f1, B:305:0x03fe, B:307:0x0407, B:309:0x040e, B:310:0x0412, B:313:0x041a, B:314:0x041e, B:316:0x0423, B:317:0x0427, B:318:0x042b, B:320:0x042f, B:322:0x0433, B:325:0x0441, B:293:0x03cf, B:98:0x0147, B:102:0x014e, B:348:0x0481, B:369:0x04c5, B:371:0x04cd, B:373:0x04d5, B:377:0x04e0), top: B:431:0x00e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0448 A[Catch: Exception -> 0x049f, all -> 0x04ea, TryCatch #4 {all -> 0x04ea, blocks: (B:66:0x00e4, B:68:0x00ee, B:74:0x0105, B:83:0x011d, B:85:0x0123, B:91:0x0131, B:93:0x013b, B:105:0x0159, B:109:0x0166, B:112:0x0172, B:114:0x0179, B:117:0x01a4, B:119:0x01b0, B:121:0x01bf, B:123:0x01c9, B:126:0x01d3, B:128:0x01de, B:130:0x01e2, B:133:0x01e9, B:135:0x01ed, B:136:0x01f1, B:138:0x01f6, B:142:0x0200, B:144:0x020b, B:146:0x020f, B:149:0x0216, B:152:0x021d, B:154:0x0222, B:157:0x022a, B:159:0x0232, B:161:0x023d, B:163:0x0241, B:166:0x0248, B:168:0x024c, B:169:0x0251, B:171:0x0256, B:174:0x025e, B:176:0x0266, B:178:0x0271, B:180:0x0275, B:183:0x027c, B:185:0x0280, B:186:0x0285, B:188:0x028a, B:192:0x0294, B:194:0x0298, B:196:0x02a2, B:200:0x02ad, B:202:0x02b1, B:204:0x02ba, B:206:0x02c5, B:208:0x02cb, B:210:0x02cf, B:213:0x02da, B:215:0x02de, B:217:0x02e2, B:220:0x02ed, B:222:0x02f1, B:224:0x02f5, B:227:0x0300, B:229:0x0304, B:231:0x0308, B:234:0x0316, B:236:0x031a, B:238:0x031e, B:241:0x032b, B:243:0x032f, B:245:0x0333, B:248:0x0341, B:250:0x0345, B:252:0x0349, B:256:0x0355, B:258:0x0359, B:260:0x035d, B:263:0x0368, B:265:0x0375, B:270:0x0381, B:272:0x0387, B:326:0x0444, B:328:0x0448, B:330:0x044c, B:333:0x0456, B:335:0x045e, B:336:0x0466, B:338:0x046c, B:276:0x0394, B:278:0x039a, B:280:0x03a6, B:287:0x03bb, B:292:0x03c5, B:296:0x03d7, B:299:0x03df, B:302:0x03e9, B:304:0x03f1, B:305:0x03fe, B:307:0x0407, B:309:0x040e, B:310:0x0412, B:313:0x041a, B:314:0x041e, B:316:0x0423, B:317:0x0427, B:318:0x042b, B:320:0x042f, B:322:0x0433, B:325:0x0441, B:293:0x03cf, B:98:0x0147, B:102:0x014e, B:348:0x0481, B:369:0x04c5, B:371:0x04cd, B:373:0x04d5, B:377:0x04e0), top: B:431:0x00e4 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x048d A[PHI: r27 r33 r34
  0x048d: PHI (r27v10 com.alibaba.fastjson.serializer.FieldSerializer) = (r27v11 com.alibaba.fastjson.serializer.FieldSerializer), (r27v13 com.alibaba.fastjson.serializer.FieldSerializer) binds: [B:82:0x0117, B:345:0x0479] A[DONT_GENERATE, DONT_INLINE]
  0x048d: PHI (r33v2 char) = (r33v3 char), (r33v5 char) binds: [B:82:0x0117, B:345:0x0479] A[DONT_GENERATE, DONT_INLINE]
  0x048d: PHI (r34v2 com.alibaba.fastjson.serializer.FieldSerializer[]) = (r34v3 com.alibaba.fastjson.serializer.FieldSerializer[]), (r34v5 com.alibaba.fastjson.serializer.FieldSerializer[]) binds: [B:82:0x0117, B:345:0x0479] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x052d A[Catch: all -> 0x0540, TRY_ENTER, TryCatch #1 {all -> 0x0540, blocks: (B:396:0x052d, B:406:0x0580, B:408:0x0586, B:409:0x059e, B:411:0x05a2, B:415:0x05ab, B:416:0x05b0, B:400:0x0545, B:402:0x0549, B:404:0x054f, B:405:0x056a), top: B:425:0x052b }] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0586 A[Catch: all -> 0x0540, TryCatch #1 {all -> 0x0540, blocks: (B:396:0x052d, B:406:0x0580, B:408:0x0586, B:409:0x059e, B:411:0x05a2, B:415:0x05ab, B:416:0x05b0, B:400:0x0545, B:402:0x0549, B:404:0x054f, B:405:0x056a), top: B:425:0x052b }] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x05a2 A[Catch: all -> 0x0540, TryCatch #1 {all -> 0x0540, blocks: (B:396:0x052d, B:406:0x0580, B:408:0x0586, B:409:0x059e, B:411:0x05a2, B:415:0x05ab, B:416:0x05b0, B:400:0x0545, B:402:0x0549, B:404:0x054f, B:405:0x056a), top: B:425:0x052b }] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r36, java.lang.Object r37, java.lang.Object r38, java.lang.reflect.Type r39, int r40, boolean r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    public char writeAfter(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, char c2) {
        java.util.List<com.alibaba.fastjson.serializer.AfterFilter> list = jSONSerializer.afterFilters;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.AfterFilter> it = list.iterator();
            while (it.hasNext()) {
                c2 = it.next().writeAfter(jSONSerializer, obj, c2);
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.AfterFilter> list2 = this.afterFilters;
        if (list2 != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.AfterFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c2 = it2.next().writeAfter(jSONSerializer, obj, c2);
            }
        }
        return c2;
    }

    public void writeAsArray(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.lang.Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArrayNonContext(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.lang.Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public char writeBefore(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, char c2) {
        java.util.List<com.alibaba.fastjson.serializer.BeforeFilter> list = jSONSerializer.beforeFilters;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.BeforeFilter> it = list.iterator();
            while (it.hasNext()) {
                c2 = it.next().writeBefore(jSONSerializer, obj, c2);
            }
        }
        java.util.List<com.alibaba.fastjson.serializer.BeforeFilter> list2 = this.beforeFilters;
        if (list2 != null) {
            java.util.Iterator<com.alibaba.fastjson.serializer.BeforeFilter> it2 = list2.iterator();
            while (it2.hasNext()) {
                c2 = it2.next().writeBefore(jSONSerializer, obj, c2);
            }
        }
        return c2;
    }

    public void writeClassName(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.String str, java.lang.Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        java.lang.String name = this.beanInfo.typeName;
        if (name == null) {
            java.lang.Class<?> superclass = obj.getClass();
            if (com.alibaba.fastjson.util.TypeUtils.isProxy(superclass)) {
                superclass = superclass.getSuperclass();
            }
            name = superclass.getName();
        }
        jSONSerializer.write(name);
    }

    public void writeDirectNonContext(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.lang.Throwable {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeNoneASM(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.lang.Throwable {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public boolean writeReference(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, int i) {
        java.util.IdentityHashMap<java.lang.Object, com.alibaba.fastjson.serializer.SerialContext> identityHashMap;
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        int i2 = com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & i2) != 0 || (i & i2) != 0 || (identityHashMap = jSONSerializer.references) == null || !identityHashMap.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }
}
