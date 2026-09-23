package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class Jdk8DateCodec extends com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.serializer.ContextObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final java.lang.String defaultPatttern = "yyyy-MM-dd HH:mm:ss";
    public static final java.lang.String formatter_iso8601_pattern = "yyyy-MM-dd'T'HH:mm:ss";
    public static final java.lang.String formatter_iso8601_pattern_23 = "yyyy-MM-dd'T'HH:mm:ss.SSS";
    public static final java.lang.String formatter_iso8601_pattern_29 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
    public static final com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec instance = new com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec();
    public static final java.time.format.DateTimeFormatter defaultFormatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    public static final java.time.format.DateTimeFormatter defaultFormatter_23 = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
    public static final java.time.format.DateTimeFormatter formatter_dt19_tw = java.time.format.DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
    public static final java.time.format.DateTimeFormatter formatter_dt19_cn = java.time.format.DateTimeFormatter.ofPattern("yyyy年M月d日 HH:mm:ss");
    public static final java.time.format.DateTimeFormatter formatter_dt19_cn_1 = java.time.format.DateTimeFormatter.ofPattern("yyyy年M月d日 H时m分s秒");
    public static final java.time.format.DateTimeFormatter formatter_dt19_kr = java.time.format.DateTimeFormatter.ofPattern("yyyy년M월d일 HH:mm:ss");
    public static final java.time.format.DateTimeFormatter formatter_dt19_us = java.time.format.DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");
    public static final java.time.format.DateTimeFormatter formatter_dt19_eur = java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
    public static final java.time.format.DateTimeFormatter formatter_dt19_de = java.time.format.DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm:ss");
    public static final java.time.format.DateTimeFormatter formatter_dt19_in = java.time.format.DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
    public static final java.time.format.DateTimeFormatter formatter_d8 = java.time.format.DateTimeFormatter.ofPattern("yyyyMMdd");
    public static final java.time.format.DateTimeFormatter formatter_d10_tw = java.time.format.DateTimeFormatter.ofPattern("yyyy/MM/dd");
    public static final java.time.format.DateTimeFormatter formatter_d10_cn = java.time.format.DateTimeFormatter.ofPattern("yyyy年M月d日");
    public static final java.time.format.DateTimeFormatter formatter_d10_kr = java.time.format.DateTimeFormatter.ofPattern("yyyy년M월d일");
    public static final java.time.format.DateTimeFormatter formatter_d10_us = java.time.format.DateTimeFormatter.ofPattern("MM/dd/yyyy");
    public static final java.time.format.DateTimeFormatter formatter_d10_eur = java.time.format.DateTimeFormatter.ofPattern("dd/MM/yyyy");
    public static final java.time.format.DateTimeFormatter formatter_d10_de = java.time.format.DateTimeFormatter.ofPattern("dd.MM.yyyy");
    public static final java.time.format.DateTimeFormatter formatter_d10_in = java.time.format.DateTimeFormatter.ofPattern("dd-MM-yyyy");
    public static final java.time.format.DateTimeFormatter ISO_FIXED_FORMAT = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss").withZone(java.time.ZoneId.systemDefault());
    public static final java.time.format.DateTimeFormatter formatter_iso8601 = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss");

    public static java.lang.Object castToLocalDateTime(java.lang.Object obj, java.lang.String str) {
        if (obj == null) {
            return null;
        }
        if (str == null) {
            str = "yyyy-MM-dd HH:mm:ss";
        }
        return java.time.LocalDateTime.parse(obj.toString(), java.time.format.DateTimeFormatter.ofPattern(str));
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.time.ZonedDateTime] */
    private void write(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, java.time.temporal.TemporalAccessor temporalAccessor, java.lang.String str) {
        if ("unixtime".equals(str)) {
            if (temporalAccessor instanceof java.time.chrono.ChronoZonedDateTime) {
                serializeWriter.writeInt((int) ((java.time.chrono.ChronoZonedDateTime) temporalAccessor).toEpochSecond());
                return;
            } else if (temporalAccessor instanceof java.time.LocalDateTime) {
                serializeWriter.writeInt((int) ((java.time.LocalDateTime) temporalAccessor).atZone(com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toEpochSecond());
                return;
            }
        }
        if ("millis".equals(str)) {
            java.time.Instant instant = null;
            if (temporalAccessor instanceof java.time.chrono.ChronoZonedDateTime) {
                instant = ((java.time.chrono.ChronoZonedDateTime) temporalAccessor).toInstant();
            } else if (temporalAccessor instanceof java.time.LocalDateTime) {
                instant = ((java.time.LocalDateTime) temporalAccessor).atZone(com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toInstant();
            }
            if (instant != null) {
                serializeWriter.writeLong(instant.toEpochMilli());
                return;
            }
        }
        serializeWriter.writeString((str == "yyyy-MM-dd'T'HH:mm:ss" ? formatter_iso8601 : java.time.format.DateTimeFormatter.ofPattern(str)).format(temporalAccessor));
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i) {
        java.lang.Long l;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken();
            java.time.format.DateTimeFormatter dateTimeFormatterOfPattern = str != null ? "yyyy-MM-dd HH:mm:ss".equals(str) ? defaultFormatter : java.time.format.DateTimeFormatter.ofPattern(str) : null;
            if ("".equals(strStringVal)) {
                return null;
            }
            if (type == java.time.LocalDateTime.class) {
                return (strStringVal.length() == 10 || strStringVal.length() == 8) ? (T) java.time.LocalDateTime.of(parseLocalDate(strStringVal, str, dateTimeFormatterOfPattern), java.time.LocalTime.MIN) : (T) parseDateTime(strStringVal, dateTimeFormatterOfPattern);
            }
            if (type == java.time.LocalDate.class) {
                if (strStringVal.length() != 23) {
                    return (T) parseLocalDate(strStringVal, str, dateTimeFormatterOfPattern);
                }
                java.time.LocalDateTime localDateTime = java.time.LocalDateTime.parse(strStringVal);
                return (T) java.time.LocalDate.of(localDateTime.getYear(), localDateTime.getMonthValue(), localDateTime.getDayOfMonth());
            }
            boolean z = true;
            if (type == java.time.LocalTime.class) {
                if (strStringVal.length() == 23) {
                    java.time.LocalDateTime localDateTime2 = java.time.LocalDateTime.parse(strStringVal);
                    return (T) java.time.LocalTime.of(localDateTime2.getHour(), localDateTime2.getMinute(), localDateTime2.getSecond(), localDateTime2.getNano());
                }
                for (int i2 = 0; i2 < strStringVal.length(); i2++) {
                    char cCharAt = strStringVal.charAt(i2);
                    if (cCharAt < '0' || cCharAt > '9') {
                        z = false;
                        break;
                    }
                }
                return (!z || strStringVal.length() <= 8 || strStringVal.length() >= 19) ? (T) java.time.LocalTime.parse(strStringVal) : (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(java.lang.Long.parseLong(strStringVal)), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toLocalTime();
            }
            if (type == java.time.ZonedDateTime.class) {
                if (dateTimeFormatterOfPattern == defaultFormatter) {
                    dateTimeFormatterOfPattern = ISO_FIXED_FORMAT;
                }
                if (dateTimeFormatterOfPattern == null && strStringVal.length() <= 19) {
                    com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strStringVal);
                    java.util.TimeZone timeZone = defaultJSONParser.lexer.getTimeZone();
                    jSONScanner.setTimeZone(timeZone);
                    if (jSONScanner.scanISO8601DateIfMatch(false)) {
                        return (T) java.time.ZonedDateTime.ofInstant(jSONScanner.getCalendar().getTime().toInstant(), timeZone.toZoneId());
                    }
                }
                return (T) parseZonedDateTime(strStringVal, dateTimeFormatterOfPattern);
            }
            if (type == java.time.OffsetDateTime.class) {
                return (T) java.time.OffsetDateTime.parse(strStringVal);
            }
            if (type == java.time.OffsetTime.class) {
                return (T) java.time.OffsetTime.parse(strStringVal);
            }
            if (type == java.time.ZoneId.class) {
                return (T) java.time.ZoneId.of(strStringVal);
            }
            if (type == java.time.Period.class) {
                return (T) java.time.Period.parse(strStringVal);
            }
            if (type == java.time.Duration.class) {
                return (T) java.time.Duration.parse(strStringVal);
            }
            if (type == java.time.Instant.class) {
                for (int i3 = 0; i3 < strStringVal.length(); i3++) {
                    char cCharAt2 = strStringVal.charAt(i3);
                    if (cCharAt2 < '0' || cCharAt2 > '9') {
                        z = false;
                        break;
                    }
                }
                return (!z || strStringVal.length() <= 8 || strStringVal.length() >= 19) ? (T) java.time.Instant.parse(strStringVal) : (T) java.time.Instant.ofEpochMilli(java.lang.Long.parseLong(strStringVal));
            }
        } else {
            if (jSONLexer.token() == 2) {
                long jLongValue = jSONLexer.longValue();
                jSONLexer.nextToken();
                if ("unixtime".equals(str)) {
                    jLongValue *= 1000;
                } else if ("yyyyMMddHHmmss".equals(str)) {
                    int i4 = (int) (jLongValue / 10000000000L);
                    int i5 = (int) ((jLongValue / 100000000) % 100);
                    int i6 = (int) ((jLongValue / 1000000) % 100);
                    int i7 = (int) ((jLongValue / 10000) % 100);
                    int i8 = (int) ((jLongValue / 100) % 100);
                    int i9 = (int) (jLongValue % 100);
                    if (type == java.time.LocalDateTime.class) {
                        return (T) java.time.LocalDateTime.of(i4, i5, i6, i7, i8, i9);
                    }
                }
                if (type == java.time.LocalDateTime.class) {
                    return (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId());
                }
                if (type == java.time.LocalDate.class) {
                    return (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toLocalDate();
                }
                if (type == java.time.LocalTime.class) {
                    return (T) java.time.LocalDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId()).toLocalTime();
                }
                if (type == java.time.ZonedDateTime.class) {
                    return (T) java.time.ZonedDateTime.ofInstant(java.time.Instant.ofEpochMilli(jLongValue), com.alibaba.fastjson.JSON.defaultTimeZone.toZoneId());
                }
                if (type == java.time.Instant.class) {
                    return (T) java.time.Instant.ofEpochMilli(jLongValue);
                }
                throw new java.lang.UnsupportedOperationException();
            }
            if (jSONLexer.token() != 12) {
                throw new java.lang.UnsupportedOperationException();
            }
            com.alibaba.fastjson.JSONObject object = defaultJSONParser.parseObject();
            if (type == java.time.Instant.class) {
                java.lang.Object obj2 = object.get("epochSecond");
                java.lang.Object obj3 = object.get("nano");
                boolean z2 = obj2 instanceof java.lang.Number;
                if (z2 && (obj3 instanceof java.lang.Number)) {
                    return (T) java.time.Instant.ofEpochSecond(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj2), com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj3));
                }
                if (z2) {
                    return (T) java.time.Instant.ofEpochSecond(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj2));
                }
            } else if (type == java.time.Duration.class && (l = object.getLong("seconds")) != null) {
                return (T) java.time.Duration.ofSeconds(l.longValue(), object.getLongValue("nano"));
            }
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.time.LocalDateTime parseDateTime(java.lang.String r17, java.time.format.DateTimeFormatter r18) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.parseDateTime(java.lang.String, java.time.format.DateTimeFormatter):java.time.LocalDateTime");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
    
        if (r14.equals("AU") == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.time.LocalDate parseLocalDate(java.lang.String r13, java.lang.String r14, java.time.format.DateTimeFormatter r15) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.parseLocalDate(java.lang.String, java.lang.String, java.time.format.DateTimeFormatter):java.time.LocalDate");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00f6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.time.ZonedDateTime parseZonedDateTime(java.lang.String r16, java.time.format.DateTimeFormatter r17) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.parseZonedDateTime(java.lang.String, java.time.format.DateTimeFormatter):java.time.ZonedDateTime");
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, com.alibaba.fastjson.serializer.BeanContext beanContext) {
        write(jSONSerializer.out, (java.time.temporal.TemporalAccessor) obj, beanContext.getFormat());
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0062  */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.time.ZonedDateTime] */
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r3, java.lang.Object r4, java.lang.Object r5, java.lang.reflect.Type r6, int r7) {
        /*
            r2 = this;
            com.alibaba.fastjson.serializer.SerializeWriter r5 = r3.out
            if (r4 != 0) goto L9
            r5.writeNull()
            goto L86
        L9:
            if (r6 != 0) goto Lf
            java.lang.Class r6 = r4.getClass()
        Lf:
            java.lang.Class<java.time.LocalDateTime> r0 = java.time.LocalDateTime.class
            if (r6 != r0) goto L7f
            com.alibaba.fastjson.serializer.SerializerFeature r6 = com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat
            int r6 = r6.getMask()
            java.time.LocalDateTime r4 = (java.time.LocalDateTime) r4
            java.lang.String r0 = r3.getDateFormatPattern()
            java.lang.String r1 = "yyyy-MM-dd'T'HH:mm:ss"
            if (r0 != 0) goto L63
            r6 = r6 & r7
            if (r6 != 0) goto L62
            com.alibaba.fastjson.serializer.SerializerFeature r6 = com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat
            boolean r6 = r3.isEnabled(r6)
            if (r6 == 0) goto L2f
            goto L62
        L2f:
            com.alibaba.fastjson.serializer.SerializerFeature r6 = com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat
            boolean r6 = r3.isEnabled(r6)
            if (r6 == 0) goto L4f
            java.lang.String r6 = r3.getFastJsonConfigDateFormatPattern()
            if (r6 == 0) goto L4c
            java.lang.String r6 = r3.getFastJsonConfigDateFormatPattern()
            int r6 = r6.length()
            if (r6 <= 0) goto L4c
            java.lang.String r0 = r3.getFastJsonConfigDateFormatPattern()
            goto L63
        L4c:
            java.lang.String r0 = com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT
            goto L63
        L4f:
            int r3 = r4.getNano()
            if (r3 != 0) goto L56
            goto L62
        L56:
            r6 = 1000000(0xf4240, float:1.401298E-39)
            int r3 = r3 % r6
            if (r3 != 0) goto L5f
            java.lang.String r0 = "yyyy-MM-dd'T'HH:mm:ss.SSS"
            goto L63
        L5f:
            java.lang.String r0 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS"
            goto L63
        L62:
            r0 = r1
        L63:
            if (r0 == 0) goto L69
            r2.write(r5, r4, r0)
            goto L86
        L69:
            java.util.TimeZone r3 = com.alibaba.fastjson.JSON.defaultTimeZone
            java.time.ZoneId r3 = r3.toZoneId()
            java.time.ZonedDateTime r3 = r4.atZone(r3)
            java.time.Instant r3 = r3.toInstant()
            long r3 = r3.toEpochMilli()
            r5.writeLong(r3)
            goto L86
        L7f:
            java.lang.String r3 = r4.toString()
            r5.writeString(r3)
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int):void");
    }
}
