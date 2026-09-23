package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public class ParserConfig {
    public static final java.lang.String AUTOTYPE_ACCEPT = "fastjson.parser.autoTypeAccept";
    public static final java.lang.String[] AUTO_TYPE_ACCEPT_LIST;
    public static final long[] INTERNAL_WHITELIST_HASHCODES;
    public static boolean awtError;
    public static com.alibaba.fastjson.parser.ParserConfig global;
    public static boolean guavaError;
    public static com.alibaba.fastjson.util.Function<java.lang.Class<?>, java.lang.Boolean> isPrimitiveFuncation;
    public static boolean jdk8Error;
    public static boolean jodaError;
    public long[] acceptHashCodes;
    public boolean asmEnable;
    public com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory asmFactory;
    public volatile java.util.List<com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler> autoTypeCheckHandlers;
    public boolean autoTypeSupport;
    public boolean compatibleWithJavaBean;
    public java.lang.ClassLoader defaultClassLoader;
    public long[] denyHashCodes;
    public final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> deserializers;
    public final boolean fieldBased;
    public final java.util.concurrent.Callable<java.lang.Void> initDeserializersWithJavaSql;
    public long[] internalDenyHashCodes;
    public boolean jacksonCompatible;
    public final com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer>> mixInDeserializers;
    public java.util.List<com.alibaba.fastjson.spi.Module> modules;
    public com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy;
    public boolean safeMode;
    public final com.alibaba.fastjson.parser.SymbolTable symbolTable;
    public final java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Class<?>> typeMapping;
    public static final java.lang.String DENY_PROPERTY_INTERNAL = "fastjson.parser.deny.internal";
    public static final java.lang.String[] DENYS_INTERNAL = splitItemsFormProperty(com.alibaba.fastjson.util.IOUtils.getStringProperty(DENY_PROPERTY_INTERNAL));
    public static final java.lang.String DENY_PROPERTY = "fastjson.parser.deny";
    public static final java.lang.String[] DENYS = splitItemsFormProperty(com.alibaba.fastjson.util.IOUtils.getStringProperty(DENY_PROPERTY));
    public static final java.lang.String AUTOTYPE_SUPPORT_PROPERTY = "fastjson.parser.autoTypeSupport";
    public static final boolean AUTO_SUPPORT = "true".equals(com.alibaba.fastjson.util.IOUtils.getStringProperty(AUTOTYPE_SUPPORT_PROPERTY));
    public static final java.lang.String SAFE_MODE_PROPERTY = "fastjson.parser.safeMode";
    public static final boolean SAFE_MODE = "true".equals(com.alibaba.fastjson.util.IOUtils.getStringProperty(SAFE_MODE_PROPERTY));

    public interface AutoTypeCheckHandler {
        java.lang.Class<?> handler(java.lang.String str, java.lang.Class<?> cls, int i);
    }

    static {
        java.lang.String[] strArrSplitItemsFormProperty = splitItemsFormProperty(com.alibaba.fastjson.util.IOUtils.getStringProperty(AUTOTYPE_ACCEPT));
        if (strArrSplitItemsFormProperty == null) {
            strArrSplitItemsFormProperty = new java.lang.String[0];
        }
        AUTO_TYPE_ACCEPT_LIST = strArrSplitItemsFormProperty;
        INTERNAL_WHITELIST_HASHCODES = new long[]{-6976602508726000783L, -6293031534589903644L, 59775428743665658L, 7267793227937552092L};
        global = new com.alibaba.fastjson.parser.ParserConfig();
        awtError = false;
        jdk8Error = false;
        jodaError = false;
        guavaError = false;
        isPrimitiveFuncation = new com.alibaba.fastjson.util.Function<java.lang.Class<?>, java.lang.Boolean>() { // from class: com.alibaba.fastjson.parser.ParserConfig.2
            @Override // com.alibaba.fastjson.util.Function
            public java.lang.Boolean apply(java.lang.Class<?> cls) {
                return java.lang.Boolean.valueOf(cls == java.sql.Date.class || cls == java.sql.Time.class || cls == java.sql.Timestamp.class);
            }
        };
    }

    public ParserConfig() {
        this(false);
    }

    public ParserConfig(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory aSMDeserializerFactory) {
        this(aSMDeserializerFactory, null, false);
    }

    public ParserConfig(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory aSMDeserializerFactory, java.lang.ClassLoader classLoader, boolean z) {
        this.deserializers = new com.alibaba.fastjson.util.IdentityHashMap<>();
        this.mixInDeserializers = new com.alibaba.fastjson.util.IdentityHashMap<>(16);
        this.typeMapping = new java.util.concurrent.ConcurrentHashMap(16, 0.75f, 1);
        this.asmEnable = !com.alibaba.fastjson.util.ASMUtils.IS_ANDROID;
        this.symbolTable = new com.alibaba.fastjson.parser.SymbolTable(4096);
        this.autoTypeSupport = AUTO_SUPPORT;
        this.jacksonCompatible = false;
        this.compatibleWithJavaBean = com.alibaba.fastjson.util.TypeUtils.compatibleWithJavaBean;
        this.modules = new java.util.ArrayList();
        this.safeMode = SAFE_MODE;
        this.denyHashCodes = new long[]{-9164606388214699518L, -8754006975464705441L, -8720046426850100497L, -8649961213709896794L, -8614556368991373401L, -8382625455832334425L, -8165637398350707645L, -8109300701639721088L, -7966123100503199569L, -7921218830998286408L, -7775351613326101303L, -7768608037458185275L, -7766605818834748097L, -6835437086156813536L, -6316154655839304624L, -6179589609550493385L, -6149130139291498841L, -6149093380703242441L, -6088208984980396913L, -6025144546313590215L, -5939269048541779808L, -5885964883385605994L, -5767141746063564198L, -5764804792063216819L, -5472097725414717105L, -5194641081268104286L, -5076846148177416215L, -4837536971810737970L, -4836620931940850535L, -4733542790109620528L, -4703320437989596122L, -4608341446948126581L, -4537258998789938600L, -4438775680185074100L, -4314457471973557243L, -4150995715611818742L, -4082057040235125754L, -3975378478825053783L, -3967588558552655563L, -3935185854875733362L, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode, -3319207949486691020L, -3077205613010077203L, -3053747177772160511L, -2995060141064716555L, -2825378362173150292L, -2533039401923731906L, -2439930098895578154L, -2378990704010641148L, -2364987994247679115L, -2262244760619952081L, -2192804397019347313L, -2095516571388852610L, -1872417015366588117L, -1800035667138631116L, -1650485814983027158L, -1589194880214235129L, -1363634950764737555L, -965955008570215305L, -905177026366752536L, -831789045734283466L, -803541446955902575L, -731978084025273882L, -666475508176557463L, -582813228520337988L, -254670111376247151L, -219577392946377768L, -190281065685395680L, -26639035867733124L, -9822483067882491L, 4750336058574309L, 33238344207745342L, 156405680656087946L, 218512992947536312L, 313864100207897507L, 386461436234701831L, 744602970950881621L, 823641066473609950L, 860052378298585747L, 1073634739308289776L, 1153291637701043748L, 1203232727967308606L, 1214780596910349029L, 1268707909007641340L, 1459860845934817624L, 1502845958873959152L, 1534439610567445754L, 1698504441317515818L, 1818089308493370394L, 2078113382421334967L, 2164696723069287854L, 2622551729063269307L, 2653453629929770569L, 2660670623866180977L, 2731823439467737506L, 2836431254737891113L, 2930861374593775110L, 3058452313624178956L, 3085473968517218653L, 3089451460101527857L, 3114862868117605599L, 3129395579983849527L, 3256258368248066264L, 3452379460455804429L, 3547627781654598988L, 3637939656440441093L, 3688179072722109200L, 3718352661124136681L, 3730752432285826863L, 3740226159580918099L, 3794316665763266033L, 3977090344859527316L, 4000049462512838776L, 4046190361520671643L, 4147696707147271408L, 4193204392725694463L, 4215053018660518963L, 4241163808635564644L, 4254584350247334433L, 4319304524795015394L, 4814658433570175913L, 4841947709850912914L, 4904007817188630457L, 5100336081510080343L, 5120543992130540564L, 5274044858141538265L, 5347909877633654828L, 5450448828334921485L, 5474268165959054640L, 5545425291794704408L, 5596129856135573697L, 5688200883751798389L, 5751393439502795295L, 5916409771425455946L, 5944107969236155580L, 6007332606592876737L, 6090377589998869205L, 6280357960959217660L, 6456855723474196908L, 6511035576063254270L, 6534946468240507089L, 6584624952928234050L, 6734240326434096246L, 6742705432718011780L, 6800727078373023163L, 6854854816081053523L, 7045245923763966215L, 7123326897294507060L, 7164889056054194741L, 7179336928365889465L, 7240293012336844478L, 7347653049056829645L, 7375862386996623731L, 7442624256860549330L, 7617522210483516279L, 7658177784286215602L, 8055461369741094911L, 8064026652676081192L, 8389032537095247355L, 8409640769019589119L, 8488266005336625107L, 8537233257283452655L, 8711531061028787095L, 8735538376409180149L, 8838294710098435315L, 8861402923078831179L, 9140390920032557669L, 9140416208800006522L, 9144212112462101475L};
        long[] jArr = new long[AUTO_TYPE_ACCEPT_LIST.length];
        int i = 0;
        while (true) {
            java.lang.String[] strArr = AUTO_TYPE_ACCEPT_LIST;
            if (i >= strArr.length) {
                break;
            }
            jArr[i] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(strArr[i]);
            i++;
        }
        java.util.Arrays.sort(jArr);
        this.acceptHashCodes = jArr;
        this.initDeserializersWithJavaSql = new java.util.concurrent.Callable<java.lang.Void>() { // from class: com.alibaba.fastjson.parser.ParserConfig.1
            @Override // java.util.concurrent.Callable
            public java.lang.Void call() {
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.sql.Timestamp.class, com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer.instance_timestamp);
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.sql.Date.class, com.alibaba.fastjson.parser.deserializer.SqlDateDeserializer.instance);
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.sql.Time.class, com.alibaba.fastjson.parser.deserializer.TimeDeserializer.instance);
                com.alibaba.fastjson.parser.ParserConfig.this.deserializers.put(java.util.Date.class, com.alibaba.fastjson.serializer.DateCodec.instance);
                return null;
            }
        };
        this.fieldBased = z;
        if (aSMDeserializerFactory == null && !com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            try {
                aSMDeserializerFactory = classLoader == null ? new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory(new com.alibaba.fastjson.util.ASMClassLoader()) : new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory(classLoader);
            } catch (java.lang.ExceptionInInitializerError | java.lang.NoClassDefFoundError | java.security.AccessControlException unused) {
            }
        }
        this.asmFactory = aSMDeserializerFactory;
        if (aSMDeserializerFactory == null) {
            this.asmEnable = false;
        }
        initDeserializers();
        addItemsToDeny(DENYS);
        addItemsToDeny0(DENYS_INTERNAL);
        addItemsToAccept(AUTO_TYPE_ACCEPT_LIST);
    }

    public ParserConfig(java.lang.ClassLoader classLoader) {
        this(null, classLoader, false);
    }

    public ParserConfig(boolean z) {
        this(null, null, z);
    }

    private void addItemsToAccept(java.lang.String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (java.lang.String str : strArr) {
            addAccept(str);
        }
    }

    private void addItemsToDeny(java.lang.String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (java.lang.String str : strArr) {
            addDeny(str);
        }
    }

    private void addItemsToDeny0(java.lang.String[] strArr) {
        if (strArr == null) {
            return;
        }
        for (java.lang.String str : strArr) {
            addDenyInternal(str);
        }
    }

    public static java.lang.reflect.Method getEnumCreator(java.lang.Class cls, java.lang.Class cls2) throws java.lang.SecurityException {
        for (java.lang.reflect.Method method : cls.getMethods()) {
            if (java.lang.reflect.Modifier.isStatic(method.getModifiers()) && method.getReturnType() == cls2 && method.getParameterTypes().length == 1 && ((com.alibaba.fastjson.annotation.JSONCreator) method.getAnnotation(com.alibaba.fastjson.annotation.JSONCreator.class)) != null) {
                return method;
            }
        }
        return null;
    }

    public static java.lang.reflect.Field getFieldFromCache(java.lang.String str, java.util.Map<java.lang.String, java.lang.reflect.Field> map) {
        java.lang.reflect.Field field = map.get(str);
        if (field == null) {
            field = map.get("_" + str);
        }
        if (field == null) {
            field = map.get("m_" + str);
        }
        if (field != null) {
            return field;
        }
        char cCharAt = str.charAt(0);
        if (cCharAt >= 'a' && cCharAt <= 'z') {
            char[] charArray = str.toCharArray();
            charArray[0] = (char) (charArray[0] - ' ');
            field = map.get(new java.lang.String(charArray));
        }
        if (str.length() <= 2) {
            return field;
        }
        char cCharAt2 = str.charAt(1);
        if (cCharAt < 'a' || cCharAt > 'z' || cCharAt2 < 'A' || cCharAt2 > 'Z') {
            return field;
        }
        for (java.util.Map.Entry<java.lang.String, java.lang.reflect.Field> entry : map.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                return entry.getValue();
            }
        }
        return field;
    }

    public static com.alibaba.fastjson.parser.ParserConfig getGlobalInstance() {
        return global;
    }

    private void initDeserializers() {
        this.deserializers.put(java.text.SimpleDateFormat.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.util.Calendar.class, com.alibaba.fastjson.serializer.CalendarCodec.instance);
        this.deserializers.put(javax.xml.datatype.XMLGregorianCalendar.class, com.alibaba.fastjson.serializer.CalendarCodec.instance);
        this.deserializers.put(com.alibaba.fastjson.JSONObject.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(com.alibaba.fastjson.JSONArray.class, com.alibaba.fastjson.serializer.CollectionCodec.instance);
        this.deserializers.put(java.util.Map.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.HashMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.LinkedHashMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.TreeMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.concurrent.ConcurrentMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.concurrent.ConcurrentHashMap.class, com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance);
        this.deserializers.put(java.util.Collection.class, com.alibaba.fastjson.serializer.CollectionCodec.instance);
        this.deserializers.put(java.util.List.class, com.alibaba.fastjson.serializer.CollectionCodec.instance);
        this.deserializers.put(java.util.ArrayList.class, com.alibaba.fastjson.serializer.CollectionCodec.instance);
        this.deserializers.put(java.lang.Object.class, com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance);
        this.deserializers.put(java.lang.String.class, com.alibaba.fastjson.serializer.StringCodec.instance);
        this.deserializers.put(java.lang.StringBuffer.class, com.alibaba.fastjson.serializer.StringCodec.instance);
        this.deserializers.put(java.lang.StringBuilder.class, com.alibaba.fastjson.serializer.StringCodec.instance);
        this.deserializers.put(java.lang.Character.TYPE, com.alibaba.fastjson.serializer.CharacterCodec.instance);
        this.deserializers.put(java.lang.Character.class, com.alibaba.fastjson.serializer.CharacterCodec.instance);
        this.deserializers.put(java.lang.Byte.TYPE, com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance);
        this.deserializers.put(java.lang.Byte.class, com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance);
        this.deserializers.put(java.lang.Short.TYPE, com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance);
        this.deserializers.put(java.lang.Short.class, com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance);
        this.deserializers.put(java.lang.Integer.TYPE, com.alibaba.fastjson.serializer.IntegerCodec.instance);
        this.deserializers.put(java.lang.Integer.class, com.alibaba.fastjson.serializer.IntegerCodec.instance);
        this.deserializers.put(java.lang.Long.TYPE, com.alibaba.fastjson.serializer.LongCodec.instance);
        this.deserializers.put(java.lang.Long.class, com.alibaba.fastjson.serializer.LongCodec.instance);
        this.deserializers.put(java.math.BigInteger.class, com.alibaba.fastjson.serializer.BigIntegerCodec.instance);
        this.deserializers.put(java.math.BigDecimal.class, com.alibaba.fastjson.serializer.BigDecimalCodec.instance);
        this.deserializers.put(java.lang.Float.TYPE, com.alibaba.fastjson.serializer.FloatCodec.instance);
        this.deserializers.put(java.lang.Float.class, com.alibaba.fastjson.serializer.FloatCodec.instance);
        this.deserializers.put(java.lang.Double.TYPE, com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance);
        this.deserializers.put(java.lang.Double.class, com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance);
        this.deserializers.put(java.lang.Boolean.TYPE, com.alibaba.fastjson.serializer.BooleanCodec.instance);
        this.deserializers.put(java.lang.Boolean.class, com.alibaba.fastjson.serializer.BooleanCodec.instance);
        this.deserializers.put(java.lang.Class.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(char[].class, new com.alibaba.fastjson.serializer.CharArrayCodec());
        this.deserializers.put(java.util.concurrent.atomic.AtomicBoolean.class, com.alibaba.fastjson.serializer.BooleanCodec.instance);
        this.deserializers.put(java.util.concurrent.atomic.AtomicInteger.class, com.alibaba.fastjson.serializer.IntegerCodec.instance);
        this.deserializers.put(java.util.concurrent.atomic.AtomicLong.class, com.alibaba.fastjson.serializer.LongCodec.instance);
        this.deserializers.put(java.util.concurrent.atomic.AtomicReference.class, com.alibaba.fastjson.serializer.ReferenceCodec.instance);
        this.deserializers.put(java.lang.ref.WeakReference.class, com.alibaba.fastjson.serializer.ReferenceCodec.instance);
        this.deserializers.put(java.lang.ref.SoftReference.class, com.alibaba.fastjson.serializer.ReferenceCodec.instance);
        this.deserializers.put(java.util.UUID.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.util.TimeZone.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.util.Locale.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.util.Currency.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.net.Inet4Address.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.net.Inet6Address.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.net.InetSocketAddress.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.io.File.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.net.URI.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.net.URL.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.util.regex.Pattern.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.nio.charset.Charset.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(com.alibaba.fastjson.JSONPath.class, com.alibaba.fastjson.serializer.MiscCodec.instance);
        this.deserializers.put(java.lang.Number.class, com.alibaba.fastjson.parser.deserializer.NumberDeserializer.instance);
        this.deserializers.put(java.util.concurrent.atomic.AtomicIntegerArray.class, com.alibaba.fastjson.serializer.AtomicCodec.instance);
        this.deserializers.put(java.util.concurrent.atomic.AtomicLongArray.class, com.alibaba.fastjson.serializer.AtomicCodec.instance);
        this.deserializers.put(java.lang.StackTraceElement.class, com.alibaba.fastjson.parser.deserializer.StackTraceElementDeserializer.instance);
        this.deserializers.put(java.io.Serializable.class, com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance);
        this.deserializers.put(java.lang.Cloneable.class, com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance);
        this.deserializers.put(java.lang.Comparable.class, com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance);
        this.deserializers.put(java.io.Closeable.class, com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance);
        this.deserializers.put(com.alibaba.fastjson.JSONPObject.class, new com.alibaba.fastjson.parser.deserializer.JSONPDeserializer());
        com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(this.initDeserializersWithJavaSql);
    }

    public static boolean isPrimitive2(java.lang.Class<?> cls) {
        java.lang.Boolean boolValueOf = java.lang.Boolean.valueOf(cls.isPrimitive() || cls == java.lang.Boolean.class || cls == java.lang.Character.class || cls == java.lang.Byte.class || cls == java.lang.Short.class || cls == java.lang.Integer.class || cls == java.lang.Long.class || cls == java.lang.Float.class || cls == java.lang.Double.class || cls == java.math.BigInteger.class || cls == java.math.BigDecimal.class || cls == java.lang.String.class || cls == java.util.Date.class || cls.isEnum());
        if (!boolValueOf.booleanValue()) {
            boolValueOf = (java.lang.Boolean) com.alibaba.fastjson.util.ModuleUtil.callWhenHasJavaSql(isPrimitiveFuncation, cls);
        }
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    public static void parserAllFieldToCache(java.lang.Class<?> cls, java.util.Map<java.lang.String, java.lang.reflect.Field> map) {
        for (java.lang.reflect.Field field : cls.getDeclaredFields()) {
            java.lang.String name = field.getName();
            if (!map.containsKey(name)) {
                map.put(name, field);
            }
        }
        if (cls.getSuperclass() == null || cls.getSuperclass() == java.lang.Object.class) {
            return;
        }
        parserAllFieldToCache(cls.getSuperclass(), map);
    }

    public static java.lang.String[] splitItemsFormProperty(java.lang.String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        return str.split(",");
    }

    public void addAccept(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
        if (java.util.Arrays.binarySearch(this.acceptHashCodes, jFnv1a_64) >= 0) {
            return;
        }
        long[] jArr = this.acceptHashCodes;
        int length = jArr.length + 1;
        long[] jArr2 = new long[length];
        jArr2[length - 1] = jFnv1a_64;
        java.lang.System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        java.util.Arrays.sort(jArr2);
        this.acceptHashCodes = jArr2;
    }

    public void addAutoTypeCheckHandler(com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler autoTypeCheckHandler) {
        java.util.List copyOnWriteArrayList = this.autoTypeCheckHandlers;
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new java.util.concurrent.CopyOnWriteArrayList();
            this.autoTypeCheckHandlers = copyOnWriteArrayList;
        }
        copyOnWriteArrayList.add(autoTypeCheckHandler);
    }

    public void addDeny(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
        if (java.util.Arrays.binarySearch(this.denyHashCodes, jFnv1a_64) >= 0) {
            return;
        }
        long[] jArr = this.denyHashCodes;
        int length = jArr.length + 1;
        long[] jArr2 = new long[length];
        jArr2[length - 1] = jFnv1a_64;
        java.lang.System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        java.util.Arrays.sort(jArr2);
        this.denyHashCodes = jArr2;
    }

    public void addDenyInternal(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
        long[] jArr = this.internalDenyHashCodes;
        if (jArr == null) {
            this.internalDenyHashCodes = new long[]{jFnv1a_64};
            return;
        }
        if (java.util.Arrays.binarySearch(jArr, jFnv1a_64) >= 0) {
            return;
        }
        long[] jArr2 = this.internalDenyHashCodes;
        int length = jArr2.length + 1;
        long[] jArr3 = new long[length];
        jArr3[length - 1] = jFnv1a_64;
        java.lang.System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
        java.util.Arrays.sort(jArr3);
        this.internalDenyHashCodes = jArr3;
    }

    public java.lang.Class<?> checkAutoType(java.lang.Class cls) {
        return get(cls) != null ? cls : checkAutoType(cls.getName(), null, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public java.lang.Class<?> checkAutoType(java.lang.String str, java.lang.Class<?> cls) {
        return checkAutoType(str, cls, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Class<?> checkAutoType(java.lang.String r21, java.lang.Class<?> r22, int r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.ParserConfig.checkAutoType(java.lang.String, java.lang.Class, int):java.lang.Class");
    }

    public void clearDeserializers() {
        this.deserializers.clear();
        initDeserializers();
    }

    public void configFromPropety(java.util.Properties properties) {
        boolean z;
        addItemsToDeny(splitItemsFormProperty(properties.getProperty(DENY_PROPERTY)));
        addItemsToAccept(splitItemsFormProperty(properties.getProperty(AUTOTYPE_ACCEPT)));
        java.lang.String property = properties.getProperty(AUTOTYPE_SUPPORT_PROPERTY);
        if ("true".equals(property)) {
            z = true;
        } else if (!"false".equals(property)) {
            return;
        } else {
            z = false;
        }
        this.autoTypeSupport = z;
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer createFieldDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.Class<?> clsDeserializeUsing;
        java.lang.Class<?> cls = javaBeanInfo.clazz;
        java.lang.Class<?> cls2 = fieldInfo.fieldClass;
        com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
        java.lang.Class<?> cls3 = null;
        if (annotation != null && (clsDeserializeUsing = annotation.deserializeUsing()) != java.lang.Void.class) {
            cls3 = clsDeserializeUsing;
        }
        return (cls3 == null && (cls2 == java.util.List.class || cls2 == java.util.ArrayList.class)) ? new com.alibaba.fastjson.parser.deserializer.ArrayListTypeFieldDeserializer(parserConfig, cls, fieldInfo) : new com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer(parserConfig, cls, fieldInfo);
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer createJavaBeanDeserializer(java.lang.Class<?> cls, java.lang.reflect.Type type) {
        com.alibaba.fastjson.annotation.JSONField annotation;
        java.lang.reflect.Method method;
        com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory aSMDeserializerFactory;
        boolean zCheckName = this.asmEnable & (!this.fieldBased);
        if (zCheckName) {
            com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
            if (jSONType != null) {
                java.lang.Class<?> clsDeserializer = jSONType.deserializer();
                if (clsDeserializer != java.lang.Void.class) {
                    try {
                        java.lang.Object objNewInstance = clsDeserializer.newInstance();
                        if (objNewInstance instanceof com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) {
                            return (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) objNewInstance;
                        }
                    } catch (java.lang.Throwable unused) {
                    }
                }
                zCheckName = jSONType.asm() && jSONType.parseFeatures().length == 0;
            }
            if (zCheckName) {
                java.lang.Class<?> builderClass = com.alibaba.fastjson.util.JavaBeanInfo.getBuilderClass(cls, jSONType);
                if (builderClass == null) {
                    builderClass = cls;
                }
                while (true) {
                    if (!java.lang.reflect.Modifier.isPublic(builderClass.getModifiers())) {
                        zCheckName = false;
                        break;
                    }
                    builderClass = builderClass.getSuperclass();
                    if (builderClass == java.lang.Object.class || builderClass == null) {
                        break;
                    }
                }
            }
        }
        if (cls.getTypeParameters().length != 0) {
            zCheckName = false;
        }
        if (zCheckName && (aSMDeserializerFactory = this.asmFactory) != null && aSMDeserializerFactory.classLoader.isExternalClass(cls)) {
            zCheckName = false;
        }
        if (zCheckName) {
            zCheckName = com.alibaba.fastjson.util.ASMUtils.checkName(cls.getSimpleName());
        }
        if (zCheckName) {
            if (cls.isInterface()) {
                zCheckName = false;
            }
            com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfoBuild = com.alibaba.fastjson.util.JavaBeanInfo.build(cls, type, this.propertyNamingStrategy, false, com.alibaba.fastjson.util.TypeUtils.compatibleWithJavaBean, this.jacksonCompatible);
            if (zCheckName && javaBeanInfoBuild.fields.length > 200) {
                zCheckName = false;
            }
            java.lang.reflect.Constructor<?> constructor = javaBeanInfoBuild.defaultConstructor;
            if (zCheckName && constructor == null && !cls.isInterface()) {
                zCheckName = false;
            }
            for (com.alibaba.fastjson.util.FieldInfo fieldInfo : javaBeanInfoBuild.fields) {
                if (!fieldInfo.getOnly) {
                    java.lang.Class<?> cls2 = fieldInfo.fieldClass;
                    if (java.lang.reflect.Modifier.isPublic(cls2.getModifiers()) && ((!cls2.isMemberClass() || java.lang.reflect.Modifier.isStatic(cls2.getModifiers())) && ((fieldInfo.getMember() == null || com.alibaba.fastjson.util.ASMUtils.checkName(fieldInfo.getMember().getName())) && (((annotation = fieldInfo.getAnnotation()) == null || (com.alibaba.fastjson.util.ASMUtils.checkName(annotation.name()) && annotation.format().length() == 0 && annotation.deserializeUsing() == java.lang.Void.class && annotation.parseFeatures().length == 0 && !annotation.unwrapped())) && (((method = fieldInfo.method) == null || method.getParameterTypes().length <= 1) && (!cls2.isEnum() || (getDeserializer(cls2) instanceof com.alibaba.fastjson.parser.deserializer.EnumDeserializer))))))) {
                    }
                }
                zCheckName = false;
                break;
            }
        }
        if (zCheckName && cls.isMemberClass() && !java.lang.reflect.Modifier.isStatic(cls.getModifiers())) {
            zCheckName = false;
        }
        if (!((zCheckName && com.alibaba.fastjson.util.TypeUtils.isXmlField(cls)) ? false : zCheckName)) {
            return new com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer(this, cls, type);
        }
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfoBuild2 = com.alibaba.fastjson.util.JavaBeanInfo.build(cls, type, this.propertyNamingStrategy);
        try {
            return this.asmFactory.createJavaBeanDeserializer(this, javaBeanInfoBuild2);
        } catch (com.alibaba.fastjson.JSONException unused2) {
            return new com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer(this, javaBeanInfoBuild2);
        } catch (java.lang.NoSuchMethodException unused3) {
            return new com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer(this, cls, type);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("create asm deserializer error, ");
            sbO.append(cls.getName());
            throw new com.alibaba.fastjson.JSONException(sbO.toString(), e2);
        }
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer get(java.lang.reflect.Type type) {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer;
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            objectDeserializer = this.deserializers.get(type);
        } else {
            com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap = this.mixInDeserializers.get(type);
            if (identityHashMap == null) {
                return null;
            }
            objectDeserializer = identityHashMap.get(mixInAnnotations);
        }
        return objectDeserializer;
    }

    public java.lang.ClassLoader getDefaultClassLoader() {
        return this.defaultClassLoader;
    }

    public com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> getDerializers() {
        return this.deserializers;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getDeserializer(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        return getDeserializer(fieldInfo.fieldClass, fieldInfo.fieldType);
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getDeserializer(java.lang.Class<?> cls, java.lang.reflect.Type type) {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializerCreateJavaBeanDeserializer;
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer propertyProcessableDeserializer;
        java.lang.Class<?> clsMappingTo;
        java.lang.reflect.Type type2 = type;
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer = get(type2);
        if (objectDeserializer == null && (type2 instanceof com.alibaba.fastjson.util.ParameterizedTypeImpl)) {
            objectDeserializer = get(com.alibaba.fastjson.TypeReference.intern((com.alibaba.fastjson.util.ParameterizedTypeImpl) type2));
        }
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type2 == null) {
            type2 = cls;
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializerCreateDeserializer = get(type2);
        if (objectDeserializerCreateDeserializer != null) {
            return objectDeserializerCreateDeserializer;
        }
        com.alibaba.fastjson.annotation.JSONType jSONType = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls, com.alibaba.fastjson.annotation.JSONType.class);
        if (jSONType != null && (clsMappingTo = jSONType.mappingTo()) != java.lang.Void.class) {
            return getDeserializer(clsMappingTo, clsMappingTo);
        }
        if ((type2 instanceof java.lang.reflect.WildcardType) || (type2 instanceof java.lang.reflect.TypeVariable) || (type2 instanceof java.lang.reflect.ParameterizedType)) {
            objectDeserializerCreateDeserializer = get(cls);
        }
        if (objectDeserializerCreateDeserializer != null) {
            return objectDeserializerCreateDeserializer;
        }
        java.util.Iterator<com.alibaba.fastjson.spi.Module> it = this.modules.iterator();
        while (it.hasNext()) {
            objectDeserializerCreateDeserializer = it.next().createDeserializer(this, cls);
            if (objectDeserializerCreateDeserializer != null) {
                putDeserializer(type2, objectDeserializerCreateDeserializer);
                return objectDeserializerCreateDeserializer;
            }
        }
        java.lang.String strReplace = cls.getName().replace('$', '.');
        if (strReplace.startsWith("java.awt.") && com.alibaba.fastjson.serializer.AwtCodec.support(cls) && !awtError) {
            java.lang.String[] strArr = {"java.awt.Point", "java.awt.Font", "java.awt.Rectangle", "java.awt.Color"};
            for (int i = 0; i < 4; i++) {
                try {
                    java.lang.String str = strArr[i];
                    if (str.equals(strReplace)) {
                        java.lang.reflect.Type cls2 = java.lang.Class.forName(str);
                        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer2 = com.alibaba.fastjson.serializer.AwtCodec.instance;
                        putDeserializer(cls2, objectDeserializer2);
                        return objectDeserializer2;
                    }
                } catch (java.lang.Throwable unused) {
                    awtError = true;
                }
            }
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.AwtCodec.instance;
        }
        if (!jdk8Error) {
            try {
                if (strReplace.startsWith("java.time.")) {
                    java.lang.String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.ZoneId", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                    int i2 = 0;
                    for (int i3 = 12; i2 < i3; i3 = 12) {
                        java.lang.String str2 = strArr2[i2];
                        if (str2.equals(strReplace)) {
                            java.lang.reflect.Type cls3 = java.lang.Class.forName(str2);
                            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer3 = com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.instance;
                            putDeserializer(cls3, objectDeserializer3);
                            return objectDeserializer3;
                        }
                        i2++;
                    }
                } else if (strReplace.startsWith("java.util.Optional")) {
                    java.lang.String[] strArr3 = {"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                    for (int i4 = 0; i4 < 4; i4++) {
                        java.lang.String str3 = strArr3[i4];
                        if (str3.equals(strReplace)) {
                            java.lang.reflect.Type cls4 = java.lang.Class.forName(str3);
                            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer4 = com.alibaba.fastjson.parser.deserializer.OptionalCodec.instance;
                            putDeserializer(cls4, objectDeserializer4);
                            return objectDeserializer4;
                        }
                    }
                }
            } catch (java.lang.Throwable unused2) {
                jdk8Error = true;
            }
        }
        if (!jodaError) {
            try {
                if (strReplace.startsWith("org.joda.time.")) {
                    java.lang.String[] strArr4 = {"org.joda.time.DateTime", "org.joda.time.LocalDate", "org.joda.time.LocalDateTime", "org.joda.time.LocalTime", "org.joda.time.Instant", "org.joda.time.Period", "org.joda.time.Duration", "org.joda.time.DateTimeZone", "org.joda.time.format.DateTimeFormatter"};
                    for (int i5 = 0; i5 < 9; i5++) {
                        java.lang.String str4 = strArr4[i5];
                        if (str4.equals(strReplace)) {
                            java.lang.reflect.Type cls5 = java.lang.Class.forName(str4);
                            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.JodaCodec.instance;
                            putDeserializer(cls5, objectDeserializerCreateDeserializer);
                            return objectDeserializerCreateDeserializer;
                        }
                    }
                }
            } catch (java.lang.Throwable unused3) {
                jodaError = true;
            }
        }
        if (!guavaError && strReplace.startsWith("com.google.common.collect.")) {
            try {
                java.lang.String[] strArr5 = {"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.LinkedHashMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"};
                for (int i6 = 0; i6 < 5; i6++) {
                    java.lang.String str5 = strArr5[i6];
                    if (str5.equals(strReplace)) {
                        java.lang.reflect.Type cls6 = java.lang.Class.forName(str5);
                        objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.GuavaCodec.instance;
                        putDeserializer(cls6, objectDeserializerCreateDeserializer);
                        return objectDeserializerCreateDeserializer;
                    }
                }
            } catch (java.lang.ClassNotFoundException unused4) {
                guavaError = true;
            }
        }
        if (strReplace.equals("java.nio.ByteBuffer")) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.ByteBufferCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        if (strReplace.equals("java.nio.file.Path")) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        if (cls == java.util.Map.Entry.class) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.serializer.MiscCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        if (strReplace.equals("org.javamoney.moneta.Money")) {
            objectDeserializerCreateDeserializer = com.alibaba.fastjson.support.moneta.MonetaCodec.instance;
            putDeserializer(cls, objectDeserializerCreateDeserializer);
        }
        try {
            for (com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer autowiredObjectDeserializer : com.alibaba.fastjson.util.ServiceLoader.load(com.alibaba.fastjson.parser.deserializer.AutowiredObjectDeserializer.class, java.lang.Thread.currentThread().getContextClassLoader())) {
                java.util.Iterator<java.lang.reflect.Type> it2 = autowiredObjectDeserializer.getAutowiredFor().iterator();
                while (it2.hasNext()) {
                    putDeserializer(it2.next(), autowiredObjectDeserializer);
                }
            }
        } catch (java.lang.Exception unused5) {
        }
        if (objectDeserializerCreateDeserializer == null) {
            objectDeserializerCreateDeserializer = get(type2);
        }
        if (objectDeserializerCreateDeserializer != null) {
            return objectDeserializerCreateDeserializer;
        }
        if (cls.isEnum()) {
            if (this.jacksonCompatible) {
                for (java.lang.reflect.Method method : cls.getMethods()) {
                    if (com.alibaba.fastjson.util.TypeUtils.isJacksonCreator(method)) {
                        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializerCreateJavaBeanDeserializer2 = createJavaBeanDeserializer(cls, type2);
                        putDeserializer(type2, objectDeserializerCreateJavaBeanDeserializer2);
                        return objectDeserializerCreateJavaBeanDeserializer2;
                    }
                }
            }
            java.lang.Class<?> cls7 = (java.lang.Class) com.alibaba.fastjson.JSON.getMixInAnnotations(cls);
            com.alibaba.fastjson.annotation.JSONType jSONType2 = (com.alibaba.fastjson.annotation.JSONType) com.alibaba.fastjson.util.TypeUtils.getAnnotation(cls7 != null ? cls7 : cls, com.alibaba.fastjson.annotation.JSONType.class);
            if (jSONType2 != null) {
                try {
                    com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer5 = (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) jSONType2.deserializer().newInstance();
                    putDeserializer(cls, objectDeserializer5);
                    return objectDeserializer5;
                } catch (java.lang.Throwable unused6) {
                }
            }
            java.lang.reflect.Method enumCreator = null;
            if (cls7 != null) {
                java.lang.reflect.Method enumCreator2 = getEnumCreator(cls7, cls);
                if (enumCreator2 != null) {
                    try {
                        enumCreator = cls.getMethod(enumCreator2.getName(), enumCreator2.getParameterTypes());
                    } catch (java.lang.Exception unused7) {
                    }
                }
            } else {
                enumCreator = getEnumCreator(cls, cls);
            }
            if (enumCreator != null) {
                com.alibaba.fastjson.parser.deserializer.ObjectDeserializer enumCreatorDeserializer = new com.alibaba.fastjson.parser.deserializer.EnumCreatorDeserializer(enumCreator);
                putDeserializer(cls, enumCreatorDeserializer);
                return enumCreatorDeserializer;
            }
            objectDeserializerCreateJavaBeanDeserializer = getEnumDeserializer(cls);
        } else if (cls.isArray()) {
            objectDeserializerCreateJavaBeanDeserializer = com.alibaba.fastjson.serializer.ObjectArrayCodec.instance;
        } else if (cls == java.util.Set.class || cls == java.util.HashSet.class || cls == java.util.Collection.class || cls == java.util.List.class || cls == java.util.ArrayList.class || java.util.Collection.class.isAssignableFrom(cls)) {
            objectDeserializerCreateJavaBeanDeserializer = com.alibaba.fastjson.serializer.CollectionCodec.instance;
        } else if (java.util.Map.class.isAssignableFrom(cls)) {
            objectDeserializerCreateJavaBeanDeserializer = com.alibaba.fastjson.parser.deserializer.MapDeserializer.instance;
        } else {
            if (java.lang.Throwable.class.isAssignableFrom(cls)) {
                propertyProcessableDeserializer = new com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer(this, cls);
            } else if (com.alibaba.fastjson.parser.deserializer.PropertyProcessable.class.isAssignableFrom(cls)) {
                propertyProcessableDeserializer = new com.alibaba.fastjson.parser.deserializer.PropertyProcessableDeserializer(cls);
            } else {
                objectDeserializerCreateJavaBeanDeserializer = cls == java.net.InetAddress.class ? com.alibaba.fastjson.serializer.MiscCodec.instance : createJavaBeanDeserializer(cls, type2);
            }
            objectDeserializerCreateJavaBeanDeserializer = propertyProcessableDeserializer;
        }
        putDeserializer(type2, objectDeserializerCreateJavaBeanDeserializer);
        return objectDeserializerCreateJavaBeanDeserializer;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getDeserializer(java.lang.reflect.Type type) {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer = get(type);
        if (objectDeserializer != null) {
            return objectDeserializer;
        }
        if (type instanceof java.lang.Class) {
            return getDeserializer((java.lang.Class) type, type);
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            java.lang.reflect.Type rawType = ((java.lang.reflect.ParameterizedType) type).getRawType();
            return rawType instanceof java.lang.Class ? getDeserializer((java.lang.Class) rawType, type) : getDeserializer(rawType);
        }
        if (type instanceof java.lang.reflect.WildcardType) {
            java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type).getUpperBounds();
            if (upperBounds.length == 1) {
                return getDeserializer(upperBounds[0]);
            }
        }
        return com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer.instance;
    }

    public com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> getDeserializers() {
        return this.deserializers;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getEnumDeserializer(java.lang.Class<?> cls) {
        return new com.alibaba.fastjson.parser.deserializer.EnumDeserializer(cls);
    }

    public void initJavaBeanDeserializers(java.lang.Class<?>... clsArr) {
        if (clsArr == null) {
            return;
        }
        for (java.lang.Class<?> cls : clsArr) {
            if (cls != null) {
                putDeserializer(cls, createJavaBeanDeserializer(cls, cls));
            }
        }
    }

    public boolean isAsmEnable() {
        return this.asmEnable;
    }

    public boolean isAutoTypeSupport() {
        return this.autoTypeSupport;
    }

    public boolean isJacksonCompatible() {
        return this.jacksonCompatible;
    }

    public boolean isPrimitive(java.lang.Class<?> cls) {
        return isPrimitive2(cls);
    }

    public boolean isSafeMode() {
        return this.safeMode;
    }

    public void putDeserializer(java.lang.reflect.Type type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer) {
        java.lang.reflect.Type mixInAnnotations = com.alibaba.fastjson.JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            this.deserializers.put(type, objectDeserializer);
            return;
        }
        com.alibaba.fastjson.util.IdentityHashMap<java.lang.reflect.Type, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer> identityHashMap = this.mixInDeserializers.get(type);
        if (identityHashMap == null) {
            identityHashMap = new com.alibaba.fastjson.util.IdentityHashMap<>(4);
            this.mixInDeserializers.put(type, identityHashMap);
        }
        identityHashMap.put(mixInAnnotations, objectDeserializer);
    }

    public void register(com.alibaba.fastjson.spi.Module module) {
        this.modules.add(module);
    }

    public void register(java.lang.String str, java.lang.Class cls) {
        this.typeMapping.putIfAbsent(str, cls);
    }

    public void setAsmEnable(boolean z) {
        this.asmEnable = z;
    }

    public void setAutoTypeSupport(boolean z) {
        this.autoTypeSupport = z;
    }

    public void setDefaultClassLoader(java.lang.ClassLoader classLoader) {
        this.defaultClassLoader = classLoader;
    }

    public void setJacksonCompatible(boolean z) {
        this.jacksonCompatible = z;
    }

    public void setSafeMode(boolean z) {
        this.safeMode = z;
    }
}
