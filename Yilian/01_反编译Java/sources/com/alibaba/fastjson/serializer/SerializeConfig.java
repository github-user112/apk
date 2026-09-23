package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class SerializeConfig {
    public boolean asm;
    public com.alibaba.fastjson.serializer.ASMSerializerFactory asmFactory;
    public long[] denyClasses;
    public final boolean fieldBased;
    public final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer>> mixInSerializers;
    public java.util.List<com.alibaba.fastjson.spi.Module> modules;
    public com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy;
    public final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer> serializers;
    public java.lang.String typeKey;
    public static final com.alibaba.fastjson.serializer.SerializeConfig globalInstance = new com.alibaba.fastjson.serializer.SerializeConfig();
    public static boolean awtError = false;
    public static boolean jdk8Error = false;
    public static boolean oracleJdbcError = false;
    public static boolean springfoxError = false;
    public static boolean guavaError = false;
    public static boolean jodaError = false;

    public SerializeConfig() {
        this(8192);
    }

    public SerializeConfig(int i) {
        this(i, false);
    }

    public SerializeConfig(int i, boolean z) {
        this.asm = !com.alibaba.fastjson.util.ASMUtils.IS_ANDROID;
        this.typeKey = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY;
        this.denyClasses = new long[]{4165360493669296979L, 4446674157046724083L};
        this.modules = new java.util.ArrayList();
        this.fieldBased = z;
        this.serializers = new com.alibaba.fastjson.util.IdentityHashMap<>(i);
        this.mixInSerializers = new com.alibaba.fastjson.util.IdentityHashMap<>(16);
        try {
            if (this.asm) {
                this.asmFactory = new com.alibaba.fastjson.serializer.ASMSerializerFactory();
            }
        } catch (java.lang.Throwable unused) {
            this.asm = false;
        }
        initSerializers();
    }

    public SerializeConfig(boolean z) {
        this(8192, z);
    }

    private final com.alibaba.fastjson.serializer.JavaBeanSerializer createASMSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo) {
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializerCreateJavaBeanSerializer = this.asmFactory.createJavaBeanSerializer(serializeBeanInfo);
        int i = 0;
        while (true) {
            com.alibaba.fastjson.serializer.FieldSerializer[] fieldSerializerArr = javaBeanSerializerCreateJavaBeanSerializer.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                return javaBeanSerializerCreateJavaBeanSerializer;
            }
            java.lang.Class<?> cls = fieldSerializerArr[i].fieldInfo.fieldClass;
            if (cls.isEnum() && !(getObjectWriter(cls) instanceof com.alibaba.fastjson.serializer.EnumSerializer)) {
                javaBeanSerializerCreateJavaBeanSerializer.writeDirect = false;
            }
            i++;
        }
    }

    public static java.lang.reflect.Member getEnumValueField(java.lang.Class cls) throws java.lang.SecurityException {
        java.lang.reflect.Method method = null;
        for (java.lang.reflect.Method method2 : cls.getMethods()) {
            if (method2.getReturnType() != java.lang.Void.class && ((com.alibaba.fastjson.annotation.JSONField) method2.getAnnotation(com.alibaba.fastjson.annotation.JSONField.class)) != null) {
                if (method != null) {
                    return null;
                }
                method = method2;
            }
        }
        for (java.lang.reflect.Field field : cls.getFields()) {
            if (((com.alibaba.fastjson.annotation.JSONField) field.getAnnotation(com.alibaba.fastjson.annotation.JSONField.class)) != null) {
                if (method != null) {
                    return null;
                }
                method = field;
            }
        }
        return method;
    }

    public static com.alibaba.fastjson.serializer.SerializeConfig getGlobalInstance() {
        return globalInstance;
    }

    private void initSerializers() {
        put(java.lang.Boolean.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.BooleanCodec.instance);
        put(java.lang.Character.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.CharacterCodec.instance);
        put(java.lang.Byte.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.IntegerCodec.instance);
        put(java.lang.Short.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.IntegerCodec.instance);
        put(java.lang.Integer.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.IntegerCodec.instance);
        put(java.lang.Long.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.LongCodec.instance);
        put(java.lang.Float.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.FloatCodec.instance);
        put(java.lang.Double.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.DoubleSerializer.instance);
        put(java.math.BigDecimal.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.BigDecimalCodec.instance);
        put(java.math.BigInteger.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.BigIntegerCodec.instance);
        put(java.lang.String.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.StringCodec.instance);
        put(byte[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(short[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(int[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(long[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(float[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(double[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(boolean[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(char[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.PrimitiveArraySerializer.instance);
        put(java.lang.Object[].class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ObjectArrayCodec.instance);
        put(java.lang.Class.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.text.SimpleDateFormat.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.util.Currency.class, (com.alibaba.fastjson.serializer.ObjectSerializer) new com.alibaba.fastjson.serializer.MiscCodec());
        put(java.util.TimeZone.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.net.InetAddress.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.net.Inet4Address.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.net.Inet6Address.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.net.InetSocketAddress.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.io.File.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.MiscCodec.instance);
        put(java.lang.Appendable.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AppendableSerializer.instance);
        put(java.lang.StringBuffer.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AppendableSerializer.instance);
        put(java.lang.StringBuilder.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AppendableSerializer.instance);
        put(java.nio.charset.Charset.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ToStringSerializer.instance);
        put(java.util.regex.Pattern.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ToStringSerializer.instance);
        put(java.util.Locale.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ToStringSerializer.instance);
        put(java.net.URI.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ToStringSerializer.instance);
        put(java.net.URL.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ToStringSerializer.instance);
        put(java.util.UUID.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ToStringSerializer.instance);
        put(java.util.concurrent.atomic.AtomicBoolean.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AtomicCodec.instance);
        put(java.util.concurrent.atomic.AtomicInteger.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AtomicCodec.instance);
        put(java.util.concurrent.atomic.AtomicLong.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AtomicCodec.instance);
        put(java.util.concurrent.atomic.AtomicReference.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ReferenceCodec.instance);
        put(java.util.concurrent.atomic.AtomicIntegerArray.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AtomicCodec.instance);
        put(java.util.concurrent.atomic.AtomicLongArray.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.AtomicCodec.instance);
        put(java.lang.ref.WeakReference.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ReferenceCodec.instance);
        put(java.lang.ref.SoftReference.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.ReferenceCodec.instance);
        put(java.util.LinkedList.class, (com.alibaba.fastjson.serializer.ObjectSerializer) com.alibaba.fastjson.serializer.CollectionCodec.instance);
    }

    public void addFilter(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter) {
        java.lang.Object objectWriter = getObjectWriter(cls);
        if (objectWriter instanceof com.alibaba.fastjson.serializer.SerializeFilterable) {
            com.alibaba.fastjson.serializer.SerializeFilterable serializeFilterable = (com.alibaba.fastjson.serializer.SerializeFilterable) objectWriter;
            if (this == globalInstance || serializeFilterable != com.alibaba.fastjson.serializer.MapSerializer.instance) {
                serializeFilterable.addFilter(serializeFilter);
                return;
            }
            com.alibaba.fastjson.serializer.MapSerializer mapSerializer = new com.alibaba.fastjson.serializer.MapSerializer();
            put((java.lang.reflect.Type) cls, (com.alibaba.fastjson.serializer.ObjectSerializer) mapSerializer);
            mapSerializer.addFilter(serializeFilter);
        }
    }

    public void clearSerializers() {
        this.serializers.clear();
        initSerializers();
    }

    public void config(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z) throws java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.ClassNotFoundException {
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = getObjectWriter(cls, false);
        if (objectWriter == null) {
            com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfoBuildBeanInfo = com.alibaba.fastjson.util.TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy);
            serializeBeanInfoBuildBeanInfo.features = z ? serializerFeature.mask | serializeBeanInfoBuildBeanInfo.features : (serializerFeature.mask ^ (-1)) & serializeBeanInfoBuildBeanInfo.features;
            put((java.lang.reflect.Type) cls, createJavaBeanSerializer(serializeBeanInfoBuildBeanInfo));
        } else if (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
            com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo = ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter).beanInfo;
            int i = serializeBeanInfo.features;
            int i2 = serializerFeature.mask;
            serializeBeanInfo.features = z ? i2 | i : (i2 ^ (-1)) & i;
            if (i == serializeBeanInfo.features || objectWriter.getClass() == com.alibaba.fastjson.serializer.JavaBeanSerializer.class) {
                return;
            }
            put((java.lang.reflect.Type) cls, createJavaBeanSerializer(serializeBeanInfo));
        }
    }

    public void configEnumAsJavaBean(java.lang.Class<? extends java.lang.Enum>... clsArr) {
        for (java.lang.Class<? extends java.lang.Enum> cls : clsArr) {
            put((java.lang.reflect.Type) cls, createJavaBeanSerializer(cls));
        }
    }

    public com.alibaba.fastjson.serializer.ObjectSerializer createJavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo) {
        java.lang.reflect.Method method;
        com.alibaba.fastjson.annotation.JSONType jSONType = serializeBeanInfo.jsonType;
        boolean z = false;
        boolean z2 = this.asm && !this.fieldBased;
        if (jSONType != null) {
            java.lang.Class<?> clsSerializer = jSONType.serializer();
            if (clsSerializer != java.lang.Void.class) {
                try {
                    java.lang.Object objNewInstance = clsSerializer.newInstance();
                    if (objNewInstance instanceof com.alibaba.fastjson.serializer.ObjectSerializer) {
                        return (com.alibaba.fastjson.serializer.ObjectSerializer) objNewInstance;
                    }
                } catch (java.lang.Throwable unused) {
                }
            }
            if (!jSONType.asm()) {
                z2 = false;
            }
            if (z2) {
                for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : jSONType.serialzeFeatures()) {
                    if (com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString == serializerFeature || com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString == serializerFeature || com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue == serializerFeature || com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible == serializerFeature) {
                        z2 = false;
                        break;
                    }
                }
            }
            if (z2 && jSONType.serialzeFilters().length != 0) {
                z2 = false;
            }
        }
        java.lang.Class<?> cls = serializeBeanInfo.beanType;
        if (!java.lang.reflect.Modifier.isPublic(cls.getModifiers())) {
            return new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfo);
        }
        if ((z2 && this.asmFactory.classLoader.isExternalClass(cls)) || cls == java.io.Serializable.class || cls == java.lang.Object.class) {
            z2 = false;
        }
        if (z2 && !com.alibaba.fastjson.util.ASMUtils.checkName(cls.getSimpleName())) {
            z2 = false;
        }
        if (z2 && serializeBeanInfo.beanType.isInterface()) {
            z2 = false;
        }
        if (z2) {
            for (com.alibaba.fastjson.util.FieldInfo fieldInfo : serializeBeanInfo.fields) {
                java.lang.reflect.Field field = fieldInfo.field;
                if ((field != null && !field.getType().equals(fieldInfo.fieldClass)) || (((method = fieldInfo.method) != null && !method.getReturnType().equals(fieldInfo.fieldClass)) || (fieldInfo.fieldClass.isEnum() && get(fieldInfo.fieldClass) != com.alibaba.fastjson.serializer.EnumSerializer.instance))) {
                    break;
                }
                com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
                if (annotation != null) {
                    java.lang.String str = annotation.format();
                    if ((str.length() != 0 && (fieldInfo.fieldClass != java.lang.String.class || !"trim".equals(str))) || !com.alibaba.fastjson.util.ASMUtils.checkName(annotation.name()) || annotation.jsonDirect() || annotation.serializeUsing() != java.lang.Void.class || annotation.unwrapped()) {
                        break;
                    }
                    for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature2 : annotation.serialzeFeatures()) {
                        if (com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible == serializerFeature2 || com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName == serializerFeature2) {
                            z2 = false;
                            break;
                        }
                    }
                    if (com.alibaba.fastjson.util.TypeUtils.isAnnotationPresentOneToMany(method) || com.alibaba.fastjson.util.TypeUtils.isAnnotationPresentManyToMany(method) || (annotation.defaultValue() != null && !"".equals(annotation.defaultValue()))) {
                        break;
                    }
                }
            }
            z = z2;
        } else {
            z = z2;
        }
        if (z) {
            try {
                com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializerCreateASMSerializer = createASMSerializer(serializeBeanInfo);
                if (javaBeanSerializerCreateASMSerializer != null) {
                    return javaBeanSerializerCreateASMSerializer;
                }
            } catch (java.lang.ClassCastException | java.lang.ClassFormatError | java.lang.ClassNotFoundException unused2) {
            } catch (java.lang.OutOfMemoryError e2) {
                if (e2.getMessage().indexOf("Metaspace") != -1) {
                    throw e2;
                }
            } catch (java.lang.Throwable th) {
                throw new com.alibaba.fastjson.JSONException("create asm serializer error, verson 1.2.83, class " + cls, th);
            }
        }
        return new com.alibaba.fastjson.serializer.JavaBeanSerializer(serializeBeanInfo);
    }

    public final com.alibaba.fastjson.serializer.ObjectSerializer createJavaBeanSerializer(java.lang.Class<?> cls) {
        java.lang.String name = cls.getName();
        if (java.util.Arrays.binarySearch(this.denyClasses, com.alibaba.fastjson.util.TypeUtils.fnv1a_64(name)) >= 0) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("not support class : ", name));
        }
        com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfoBuildBeanInfo = com.alibaba.fastjson.util.TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy, this.fieldBased);
        return (serializeBeanInfoBuildBeanInfo.fields.length == 0 && java.lang.Iterable.class.isAssignableFrom(cls)) ? com.alibaba.fastjson.serializer.MiscCodec.instance : createJavaBeanSerializer(serializeBeanInfoBuildBeanInfo);
    }

    public final com.alibaba.fastjson.serializer.ObjectSerializer get(java.lang.reflect.Type type) {
        com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer;
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            objectSerializer = this.serializers.get(type);
        } else {
            com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer> identityHashMap = this.mixInSerializers.get(type);
            if (identityHashMap == null) {
                return null;
            }
            objectSerializer = identityHashMap.get(mixInAnnotations);
        }
        return objectSerializer;
    }

    public com.alibaba.fastjson.serializer.ObjectSerializer getEnumSerializer() {
        return com.alibaba.fastjson.serializer.EnumSerializer.instance;
    }

    public com.alibaba.fastjson.serializer.ObjectSerializer getObjectWriter(java.lang.Class<?> cls) {
        return getObjectWriter(cls, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:323:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson.serializer.ObjectSerializer getObjectWriter(java.lang.Class<?> r22, boolean r23) throws java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 1209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeConfig.getObjectWriter(java.lang.Class, boolean):com.alibaba.fastjson.serializer.ObjectSerializer");
    }

    public java.lang.String getTypeKey() {
        return this.typeKey;
    }

    public boolean isAsmEnable() {
        return this.asm;
    }

    public boolean put(java.lang.Object obj, java.lang.Object obj2) {
        return put((java.lang.reflect.Type) obj, (com.alibaba.fastjson.serializer.ObjectSerializer) obj2);
    }

    public boolean put(java.lang.reflect.Type type, com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer) {
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return this.serializers.put(type, objectSerializer);
        }
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.serializer.ObjectSerializer> identityHashMap = this.mixInSerializers.get(type);
        if (identityHashMap == null) {
            identityHashMap = new com.alibaba.fastjson.util.IdentityHashMap<>(4);
            this.mixInSerializers.put(type, identityHashMap);
        }
        return identityHashMap.put(mixInAnnotations, objectSerializer);
    }

    public void register(com.alibaba.fastjson.spi.Module module) {
        this.modules.add(module);
    }

    public void setAsmEnable(boolean z) {
        if (com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            return;
        }
        this.asm = z;
    }

    public void setPropertyNamingStrategy(com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy) {
        this.propertyNamingStrategy = propertyNamingStrategy;
    }

    public void setTypeKey(java.lang.String str) {
        this.typeKey = str;
    }
}
