package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class CalendarCodec extends com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer, com.alibaba.fastjson.serializer.ContextObjectSerializer {
    public static final com.alibaba.fastjson.serializer.CalendarCodec instance = new com.alibaba.fastjson.serializer.CalendarCodec();
    public javax.xml.datatype.DatatypeFactory dateFactory;

    public javax.xml.datatype.XMLGregorianCalendar createXMLGregorianCalendar(java.util.Calendar calendar) {
        if (this.dateFactory == null) {
            try {
                this.dateFactory = javax.xml.datatype.DatatypeFactory.newInstance();
            } catch (javax.xml.datatype.DatatypeConfigurationException e2) {
                throw new java.lang.IllegalStateException("Could not obtain an instance of DatatypeFactory.", e2);
            }
        }
        return this.dateFactory.newXMLGregorianCalendar((java.util.GregorianCalendar) calendar);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [T, java.util.Calendar] */
    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i) {
        T t = (T) com.alibaba.fastjson.serializer.DateCodec.instance.deserialze(defaultJSONParser, type, obj, str, i);
        if (t instanceof java.util.Calendar) {
            return t;
        }
        java.util.Date date = (java.util.Date) t;
        if (date == null) {
            return null;
        }
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        ?? r7 = (T) java.util.Calendar.getInstance(jSONLexer.getTimeZone(), jSONLexer.getLocale());
        r7.setTime(date);
        return type == javax.xml.datatype.XMLGregorianCalendar.class ? (T) createXMLGregorianCalendar((java.util.GregorianCalendar) r7) : r7;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, com.alibaba.fastjson.serializer.BeanContext beanContext) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.String format = beanContext.getFormat();
        java.util.Calendar calendar = (java.util.Calendar) obj;
        if (format.equals("unixtime")) {
            serializeWriter.writeInt((int) (calendar.getTimeInMillis() / 1000));
            return;
        }
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(format);
        simpleDateFormat.setTimeZone(jSONSerializer.timeZone);
        serializeWriter.writeString(simpleDateFormat.format(calendar.getTime()));
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.io.IOException {
        char[] charArray;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        java.util.Calendar gregorianCalendar = obj instanceof javax.xml.datatype.XMLGregorianCalendar ? ((javax.xml.datatype.XMLGregorianCalendar) obj).toGregorianCalendar() : (java.util.Calendar) obj;
        if (!serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat)) {
            jSONSerializer.write(gregorianCalendar.getTime());
            return;
        }
        char c2 = serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes) ? '\'' : '\"';
        serializeWriter.append(c2);
        int i2 = gregorianCalendar.get(1);
        int i3 = gregorianCalendar.get(2) + 1;
        int i4 = gregorianCalendar.get(5);
        int i5 = gregorianCalendar.get(11);
        int i6 = gregorianCalendar.get(12);
        int i7 = gregorianCalendar.get(13);
        int i8 = gregorianCalendar.get(14);
        if (i8 != 0) {
            charArray = "0000-00-00T00:00:00.000".toCharArray();
            com.alibaba.fastjson.util.IOUtils.getChars(i8, 23, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i7, 19, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i6, 16, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i5, 13, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i4, 10, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i3, 7, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i2, 4, charArray);
        } else if (i7 == 0 && i6 == 0 && i5 == 0) {
            charArray = "0000-00-00".toCharArray();
            com.alibaba.fastjson.util.IOUtils.getChars(i4, 10, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i3, 7, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i2, 4, charArray);
        } else {
            charArray = "0000-00-00T00:00:00".toCharArray();
            com.alibaba.fastjson.util.IOUtils.getChars(i7, 19, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i6, 16, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i5, 13, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i4, 10, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i3, 7, charArray);
            com.alibaba.fastjson.util.IOUtils.getChars(i2, 4, charArray);
        }
        serializeWriter.write(charArray);
        float offset = gregorianCalendar.getTimeZone().getOffset(gregorianCalendar.getTimeInMillis()) / 3600000.0f;
        int i9 = (int) offset;
        if (i9 == 0.0d) {
            serializeWriter.write(90);
        } else {
            if (i9 > 9) {
                serializeWriter.write(43);
            } else if (i9 > 0) {
                serializeWriter.write(43);
                serializeWriter.write(48);
            } else if (i9 < -9) {
                serializeWriter.write(45);
            } else {
                if (i9 < 0) {
                    serializeWriter.write(45);
                    serializeWriter.write(48);
                    serializeWriter.writeInt(-i9);
                }
                serializeWriter.write(58);
                serializeWriter.append((java.lang.CharSequence) java.lang.String.format("%02d", java.lang.Integer.valueOf((int) ((offset - i9) * 60.0f))));
            }
            serializeWriter.writeInt(i9);
            serializeWriter.write(58);
            serializeWriter.append((java.lang.CharSequence) java.lang.String.format("%02d", java.lang.Integer.valueOf((int) ((offset - i9) * 60.0f))));
        }
        serializeWriter.append(c2);
    }
}
