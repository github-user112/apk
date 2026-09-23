package com.google.android.exoplayer2.text.webvtt;

/* loaded from: classes.dex */
public final class WebvttCssParser {
    public static final java.lang.String PROPERTY_BGCOLOR = "background-color";
    public static final java.lang.String PROPERTY_COLOR = "color";
    public static final java.lang.String PROPERTY_FONT_FAMILY = "font-family";
    public static final java.lang.String PROPERTY_FONT_SIZE = "font-size";
    public static final java.lang.String PROPERTY_FONT_STYLE = "font-style";
    public static final java.lang.String PROPERTY_FONT_WEIGHT = "font-weight";
    public static final java.lang.String PROPERTY_RUBY_POSITION = "ruby-position";
    public static final java.lang.String PROPERTY_TEXT_COMBINE_UPRIGHT = "text-combine-upright";
    public static final java.lang.String PROPERTY_TEXT_DECORATION = "text-decoration";
    public static final java.lang.String RULE_END = "}";
    public static final java.lang.String RULE_START = "{";
    public static final java.lang.String TAG = "WebvttCssParser";
    public static final java.lang.String VALUE_ALL = "all";
    public static final java.lang.String VALUE_BOLD = "bold";
    public static final java.lang.String VALUE_DIGITS = "digits";
    public static final java.lang.String VALUE_ITALIC = "italic";
    public static final java.lang.String VALUE_OVER = "over";
    public static final java.lang.String VALUE_UNDER = "under";
    public static final java.lang.String VALUE_UNDERLINE = "underline";
    public static final java.util.regex.Pattern VOICE_NAME_PATTERN = java.util.regex.Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    public static final java.util.regex.Pattern FONT_SIZE_PATTERN = java.util.regex.Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    public final com.google.android.exoplayer2.util.ParsableByteArray styleInput = new com.google.android.exoplayer2.util.ParsableByteArray();
    public final java.lang.StringBuilder stringBuilder = new java.lang.StringBuilder();

    private void applySelectorToStyle(com.google.android.exoplayer2.text.webvtt.WebvttCssStyle webvttCssStyle, java.lang.String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            java.util.regex.Matcher matcher = VOICE_NAME_PATTERN.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                webvttCssStyle.setTargetVoice((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        java.lang.String[] strArrSplit = com.google.android.exoplayer2.util.Util.split(str, "\\.");
        java.lang.String str2 = strArrSplit[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            webvttCssStyle.setTargetTagName(str2.substring(0, iIndexOf2));
            webvttCssStyle.setTargetId(str2.substring(iIndexOf2 + 1));
        } else {
            webvttCssStyle.setTargetTagName(str2);
        }
        if (strArrSplit.length > 1) {
            webvttCssStyle.setTargetClasses((java.lang.String[]) com.google.android.exoplayer2.util.Util.nullSafeArrayCopyOfRange(strArrSplit, 1, strArrSplit.length));
        }
    }

    public static boolean maybeSkipComment(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        if (position + 2 > iLimit) {
            return false;
        }
        int i = position + 1;
        if (data[position] != 47) {
            return false;
        }
        int i2 = i + 1;
        if (data[i] != 42) {
            return false;
        }
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iLimit) {
                parsableByteArray.skipBytes(iLimit - parsableByteArray.getPosition());
                return true;
            }
            if (((char) data[i2]) == '*' && ((char) data[i3]) == '/') {
                i2 = i3 + 1;
                iLimit = i2;
            } else {
                i2 = i3;
            }
        }
    }

    public static boolean maybeSkipWhitespace(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        char cPeekCharAtPosition = peekCharAtPosition(parsableByteArray, parsableByteArray.getPosition());
        if (cPeekCharAtPosition != '\t' && cPeekCharAtPosition != '\n' && cPeekCharAtPosition != '\f' && cPeekCharAtPosition != '\r' && cPeekCharAtPosition != ' ') {
            return false;
        }
        parsableByteArray.skipBytes(1);
        return true;
    }

    public static void parseFontSize(java.lang.String str, com.google.android.exoplayer2.text.webvtt.WebvttCssStyle webvttCssStyle) {
        java.util.regex.Matcher matcher = FONT_SIZE_PATTERN.matcher(d.s.y.b0(str));
        if (!matcher.matches()) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(str.length() + 22);
            sb.append("Invalid font-size: '");
            sb.append(str);
            sb.append("'.");
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            return;
        }
        int i = 2;
        java.lang.String str2 = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(2));
        char c2 = 65535;
        int iHashCode = str2.hashCode();
        if (iHashCode != 37) {
            if (iHashCode != 3240) {
                if (iHashCode == 3592 && str2.equals("px")) {
                    c2 = 0;
                }
            } else if (str2.equals("em")) {
                c2 = 1;
            }
        } else if (str2.equals("%")) {
            c2 = 2;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 != 2) {
                    throw new java.lang.IllegalStateException();
                }
                i = 3;
            }
            webvttCssStyle.setFontSizeUnit(i);
        } else {
            webvttCssStyle.setFontSizeUnit(1);
        }
        webvttCssStyle.setFontSize(java.lang.Float.parseFloat((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1))));
    }

    public static java.lang.String parseIdentifier(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, java.lang.StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        while (position < iLimit && !z) {
            char c2 = (char) parsableByteArray.getData()[position];
            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                z = true;
            } else {
                position++;
                sb.append(c2);
            }
        }
        parsableByteArray.skipBytes(position - parsableByteArray.getPosition());
        return sb.toString();
    }

    public static java.lang.String parseNextToken(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, java.lang.StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        if (parsableByteArray.bytesLeft() == 0) {
            return null;
        }
        java.lang.String identifier = parseIdentifier(parsableByteArray, sb);
        if (!"".equals(identifier)) {
            return identifier;
        }
        char unsignedByte = (char) parsableByteArray.readUnsignedByte();
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder(1);
        sb2.append(unsignedByte);
        return sb2.toString();
    }

    public static java.lang.String parsePropertyValue(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, java.lang.StringBuilder sb) {
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        boolean z = false;
        while (!z) {
            int position = parsableByteArray.getPosition();
            java.lang.String nextToken = parseNextToken(parsableByteArray, sb);
            if (nextToken == null) {
                return null;
            }
            if (RULE_END.equals(nextToken) || ";".equals(nextToken)) {
                parsableByteArray.setPosition(position);
                z = true;
            } else {
                sb2.append(nextToken);
            }
        }
        return sb2.toString();
    }

    public static java.lang.String parseSelector(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, java.lang.StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        if (parsableByteArray.bytesLeft() < 5 || !"::cue".equals(parsableByteArray.readString(5))) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        java.lang.String nextToken = parseNextToken(parsableByteArray, sb);
        if (nextToken == null) {
            return null;
        }
        if (RULE_START.equals(nextToken)) {
            parsableByteArray.setPosition(position);
            return "";
        }
        java.lang.String cueTarget = "(".equals(nextToken) ? readCueTarget(parsableByteArray) : null;
        if (")".equals(parseNextToken(parsableByteArray, sb))) {
            return cueTarget;
        }
        return null;
    }

    public static void parseStyleDeclaration(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.text.webvtt.WebvttCssStyle webvttCssStyle, java.lang.StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        java.lang.String identifier = parseIdentifier(parsableByteArray, sb);
        if (!"".equals(identifier) && ":".equals(parseNextToken(parsableByteArray, sb))) {
            skipWhitespaceAndComments(parsableByteArray);
            java.lang.String propertyValue = parsePropertyValue(parsableByteArray, sb);
            if (propertyValue == null || "".equals(propertyValue)) {
                return;
            }
            int position = parsableByteArray.getPosition();
            java.lang.String nextToken = parseNextToken(parsableByteArray, sb);
            if (!";".equals(nextToken)) {
                if (!RULE_END.equals(nextToken)) {
                    return;
                } else {
                    parsableByteArray.setPosition(position);
                }
            }
            if ("color".equals(identifier)) {
                webvttCssStyle.setFontColor(com.google.android.exoplayer2.util.ColorParser.parseCssColor(propertyValue));
                return;
            }
            if (PROPERTY_BGCOLOR.equals(identifier)) {
                webvttCssStyle.setBackgroundColor(com.google.android.exoplayer2.util.ColorParser.parseCssColor(propertyValue));
                return;
            }
            boolean z = true;
            if (PROPERTY_RUBY_POSITION.equals(identifier)) {
                if (VALUE_OVER.equals(propertyValue)) {
                    webvttCssStyle.setRubyPosition(1);
                    return;
                } else {
                    if (VALUE_UNDER.equals(propertyValue)) {
                        webvttCssStyle.setRubyPosition(2);
                        return;
                    }
                    return;
                }
            }
            if (PROPERTY_TEXT_COMBINE_UPRIGHT.equals(identifier)) {
                if (!"all".equals(propertyValue) && !propertyValue.startsWith(VALUE_DIGITS)) {
                    z = false;
                }
                webvttCssStyle.setCombineUpright(z);
                return;
            }
            if (PROPERTY_TEXT_DECORATION.equals(identifier)) {
                if ("underline".equals(propertyValue)) {
                    webvttCssStyle.setUnderline(true);
                    return;
                }
                return;
            }
            if (PROPERTY_FONT_FAMILY.equals(identifier)) {
                webvttCssStyle.setFontFamily(propertyValue);
                return;
            }
            if (PROPERTY_FONT_WEIGHT.equals(identifier)) {
                if ("bold".equals(propertyValue)) {
                    webvttCssStyle.setBold(true);
                }
            } else if (PROPERTY_FONT_STYLE.equals(identifier)) {
                if ("italic".equals(propertyValue)) {
                    webvttCssStyle.setItalic(true);
                }
            } else if (PROPERTY_FONT_SIZE.equals(identifier)) {
                parseFontSize(propertyValue, webvttCssStyle);
            }
        }
    }

    public static char peekCharAtPosition(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        return (char) parsableByteArray.getData()[i];
    }

    public static java.lang.String readCueTarget(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        boolean z = false;
        while (position < iLimit && !z) {
            int i = position + 1;
            z = ((char) parsableByteArray.getData()[position]) == ')';
            position = i;
        }
        return parsableByteArray.readString((position - 1) - parsableByteArray.getPosition()).trim();
    }

    public static void skipStyleBlock(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        while (!android.text.TextUtils.isEmpty(parsableByteArray.readLine())) {
        }
    }

    public static void skipWhitespaceAndComments(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        while (true) {
            for (boolean z = true; parsableByteArray.bytesLeft() > 0 && z; z = false) {
                if (maybeSkipWhitespace(parsableByteArray) || maybeSkipComment(parsableByteArray)) {
                    break;
                }
            }
            return;
        }
    }

    public java.util.List<com.google.android.exoplayer2.text.webvtt.WebvttCssStyle> parseBlock(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        this.stringBuilder.setLength(0);
        int position = parsableByteArray.getPosition();
        skipStyleBlock(parsableByteArray);
        this.styleInput.reset(parsableByteArray.getData(), parsableByteArray.getPosition());
        this.styleInput.setPosition(position);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (true) {
            java.lang.String selector = parseSelector(this.styleInput, this.stringBuilder);
            if (selector == null || !RULE_START.equals(parseNextToken(this.styleInput, this.stringBuilder))) {
                return arrayList;
            }
            com.google.android.exoplayer2.text.webvtt.WebvttCssStyle webvttCssStyle = new com.google.android.exoplayer2.text.webvtt.WebvttCssStyle();
            applySelectorToStyle(webvttCssStyle, selector);
            java.lang.String str = null;
            boolean z = false;
            while (!z) {
                int position2 = this.styleInput.getPosition();
                java.lang.String nextToken = parseNextToken(this.styleInput, this.stringBuilder);
                boolean z2 = nextToken == null || RULE_END.equals(nextToken);
                if (!z2) {
                    this.styleInput.setPosition(position2);
                    parseStyleDeclaration(this.styleInput, webvttCssStyle, this.stringBuilder);
                }
                str = nextToken;
                z = z2;
            }
            if (RULE_END.equals(str)) {
                arrayList.add(webvttCssStyle);
            }
        }
    }
}
