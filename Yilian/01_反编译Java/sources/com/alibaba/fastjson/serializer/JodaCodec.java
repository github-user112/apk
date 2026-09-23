package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class JodaCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.serializer.ContextObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final java.lang.String defaultPatttern = "yyyy-MM-dd HH:mm:ss";
    public static final java.lang.String formatter_iso8601_pattern = "yyyy-MM-dd'T'HH:mm:ss";
    public static final java.lang.String formatter_iso8601_pattern_23 = "yyyy-MM-dd'T'HH:mm:ss.SSS";
    public static final java.lang.String formatter_iso8601_pattern_29 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
    public static final com.alibaba.fastjson.serializer.JodaCodec instance = new com.alibaba.fastjson.serializer.JodaCodec();
    public static final org.joda.time.format.DateTimeFormatter defaultFormatter = org.joda.time.format.DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter defaultFormatter_23 = org.joda.time.format.DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss.SSS");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_tw = org.joda.time.format.DateTimeFormat.forPattern("yyyy/MM/dd HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_cn = org.joda.time.format.DateTimeFormat.forPattern("yyyy年M月d日 HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_cn_1 = org.joda.time.format.DateTimeFormat.forPattern("yyyy年M月d日 H时m分s秒");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_kr = org.joda.time.format.DateTimeFormat.forPattern("yyyy년M월d일 HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_us = org.joda.time.format.DateTimeFormat.forPattern("MM/dd/yyyy HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_eur = org.joda.time.format.DateTimeFormat.forPattern("dd/MM/yyyy HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_de = org.joda.time.format.DateTimeFormat.forPattern("dd.MM.yyyy HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter formatter_dt19_in = org.joda.time.format.DateTimeFormat.forPattern("dd-MM-yyyy HH:mm:ss");
    public static final org.joda.time.format.DateTimeFormatter formatter_d8 = org.joda.time.format.DateTimeFormat.forPattern("yyyyMMdd");
    public static final org.joda.time.format.DateTimeFormatter formatter_d10_tw = org.joda.time.format.DateTimeFormat.forPattern("yyyy/MM/dd");
    public static final org.joda.time.format.DateTimeFormatter formatter_d10_cn = org.joda.time.format.DateTimeFormat.forPattern("yyyy年M月d日");
    public static final org.joda.time.format.DateTimeFormatter formatter_d10_kr = org.joda.time.format.DateTimeFormat.forPattern("yyyy년M월d일");
    public static final org.joda.time.format.DateTimeFormatter formatter_d10_us = org.joda.time.format.DateTimeFormat.forPattern("MM/dd/yyyy");
    public static final org.joda.time.format.DateTimeFormatter formatter_d10_eur = org.joda.time.format.DateTimeFormat.forPattern("dd/MM/yyyy");
    public static final org.joda.time.format.DateTimeFormatter formatter_d10_de = org.joda.time.format.DateTimeFormat.forPattern("dd.MM.yyyy");
    public static final org.joda.time.format.DateTimeFormatter formatter_d10_in = org.joda.time.format.DateTimeFormat.forPattern("dd-MM-yyyy");
    public static final org.joda.time.format.DateTimeFormatter ISO_FIXED_FORMAT = org.joda.time.format.DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss").withZone(org.joda.time.DateTimeZone.getDefault());
    public static final org.joda.time.format.DateTimeFormatter formatter_iso8601 = org.joda.time.format.DateTimeFormat.forPattern("yyyy-MM-dd'T'HH:mm:ss");

    private void write(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, org.joda.time.ReadablePartial readablePartial, java.lang.String str) {
        serializeWriter.writeString((str.equals("yyyy-MM-dd'T'HH:mm:ss") ? formatter_iso8601 : org.joda.time.format.DateTimeFormat.forPattern(str)).print(readablePartial));
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null, 0);
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [T, org.joda.time.LocalDateTime] */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken();
            org.joda.time.format.DateTimeFormatter dateTimeFormatterForPattern = str != null ? "yyyy-MM-dd HH:mm:ss".equals(str) ? defaultFormatter : org.joda.time.format.DateTimeFormat.forPattern(str) : null;
            if ("".equals(strStringVal)) {
                return null;
            }
            if (type == org.joda.time.LocalDateTime.class) {
                return (strStringVal.length() == 10 || strStringVal.length() == 8) ? (T) parseLocalDate(strStringVal, str, dateTimeFormatterForPattern).toLocalDateTime(org.joda.time.LocalTime.MIDNIGHT) : (T) parseDateTime(strStringVal, dateTimeFormatterForPattern);
            }
            if (type == org.joda.time.LocalDate.class) {
                return strStringVal.length() == 23 ? (T) org.joda.time.LocalDateTime.parse(strStringVal).toLocalDate() : (T) parseLocalDate(strStringVal, str, dateTimeFormatterForPattern);
            }
            if (type == org.joda.time.LocalTime.class) {
                return strStringVal.length() == 23 ? (T) org.joda.time.LocalDateTime.parse(strStringVal).toLocalTime() : (T) org.joda.time.LocalTime.parse(strStringVal);
            }
            if (type == org.joda.time.DateTime.class) {
                if (dateTimeFormatterForPattern == defaultFormatter) {
                    dateTimeFormatterForPattern = ISO_FIXED_FORMAT;
                }
                return (T) parseZonedDateTime(strStringVal, dateTimeFormatterForPattern);
            }
            if (type == org.joda.time.DateTimeZone.class) {
                return (T) org.joda.time.DateTimeZone.forID(strStringVal);
            }
            if (type == org.joda.time.Period.class) {
                return (T) org.joda.time.Period.parse(strStringVal);
            }
            if (type == org.joda.time.Duration.class) {
                return (T) org.joda.time.Duration.parse(strStringVal);
            }
            if (type == org.joda.time.Instant.class) {
                boolean z = false;
                int i2 = 0;
                while (true) {
                    if (i2 >= strStringVal.length()) {
                        z = true;
                        break;
                    }
                    char cCharAt = strStringVal.charAt(i2);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    i2++;
                }
                return (!z || strStringVal.length() <= 8 || strStringVal.length() >= 19) ? (T) org.joda.time.Instant.parse(strStringVal) : (T) new org.joda.time.Instant(java.lang.Long.parseLong(strStringVal));
            }
            if (type == org.joda.time.format.DateTimeFormatter.class) {
                return (T) org.joda.time.format.DateTimeFormat.forPattern(strStringVal);
            }
        } else {
            if (jSONLexer.token() == 2) {
                long jLongValue = jSONLexer.longValue();
                jSONLexer.nextToken();
                java.util.TimeZone timeZone = com.alibaba.fastjson.JSON.defaultTimeZone;
                if (timeZone == null) {
                    timeZone = java.util.TimeZone.getDefault();
                }
                if (type == org.joda.time.DateTime.class) {
                    return (T) new org.joda.time.DateTime(jLongValue, org.joda.time.DateTimeZone.forTimeZone(timeZone));
                }
                ?? r6 = (T) new org.joda.time.LocalDateTime(jLongValue, org.joda.time.DateTimeZone.forTimeZone(timeZone));
                if (type == org.joda.time.LocalDateTime.class) {
                    return r6;
                }
                if (type == org.joda.time.LocalDate.class) {
                    return (T) r6.toLocalDate();
                }
                if (type == org.joda.time.LocalTime.class) {
                    return (T) r6.toLocalTime();
                }
                if (type == org.joda.time.Instant.class) {
                    return (T) new org.joda.time.Instant(jLongValue);
                }
                throw new java.lang.UnsupportedOperationException();
            }
            if (jSONLexer.token() != 12) {
                throw new java.lang.UnsupportedOperationException();
            }
            com.alibaba.fastjson.JSONObject object = defaultJSONParser.parseObject();
            if (type == org.joda.time.Instant.class) {
                java.lang.Object obj2 = object.get("epochSecond");
                if (obj2 instanceof java.lang.Number) {
                    return (T) org.joda.time.Instant.ofEpochSecond(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj2));
                }
                java.lang.Object obj3 = object.get("millis");
                if (obj3 instanceof java.lang.Number) {
                    return (T) org.joda.time.Instant.ofEpochMilli(com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj3));
                }
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
    /* JADX WARN: Removed duplicated region for block: B:67:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0126 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.joda.time.LocalDateTime parseDateTime(java.lang.String r17, org.joda.time.format.DateTimeFormatter r18) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JodaCodec.parseDateTime(java.lang.String, org.joda.time.format.DateTimeFormatter):org.joda.time.LocalDateTime");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x007b, code lost:
    
        if (r14.equals("AU") == false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.joda.time.LocalDate parseLocalDate(java.lang.String r13, java.lang.String r14, org.joda.time.format.DateTimeFormatter r15) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JodaCodec.parseLocalDate(java.lang.String, java.lang.String, org.joda.time.format.DateTimeFormatter):org.joda.time.LocalDate");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.joda.time.DateTime parseZonedDateTime(java.lang.String r12, org.joda.time.format.DateTimeFormatter r13) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JodaCodec.parseZonedDateTime(java.lang.String, org.joda.time.format.DateTimeFormatter):org.joda.time.DateTime");
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, com.alibaba.fastjson.serializer.BeanContext beanContext) {
        write(jSONSerializer.out, (org.joda.time.ReadablePartial) obj, beanContext.getFormat());
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if (type == null) {
            type = obj.getClass();
        }
        if (type != org.joda.time.LocalDateTime.class) {
            serializeWriter.writeString(obj.toString());
            return;
        }
        int mask = com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat.getMask();
        org.joda.time.LocalDateTime localDateTime = (org.joda.time.LocalDateTime) obj;
        java.lang.String dateFormatPattern = jSONSerializer.getDateFormatPattern();
        if (dateFormatPattern == null) {
            dateFormatPattern = ((mask & i) != 0 || jSONSerializer.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat)) ? "yyyy-MM-dd'T'HH:mm:ss" : jSONSerializer.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat) ? com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT : localDateTime.getMillisOfSecond() == 0 ? "yyyy-MM-dd'T'HH:mm:ss.SSS" : "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
        }
        if (dateFormatPattern != null) {
            write(serializeWriter, (org.joda.time.ReadablePartial) localDateTime, dateFormatPattern);
        } else {
            serializeWriter.writeLong(localDateTime.toDateTime(org.joda.time.DateTimeZone.forTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone)).toInstant().getMillis());
        }
    }
}
