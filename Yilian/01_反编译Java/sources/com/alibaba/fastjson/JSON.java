package com.alibaba.fastjson;

/* loaded from: classes.dex */
public abstract class JSON implements com.alibaba.fastjson.JSONStreamAware, com.alibaba.fastjson.JSONAware {
    public static final java.lang.String VERSION = "1.2.83";
    public static final java.lang.ThreadLocal<byte[]> bytesLocal;
    public static final java.lang.ThreadLocal<char[]> charsLocal;
    public static java.util.TimeZone defaultTimeZone = java.util.TimeZone.getDefault();
    public static java.util.Locale defaultLocale = java.util.Locale.getDefault();
    public static java.lang.String DEFAULT_TYPE_KEY = "@type";
    public static final com.alibaba.fastjson.serializer.SerializeFilter[] emptyFilters = new com.alibaba.fastjson.serializer.SerializeFilter[0];
    public static java.lang.String DEFFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static final java.util.concurrent.ConcurrentHashMap<java.lang.reflect.Type, java.lang.reflect.Type> mixInsMapper = new java.util.concurrent.ConcurrentHashMap<>(16);
    public static int DEFAULT_PARSER_FEATURE = (((((((com.alibaba.fastjson.parser.Feature.AutoCloseSource.getMask() | 0) | com.alibaba.fastjson.parser.Feature.InternFieldNames.getMask()) | com.alibaba.fastjson.parser.Feature.UseBigDecimal.getMask()) | com.alibaba.fastjson.parser.Feature.AllowUnQuotedFieldNames.getMask()) | com.alibaba.fastjson.parser.Feature.AllowSingleQuotes.getMask()) | com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas.getMask()) | com.alibaba.fastjson.parser.Feature.SortFeidFastMatch.getMask()) | com.alibaba.fastjson.parser.Feature.IgnoreNotMatch.getMask();
    public static int DEFAULT_GENERATE_FEATURE = (((0 | com.alibaba.fastjson.serializer.SerializerFeature.QuoteFieldNames.getMask()) | com.alibaba.fastjson.serializer.SerializerFeature.SkipTransientField.getMask()) | com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName.getMask()) | com.alibaba.fastjson.serializer.SerializerFeature.SortField.getMask();

    static {
        config(com.alibaba.fastjson.util.IOUtils.DEFAULT_PROPERTIES);
        bytesLocal = new java.lang.ThreadLocal<>();
        charsLocal = new java.lang.ThreadLocal<>();
    }

    public static void addMixInAnnotations(java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        if (type == null || type2 == null) {
            return;
        }
        mixInsMapper.put(type, type2);
    }

    public static byte[] allocateBytes(int i) {
        byte[] bArr = bytesLocal.get();
        if (bArr == null) {
            if (i <= 65536) {
                byte[] bArr2 = new byte[65536];
                bytesLocal.set(bArr2);
                return bArr2;
            }
        } else if (bArr.length >= i) {
            return bArr;
        }
        return new byte[i];
    }

    public static char[] allocateChars(int i) {
        char[] cArr = charsLocal.get();
        if (cArr == null) {
            if (i <= 65536) {
                char[] cArr2 = new char[65536];
                charsLocal.set(cArr2);
                return cArr2;
            }
        } else if (cArr.length >= i) {
            return cArr;
        }
        return new char[i];
    }

    public static void clearMixInAnnotations() {
        mixInsMapper.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void config(java.util.Properties r5) {
        /*
            java.lang.String r0 = "fastjson.serializerFeatures.MapSortField"
            java.lang.String r0 = r5.getProperty(r0)
            com.alibaba.fastjson.serializer.SerializerFeature r1 = com.alibaba.fastjson.serializer.SerializerFeature.MapSortField
            int r1 = r1.getMask()
            java.lang.String r2 = "true"
            boolean r3 = r2.equals(r0)
            java.lang.String r4 = "false"
            if (r3 == 0) goto L1c
            int r0 = com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE
            r0 = r0 | r1
        L19:
            com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE = r0
            goto L28
        L1c:
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto L28
            int r0 = com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE
            r1 = r1 ^ (-1)
            r0 = r0 & r1
            goto L19
        L28:
            java.lang.String r0 = "parser.features.NonStringKeyAsString"
            java.lang.String r0 = r5.getProperty(r0)
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L3f
            int r0 = com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE
            com.alibaba.fastjson.parser.Feature r1 = com.alibaba.fastjson.parser.Feature.NonStringKeyAsString
            int r1 = r1.getMask()
            r0 = r0 | r1
            com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE = r0
        L3f:
            java.lang.String r0 = "parser.features.ErrorOnEnumNotMatch"
            java.lang.String r0 = r5.getProperty(r0)
            boolean r0 = r2.equals(r0)
            if (r0 != 0) goto L57
            java.lang.String r0 = "fastjson.parser.features.ErrorOnEnumNotMatch"
            java.lang.String r0 = r5.getProperty(r0)
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L62
        L57:
            int r0 = com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE
            com.alibaba.fastjson.parser.Feature r1 = com.alibaba.fastjson.parser.Feature.ErrorOnEnumNotMatch
            int r1 = r1.getMask()
            r0 = r0 | r1
            com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE = r0
        L62:
            java.lang.String r0 = "fastjson.asmEnable"
            java.lang.String r5 = r5.getProperty(r0)
            boolean r5 = r4.equals(r5)
            if (r5 == 0) goto L79
            com.alibaba.fastjson.parser.ParserConfig r5 = com.alibaba.fastjson.parser.ParserConfig.global
            r0 = 0
            r5.setAsmEnable(r0)
            com.alibaba.fastjson.serializer.SerializeConfig r5 = com.alibaba.fastjson.serializer.SerializeConfig.globalInstance
            r5.setAsmEnable(r0)
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSON.config(java.util.Properties):void");
    }

    public static java.lang.reflect.Type getMixInAnnotations(java.lang.reflect.Type type) {
        if (type != null) {
            return mixInsMapper.get(type);
        }
        return null;
    }

    public static <T> void handleResovleTask(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, T t) {
        defaultJSONParser.handleResovleTask(t);
    }

    public static boolean isValid(java.lang.String str) {
        if (str != null && str.length() != 0) {
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
            try {
                jSONScanner.nextToken();
                int i = jSONScanner.token();
                if (i != 12) {
                    if (i != 14) {
                        switch (i) {
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                jSONScanner.nextToken();
                                break;
                            default:
                                return false;
                        }
                    } else {
                        jSONScanner.skipArray(true);
                    }
                } else {
                    if (jSONScanner.getCurrent() == 26) {
                        return false;
                    }
                    jSONScanner.skipObject(true);
                }
                return jSONScanner.token() == 20;
            } catch (java.lang.Exception unused) {
            } finally {
                jSONScanner.close();
            }
        }
        return false;
    }

    public static boolean isValidArray(java.lang.String str) {
        if (str != null && str.length() != 0) {
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
            try {
                jSONScanner.nextToken();
                if (jSONScanner.token() != 14) {
                    return false;
                }
                jSONScanner.skipArray(true);
                return jSONScanner.token() == 20;
            } catch (java.lang.Exception unused) {
            } finally {
                jSONScanner.close();
            }
        }
        return false;
    }

    public static boolean isValidObject(java.lang.String str) {
        if (str != null && str.length() != 0) {
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
            try {
                jSONScanner.nextToken();
                if (jSONScanner.token() != 12) {
                    return false;
                }
                if (jSONScanner.getCurrent() == 26) {
                    return false;
                }
                jSONScanner.skipObject(true);
                return jSONScanner.token() == 20;
            } catch (java.lang.Exception unused) {
            } finally {
                jSONScanner.close();
            }
        }
        return false;
    }

    public static java.lang.Object parse(java.lang.String str) {
        return parse(str, DEFAULT_PARSER_FEATURE);
    }

    public static java.lang.Object parse(java.lang.String str, int i) {
        return parse(str, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), i);
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return parse(str, parserConfig, DEFAULT_PARSER_FEATURE);
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i) {
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig, i);
        java.lang.Object obj = defaultJSONParser.parse();
        defaultJSONParser.handleResovleTask(obj);
        defaultJSONParser.close();
        return obj;
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        return parse(str, parserConfig, iConfig);
    }

    public static java.lang.Object parse(java.lang.String str, com.alibaba.fastjson.parser.Feature... featureArr) {
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        return parse(str, iConfig);
    }

    public static java.lang.Object parse(byte[] bArr, int i, int i2, java.nio.charset.CharsetDecoder charsetDecoder, int i3) {
        charsetDecoder.reset();
        double d2 = i2;
        double dMaxCharsPerByte = charsetDecoder.maxCharsPerByte();
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(dMaxCharsPerByte);
        char[] cArrAllocateChars = allocateChars((int) (d2 * dMaxCharsPerByte));
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArr, i, i2);
        java.nio.CharBuffer charBufferWrap = java.nio.CharBuffer.wrap(cArrAllocateChars);
        com.alibaba.fastjson.util.IOUtils.decode(charsetDecoder, byteBufferWrap, charBufferWrap);
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(cArrAllocateChars, charBufferWrap.position(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), i3);
        java.lang.Object obj = defaultJSONParser.parse();
        defaultJSONParser.handleResovleTask(obj);
        defaultJSONParser.close();
        return obj;
    }

    public static java.lang.Object parse(byte[] bArr, int i, int i2, java.nio.charset.CharsetDecoder charsetDecoder, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        return parse(bArr, i, i2, charsetDecoder, iConfig);
    }

    public static java.lang.Object parse(byte[] bArr, com.alibaba.fastjson.parser.Feature... featureArr) {
        char[] cArrAllocateChars = allocateChars(bArr.length);
        int iDecodeUTF8 = com.alibaba.fastjson.util.IOUtils.decodeUTF8(bArr, 0, bArr.length, cArrAllocateChars);
        if (iDecodeUTF8 < 0) {
            return null;
        }
        return parse(new java.lang.String(cArrAllocateChars, 0, iDecodeUTF8), featureArr);
    }

    public static com.alibaba.fastjson.JSONArray parseArray(java.lang.String str) {
        return parseArray(str, com.alibaba.fastjson.parser.ParserConfig.global);
    }

    public static com.alibaba.fastjson.JSONArray parseArray(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        com.alibaba.fastjson.JSONArray jSONArray = null;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig);
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
        } else if (jSONLexer.token() != 20 || !jSONLexer.isBlankInput()) {
            jSONArray = new com.alibaba.fastjson.JSONArray();
            defaultJSONParser.parseArray(jSONArray);
            defaultJSONParser.handleResovleTask(jSONArray);
        }
        defaultJSONParser.close();
        return jSONArray;
    }

    public static <T> java.util.List<T> parseArray(java.lang.String str, java.lang.Class<T> cls) {
        return parseArray(str, cls, com.alibaba.fastjson.parser.ParserConfig.global);
    }

    public static <T> java.util.List<T> parseArray(java.lang.String str, java.lang.Class<T> cls, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        java.util.ArrayList arrayList = null;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig);
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = jSONLexer.token();
        if (i == 8) {
            jSONLexer.nextToken();
        } else if (i != 20 || !jSONLexer.isBlankInput()) {
            arrayList = new java.util.ArrayList();
            defaultJSONParser.parseArray((java.lang.Class<?>) cls, (java.util.Collection) arrayList);
            defaultJSONParser.handleResovleTask(arrayList);
        }
        defaultJSONParser.close();
        return arrayList;
    }

    public static java.util.List<java.lang.Object> parseArray(java.lang.String str, java.lang.reflect.Type[] typeArr) {
        return parseArray(str, typeArr, com.alibaba.fastjson.parser.ParserConfig.global);
    }

    public static java.util.List<java.lang.Object> parseArray(java.lang.String str, java.lang.reflect.Type[] typeArr, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig);
        java.lang.Object[] array = defaultJSONParser.parseArray(typeArr);
        java.util.List<java.lang.Object> listAsList = array != null ? java.util.Arrays.asList(array) : null;
        defaultJSONParser.handleResovleTask(listAsList);
        defaultJSONParser.close();
        return listAsList;
    }

    public static com.alibaba.fastjson.JSONObject parseObject(java.lang.String str) {
        java.lang.Object obj = parse(str);
        if (obj instanceof com.alibaba.fastjson.JSONObject) {
            return (com.alibaba.fastjson.JSONObject) obj;
        }
        try {
            return (com.alibaba.fastjson.JSONObject) toJSON(obj);
        } catch (java.lang.RuntimeException e2) {
            throw new com.alibaba.fastjson.JSONException("can not cast to JSONObject.", e2);
        }
    }

    public static com.alibaba.fastjson.JSONObject parseObject(java.lang.String str, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (com.alibaba.fastjson.JSONObject) parse(str, featureArr);
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(inputStream, com.alibaba.fastjson.util.IOUtils.UTF8, type, featureArr);
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i, com.alibaba.fastjson.parser.Feature... featureArr) throws java.io.IOException {
        if (charset == null) {
            charset = com.alibaba.fastjson.util.IOUtils.UTF8;
        }
        java.nio.charset.Charset charset2 = charset;
        byte[] bArrAllocateBytes = allocateBytes(65536);
        int i2 = 0;
        while (true) {
            int i3 = inputStream.read(bArrAllocateBytes, i2, bArrAllocateBytes.length - i2);
            if (i3 == -1) {
                return (T) parseObject(bArrAllocateBytes, 0, i2, charset2, type, parserConfig, parseProcess, i, featureArr);
            }
            i2 += i3;
            if (i2 == bArrAllocateBytes.length) {
                byte[] bArr = new byte[(bArrAllocateBytes.length * 3) / 2];
                java.lang.System.arraycopy(bArrAllocateBytes, 0, bArr, 0, bArrAllocateBytes.length);
                bArrAllocateBytes = bArr;
            }
        }
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(inputStream, charset, type, parserConfig, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(java.io.InputStream inputStream, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(inputStream, charset, type, com.alibaba.fastjson.parser.ParserConfig.global, featureArr);
    }

    public static <T> T parseObject(java.lang.String str, com.alibaba.fastjson.TypeReference<T> typeReference, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, typeReference.type, com.alibaba.fastjson.parser.ParserConfig.global, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.Class<T> cls) {
        return (T) parseObject(str, (java.lang.Class) cls, new com.alibaba.fastjson.parser.Feature[0]);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.Class<T> cls, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, cls, com.alibaba.fastjson.parser.ParserConfig.global, parseProcess, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.Class<T> cls, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, cls, com.alibaba.fastjson.parser.ParserConfig.global, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, int i, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (str == null) {
            return null;
        }
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            i = com.alibaba.fastjson.parser.Feature.config(i, feature, true);
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), i);
        T t = (T) defaultJSONParser.parseObject(type);
        defaultJSONParser.handleResovleTask(t);
        defaultJSONParser.close();
        return t;
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, parserConfig, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, i, featureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (featureArr != null) {
            for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
                i |= feature.mask;
            }
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig, i);
        if (parseProcess != null) {
            if (parseProcess instanceof com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider) {
                defaultJSONParser.getExtraTypeProviders().add((com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider) parseProcess);
            }
            if (parseProcess instanceof com.alibaba.fastjson.parser.deserializer.ExtraProcessor) {
                defaultJSONParser.getExtraProcessors().add((com.alibaba.fastjson.parser.deserializer.ExtraProcessor) parseProcess);
            }
            if (parseProcess instanceof com.alibaba.fastjson.parser.deserializer.FieldTypeResolver) {
                defaultJSONParser.setFieldTypeResolver((com.alibaba.fastjson.parser.deserializer.FieldTypeResolver) parseProcess);
            }
        }
        T t = (T) defaultJSONParser.parseObject(type, (java.lang.Object) null);
        defaultJSONParser.handleResovleTask(t);
        defaultJSONParser.close();
        return t;
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, parserConfig, (com.alibaba.fastjson.parser.deserializer.ParseProcess) null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, com.alibaba.fastjson.parser.ParserConfig.global, parseProcess, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(java.lang.String str, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(str, type, com.alibaba.fastjson.parser.ParserConfig.global, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i, int i2, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i3, com.alibaba.fastjson.parser.Feature... featureArr) throws java.lang.Throwable {
        java.lang.String str;
        java.io.InputStreamReader inputStreamReader;
        java.lang.String all;
        if (charset == null) {
            charset = com.alibaba.fastjson.util.IOUtils.UTF8;
        }
        java.io.InputStreamReader inputStreamReader2 = null;
        if (charset == com.alibaba.fastjson.util.IOUtils.UTF8) {
            char[] cArrAllocateChars = allocateChars(bArr.length);
            int iDecodeUTF8 = com.alibaba.fastjson.util.IOUtils.decodeUTF8(bArr, i, i2, cArrAllocateChars);
            if (iDecodeUTF8 < 0) {
                try {
                    inputStreamReader = new java.io.InputStreamReader(new java.util.zip.GZIPInputStream(new java.io.ByteArrayInputStream(bArr, i, i2)), com.google.android.exoplayer2.C.UTF8_NAME);
                } catch (java.lang.Exception unused) {
                    inputStreamReader = null;
                } catch (java.lang.Throwable th) {
                    th = th;
                }
                try {
                    all = com.alibaba.fastjson.util.IOUtils.readAll(inputStreamReader);
                    com.alibaba.fastjson.util.IOUtils.close(inputStreamReader);
                } catch (java.lang.Exception unused2) {
                    com.alibaba.fastjson.util.IOUtils.close(inputStreamReader);
                    return null;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    inputStreamReader2 = inputStreamReader;
                    com.alibaba.fastjson.util.IOUtils.close(inputStreamReader2);
                    throw th;
                }
            } else {
                all = null;
            }
            if (all == null && iDecodeUTF8 < 0) {
                return null;
            }
            if (all == null) {
                all = new java.lang.String(cArrAllocateChars, 0, iDecodeUTF8);
            }
            str = all;
        } else {
            if (i2 < 0) {
                return null;
            }
            str = new java.lang.String(bArr, i, i2, charset);
        }
        return (T) parseObject(str, type, parserConfig, parseProcess, i3, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i, int i2, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(bArr, i, i2, charset, type, com.alibaba.fastjson.parser.ParserConfig.global, null, DEFAULT_PARSER_FEATURE, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, int i, int i2, java.nio.charset.CharsetDecoder charsetDecoder, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        charsetDecoder.reset();
        double d2 = i2;
        double dMaxCharsPerByte = charsetDecoder.maxCharsPerByte();
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(dMaxCharsPerByte);
        char[] cArrAllocateChars = allocateChars((int) (d2 * dMaxCharsPerByte));
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArr, i, i2);
        java.nio.CharBuffer charBufferWrap = java.nio.CharBuffer.wrap(cArrAllocateChars);
        com.alibaba.fastjson.util.IOUtils.decode(charsetDecoder, byteBufferWrap, charBufferWrap);
        return (T) parseObject(cArrAllocateChars, charBufferWrap.position(), type, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, com.alibaba.fastjson.util.IOUtils.UTF8, type, featureArr);
    }

    public static <T> T parseObject(byte[] bArr, java.nio.charset.Charset charset, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.parser.deserializer.ParseProcess parseProcess, int i, com.alibaba.fastjson.parser.Feature... featureArr) {
        return (T) parseObject(bArr, 0, bArr.length, charset, type, parserConfig, parseProcess, i, featureArr);
    }

    public static <T> T parseObject(char[] cArr, int i, java.lang.reflect.Type type, com.alibaba.fastjson.parser.Feature... featureArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        int iConfig = DEFAULT_PARSER_FEATURE;
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            iConfig = com.alibaba.fastjson.parser.Feature.config(iConfig, feature, true);
        }
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(cArr, i, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), iConfig);
        T t = (T) defaultJSONParser.parseObject(type);
        defaultJSONParser.handleResovleTask(t);
        defaultJSONParser.close();
        return t;
    }

    public static void removeMixInAnnotations(java.lang.reflect.Type type) {
        if (type != null) {
            mixInsMapper.remove(type);
        }
    }

    public static void setDefaultTypeKey(java.lang.String str) {
        DEFAULT_TYPE_KEY = str;
        com.alibaba.fastjson.parser.ParserConfig.global.symbolTable.addSymbol(str, 0, str.length(), str.hashCode(), true);
    }

    public static java.lang.Object toJSON(java.lang.Object obj) {
        return toJSON(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance);
    }

    public static java.lang.Object toJSON(java.lang.Object obj, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return toJSON(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance);
    }

    public static java.lang.Object toJSON(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof com.alibaba.fastjson.JSON) {
            return obj;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            int size = map.size();
            com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) (map instanceof java.util.LinkedHashMap ? new java.util.LinkedHashMap(size) : map instanceof java.util.TreeMap ? new java.util.TreeMap() : new java.util.HashMap(size)));
            for (java.util.Map.Entry entry : map.entrySet()) {
                jSONObject.put(com.alibaba.fastjson.util.TypeUtils.castToString(entry.getKey()), toJSON(entry.getValue(), serializeConfig));
            }
            return jSONObject;
        }
        if (obj instanceof java.util.Collection) {
            java.util.Collection collection = (java.util.Collection) obj;
            com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray(collection.size());
            java.util.Iterator it = collection.iterator();
            while (it.hasNext()) {
                jSONArray.add(toJSON(it.next(), serializeConfig));
            }
            return jSONArray;
        }
        if (obj instanceof com.alibaba.fastjson.serializer.JSONSerializable) {
            return parse(toJSONString(obj));
        }
        java.lang.Class<?> cls = obj.getClass();
        if (cls.isEnum()) {
            return ((java.lang.Enum) obj).name();
        }
        boolean z = false;
        if (cls.isArray()) {
            int length = java.lang.reflect.Array.getLength(obj);
            com.alibaba.fastjson.JSONArray jSONArray2 = new com.alibaba.fastjson.JSONArray(length);
            for (int i = 0; i < length; i++) {
                jSONArray2.add(toJSON(java.lang.reflect.Array.get(obj, i)));
            }
            return jSONArray2;
        }
        if (com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(cls)) {
            return obj;
        }
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = serializeConfig.getObjectWriter(cls);
        if (!(objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer)) {
            return parse(toJSONString(obj, serializeConfig, new com.alibaba.fastjson.serializer.SerializerFeature[0]));
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = (com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter;
        com.alibaba.fastjson.annotation.JSONType jSONType = javaBeanSerializer.getJSONType();
        if (jSONType != null) {
            boolean z2 = false;
            for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : jSONType.serialzeFeatures()) {
                if (serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.SortField || serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.MapSortField) {
                    z2 = true;
                }
            }
            z = z2;
        }
        com.alibaba.fastjson.JSONObject jSONObject2 = new com.alibaba.fastjson.JSONObject(z);
        try {
            for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry2 : javaBeanSerializer.getFieldValuesMap(obj).entrySet()) {
                jSONObject2.put(entry2.getKey(), toJSON(entry2.getValue(), serializeConfig));
            }
            return jSONObject2;
        } catch (java.lang.Exception e2) {
            throw new com.alibaba.fastjson.JSONException("toJSON error", e2);
        }
    }

    public static byte[] toJSONBytes(java.lang.Object obj, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, i, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, emptyFilters, i, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, serializeFilterArr, null, i, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(com.alibaba.fastjson.util.IOUtils.UTF8, obj, serializeConfig, serializeFilterArr, str, i, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, serializeConfig, emptyFilters, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, serializeFilterArr, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONBytes(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static byte[] toJSONBytes(java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setDateFormat(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.toBytes(charset);
        } finally {
            serializeWriter.close();
        }
    }

    public static byte[] toJSONBytesWithFastJsonConfig(java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setFastJsonConfigDateFormatPattern(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.toBytes(charset);
        } finally {
            serializeWriter.close();
        }
    }

    public static java.lang.String toJSONString(java.lang.Object obj) {
        return toJSONString(obj, emptyFilters, new com.alibaba.fastjson.serializer.SerializerFeature[0]);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i, serializerFeatureArr);
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(obj);
            java.lang.String string = serializeWriter.toString();
            int length = string.length();
            if (length > 0) {
                int i2 = length - 1;
                if (string.charAt(i2) == '.' && (obj instanceof java.lang.Number) && !serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
                    return string.substring(0, i2);
                }
            }
            return string;
        } finally {
            serializeWriter.close();
        }
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setDateFormat(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.toString();
        } finally {
            serializeWriter.close();
        }
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, serializeFilterArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, (com.alibaba.fastjson.serializer.SerializeFilter) null, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter serializeFilter, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, new com.alibaba.fastjson.serializer.SerializeFilter[]{serializeFilter}, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, boolean z) {
        return !z ? toJSONString(obj) : toJSONString(obj, com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, serializeFilterArr, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONString(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONStringWithDateFormat(java.lang.Object obj, java.lang.String str, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, null, str, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static java.lang.String toJSONStringZ(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return toJSONString(obj, serializeConfig, emptyFilters, null, 0, serializerFeatureArr);
    }

    public static <T> T toJavaObject(com.alibaba.fastjson.JSON json, java.lang.Class<T> cls) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) json, (java.lang.Class) cls, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.lang.Object obj, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return writeJSONString(outputStream, com.alibaba.fastjson.util.IOUtils.UTF8, obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, null, null, i, serializerFeatureArr);
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return writeJSONString(outputStream, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setDateFormat(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.writeToEx(outputStream, charset);
        } finally {
            serializeWriter.close();
        }
    }

    public static final int writeJSONString(java.io.OutputStream outputStream, java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        return writeJSONString(outputStream, charset, obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance, null, null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONString(java.io.Writer writer, java.lang.Object obj, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(writer, i, serializerFeatureArr);
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(obj);
        } finally {
            serializeWriter.close();
        }
    }

    public static void writeJSONString(java.io.Writer writer, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
    }

    public static void writeJSONStringTo(java.lang.Object obj, java.io.Writer writer, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        writeJSONString(writer, obj, serializerFeatureArr);
    }

    public static final int writeJSONStringWithFastJsonConfig(java.io.OutputStream outputStream, java.nio.charset.Charset charset, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.serializer.SerializeFilter[] serializeFilterArr, java.lang.String str, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, i, serializerFeatureArr);
        try {
            com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter, serializeConfig);
            if (str != null && str.length() != 0) {
                jSONSerializer.setFastJsonConfigDateFormatPattern(str);
                jSONSerializer.config(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat, true);
            }
            if (serializeFilterArr != null) {
                for (com.alibaba.fastjson.serializer.SerializeFilter serializeFilter : serializeFilterArr) {
                    jSONSerializer.addFilter(serializeFilter);
                }
            }
            jSONSerializer.write(obj);
            return serializeWriter.writeToEx(outputStream, charset);
        } finally {
            serializeWriter.close();
        }
    }

    @Override // com.alibaba.fastjson.JSONAware
    public java.lang.String toJSONString() {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter();
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(this);
            return serializeWriter.toString();
        } finally {
            serializeWriter.close();
        }
    }

    public <T> T toJavaObject(com.alibaba.fastjson.TypeReference typeReference) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(this, typeReference != null ? typeReference.getType() : null, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T toJavaObject(java.lang.Class<T> cls) {
        return (cls == com.alibaba.fastjson.JSONArray.class || cls == com.alibaba.fastjson.JSON.class || cls == java.util.Collection.class || cls == java.util.List.class) ? this : (T) com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) this, (java.lang.Class) cls, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public <T> T toJavaObject(java.lang.reflect.Type type) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(this, type, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public java.lang.String toString() {
        return toJSONString();
    }

    public java.lang.String toString(com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(null, DEFAULT_GENERATE_FEATURE, serializerFeatureArr);
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(this);
            return serializeWriter.toString();
        } finally {
            serializeWriter.close();
        }
    }

    @Override // com.alibaba.fastjson.JSONStreamAware
    public void writeJSONString(java.lang.Appendable appendable) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter();
        try {
            try {
                new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(this);
                appendable.append(serializeWriter.toString());
            } catch (java.io.IOException e2) {
                throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
            }
        } finally {
            serializeWriter.close();
        }
    }
}
