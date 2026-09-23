package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class AwtCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.AwtCodec instance = new com.alibaba.fastjson.serializer.AwtCodec();

    private java.lang.Object parseRef(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj) {
        com.alibaba.fastjson.parser.JSONLexer lexer = defaultJSONParser.getLexer();
        lexer.nextTokenWithColon(4);
        java.lang.String strStringVal = lexer.stringVal();
        defaultJSONParser.setContext(defaultJSONParser.getContext(), obj);
        defaultJSONParser.addResolveTask(new com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask(defaultJSONParser.getContext(), strStringVal));
        defaultJSONParser.popContext();
        defaultJSONParser.setResolveStatus(1);
        lexer.nextToken(13);
        defaultJSONParser.accept(13);
        return null;
    }

    public static boolean support(java.lang.Class<?> cls) {
        return cls == java.awt.Point.class || cls == java.awt.Rectangle.class || cls == java.awt.Font.class || cls == java.awt.Color.class;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        T t;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        if (jSONLexer.token() != 12 && jSONLexer.token() != 16) {
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
        jSONLexer.nextToken();
        if (type == java.awt.Point.class) {
            t = (T) parsePoint(defaultJSONParser, obj);
        } else if (type == java.awt.Rectangle.class) {
            t = (T) parseRectangle(defaultJSONParser);
        } else if (type == java.awt.Color.class) {
            t = (T) parseColor(defaultJSONParser);
        } else {
            if (type != java.awt.Font.class) {
                throw new com.alibaba.fastjson.JSONException("not support awt class : " + type);
            }
            t = (T) parseFont(defaultJSONParser);
        }
        com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
        defaultJSONParser.setContext(t, obj);
        defaultJSONParser.setContext(context);
        return t;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public java.awt.Color parseColor(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextTokenWithColon(2);
            if (jSONLexer.token() != 2) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            int iIntValue = jSONLexer.intValue();
            jSONLexer.nextToken();
            if (strStringVal.equalsIgnoreCase(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT)) {
                i = iIntValue;
            } else if (strStringVal.equalsIgnoreCase("g")) {
                i2 = iIntValue;
            } else if (strStringVal.equalsIgnoreCase(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD)) {
                i3 = iIntValue;
            } else {
                if (!strStringVal.equalsIgnoreCase("alpha")) {
                    throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("syntax error, ", strStringVal));
                }
                i4 = iIntValue;
            }
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken(4);
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Color(i, i2, i3, i4);
    }

    public java.awt.Font parseFont(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int iIntValue = 0;
        java.lang.String strStringVal = null;
        int iIntValue2 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal2 = jSONLexer.stringVal();
            jSONLexer.nextTokenWithColon(2);
            if (strStringVal2.equalsIgnoreCase("name")) {
                if (jSONLexer.token() != 4) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                strStringVal = jSONLexer.stringVal();
            } else if (strStringVal2.equalsIgnoreCase("style")) {
                if (jSONLexer.token() != 2) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                iIntValue = jSONLexer.intValue();
            } else {
                if (!strStringVal2.equalsIgnoreCase("size")) {
                    throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("syntax error, ", strStringVal2));
                }
                if (jSONLexer.token() != 2) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                iIntValue2 = jSONLexer.intValue();
            }
            jSONLexer.nextToken();
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken(4);
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Font(strStringVal, iIntValue, iIntValue2);
    }

    public java.awt.Point parsePoint(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj) {
        int iFloatValue;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = 0;
        int i2 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            if (com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY.equals(strStringVal)) {
                defaultJSONParser.acceptType("java.awt.Point");
            } else {
                if ("$ref".equals(strStringVal)) {
                    return (java.awt.Point) parseRef(defaultJSONParser, obj);
                }
                jSONLexer.nextTokenWithColon(2);
                int i3 = jSONLexer.token();
                if (i3 == 2) {
                    iFloatValue = jSONLexer.intValue();
                } else {
                    if (i3 != 3) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("syntax error : ");
                        sbO.append(jSONLexer.tokenName());
                        throw new com.alibaba.fastjson.JSONException(sbO.toString());
                    }
                    iFloatValue = (int) jSONLexer.floatValue();
                }
                jSONLexer.nextToken();
                if (strStringVal.equalsIgnoreCase("x")) {
                    i = iFloatValue;
                } else {
                    if (!strStringVal.equalsIgnoreCase("y")) {
                        throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("syntax error, ", strStringVal));
                    }
                    i2 = iFloatValue;
                }
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken(4);
                }
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Point(i, i2);
    }

    public java.awt.Rectangle parseRectangle(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        int iFloatValue;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextTokenWithColon(2);
            int i5 = jSONLexer.token();
            if (i5 == 2) {
                iFloatValue = jSONLexer.intValue();
            } else {
                if (i5 != 3) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                iFloatValue = (int) jSONLexer.floatValue();
            }
            jSONLexer.nextToken();
            if (strStringVal.equalsIgnoreCase("x")) {
                i = iFloatValue;
            } else if (strStringVal.equalsIgnoreCase("y")) {
                i2 = iFloatValue;
            } else if (strStringVal.equalsIgnoreCase("width")) {
                i3 = iFloatValue;
            } else {
                if (!strStringVal.equalsIgnoreCase("height")) {
                    throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("syntax error, ", strStringVal));
                }
                i4 = iFloatValue;
            }
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken(4);
            }
        }
        jSONLexer.nextToken();
        return new java.awt.Rectangle(i, i2, i3, i4);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        int alpha;
        java.lang.String str;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if (obj instanceof java.awt.Point) {
            java.awt.Point point = (java.awt.Point) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Point.class, '{'), "x", point.x);
            serializeWriter.writeFieldValue(',', "y", point.y);
        } else {
            if (obj instanceof java.awt.Font) {
                java.awt.Font font = (java.awt.Font) obj;
                serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Font.class, '{'), "name", font.getName());
                serializeWriter.writeFieldValue(',', "style", font.getStyle());
                alpha = font.getSize();
                str = "size";
            } else if (obj instanceof java.awt.Rectangle) {
                java.awt.Rectangle rectangle = (java.awt.Rectangle) obj;
                serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Rectangle.class, '{'), "x", rectangle.x);
                serializeWriter.writeFieldValue(',', "y", rectangle.y);
                serializeWriter.writeFieldValue(',', "width", rectangle.width);
                alpha = rectangle.height;
                str = "height";
            } else {
                if (!(obj instanceof java.awt.Color)) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("not support awt class : ");
                    sbO.append(obj.getClass().getName());
                    throw new com.alibaba.fastjson.JSONException(sbO.toString());
                }
                java.awt.Color color = (java.awt.Color) obj;
                serializeWriter.writeFieldValue(writeClassName(serializeWriter, java.awt.Color.class, '{'), com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT, color.getRed());
                serializeWriter.writeFieldValue(',', "g", color.getGreen());
                serializeWriter.writeFieldValue(',', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.TAG_BOLD, color.getBlue());
                if (color.getAlpha() > 0) {
                    alpha = color.getAlpha();
                    str = "alpha";
                }
            }
            serializeWriter.writeFieldValue(',', str, alpha);
        }
        serializeWriter.write(125);
    }

    public char writeClassName(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, java.lang.Class<?> cls, char c2) {
        if (!serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            return c2;
        }
        serializeWriter.write(123);
        serializeWriter.writeFieldName(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY);
        serializeWriter.writeString(cls.getName());
        return ',';
    }
}
