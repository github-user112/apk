package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class JSONPath implements com.alibaba.fastjson.JSONAware {
    public static final long LENGTH = -1580386065683472715L;
    public static final long SIZE = 5614464919154503228L;
    public static java.util.concurrent.ConcurrentMap<java.lang.String, com.alibaba.fastjson.JSONPath> pathCache = new java.util.concurrent.ConcurrentHashMap(128, 0.75f, 1);
    public boolean hasRefSegment;
    public boolean ignoreNullValue;
    public com.alibaba.fastjson.parser.ParserConfig parserConfig;
    public final java.lang.String path;
    public com.alibaba.fastjson.JSONPath.Segment[] segments;
    public com.alibaba.fastjson.serializer.SerializeConfig serializeConfig;

    /* renamed from: com.alibaba.fastjson.JSONPath$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$JSONPath$Operator;

        static {
            int[] iArr = new int[com.alibaba.fastjson.JSONPath.Operator.values().length];
            $SwitchMap$com$alibaba$fastjson$JSONPath$Operator = iArr;
            try {
                com.alibaba.fastjson.JSONPath.Operator operator = com.alibaba.fastjson.JSONPath.Operator.EQ;
                iArr[0] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$alibaba$fastjson$JSONPath$Operator;
                com.alibaba.fastjson.JSONPath.Operator operator2 = com.alibaba.fastjson.JSONPath.Operator.NE;
                iArr2[1] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$alibaba$fastjson$JSONPath$Operator;
                com.alibaba.fastjson.JSONPath.Operator operator3 = com.alibaba.fastjson.JSONPath.Operator.GE;
                iArr3[3] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$alibaba$fastjson$JSONPath$Operator;
                com.alibaba.fastjson.JSONPath.Operator operator4 = com.alibaba.fastjson.JSONPath.Operator.GT;
                iArr4[2] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$alibaba$fastjson$JSONPath$Operator;
                com.alibaba.fastjson.JSONPath.Operator operator5 = com.alibaba.fastjson.JSONPath.Operator.LE;
                iArr5[5] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$alibaba$fastjson$JSONPath$Operator;
                com.alibaba.fastjson.JSONPath.Operator operator6 = com.alibaba.fastjson.JSONPath.Operator.LT;
                iArr6[4] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
        }
    }

    public static class ArrayAccessSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public final int index;

        public ArrayAccessSegment(int i) {
            this.index = i;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return jSONPath.getArrayItem(obj2, this.index);
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            if (((com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.lexer).seekArrayToItem(this.index) && context.eval) {
                context.object = defaultJSONParser.parse();
            }
        }

        public boolean remove(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj) {
            return jSONPath.removeArrayItem(jSONPath, obj, this.index);
        }

        public boolean setValue(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return jSONPath.setArrayItem(jSONPath, obj, this.index, obj2);
        }
    }

    public static class Context {
        public final boolean eval;
        public java.lang.Object object;
        public final com.alibaba.fastjson.JSONPath.Context parent;

        public Context(com.alibaba.fastjson.JSONPath.Context context, boolean z) {
            this.parent = context;
            this.eval = z;
        }
    }

    public static class DoubleOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final com.alibaba.fastjson.JSONPath.Operator op;
        public final double value;

        public DoubleOpSegement(java.lang.String str, boolean z, double d2, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z);
            this.value = d2;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null || !(obj4 instanceof java.lang.Number)) {
                return false;
            }
            double dDoubleValue = ((java.lang.Number) obj4).doubleValue();
            int iOrdinal = this.op.ordinal();
            return iOrdinal != 0 ? iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? iOrdinal == 5 && dDoubleValue <= this.value : dDoubleValue < this.value : dDoubleValue >= this.value : dDoubleValue > this.value : dDoubleValue != this.value : dDoubleValue == this.value;
        }
    }

    public interface Filter {
        boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3);
    }

    public static class FilterGroup implements com.alibaba.fastjson.JSONPath.Filter {
        public boolean and;
        public java.util.List<com.alibaba.fastjson.JSONPath.Filter> fitlers;

        public FilterGroup(com.alibaba.fastjson.JSONPath.Filter filter, com.alibaba.fastjson.JSONPath.Filter filter2, boolean z) {
            java.util.ArrayList arrayList = new java.util.ArrayList(2);
            this.fitlers = arrayList;
            arrayList.add(filter);
            this.fitlers.add(filter2);
            this.and = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            if (this.and) {
                java.util.Iterator<com.alibaba.fastjson.JSONPath.Filter> it = this.fitlers.iterator();
                while (it.hasNext()) {
                    if (!it.next().apply(jSONPath, obj, obj2, obj3)) {
                        return false;
                    }
                }
                return true;
            }
            java.util.Iterator<com.alibaba.fastjson.JSONPath.Filter> it2 = this.fitlers.iterator();
            while (it2.hasNext()) {
                if (it2.next().apply(jSONPath, obj, obj2, obj3)) {
                    return true;
                }
            }
            return false;
        }
    }

    public static class FilterSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public final com.alibaba.fastjson.JSONPath.Filter filter;

        public FilterSegment(com.alibaba.fastjson.JSONPath.Filter filter) {
            this.filter = filter;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (obj2 == null) {
                return null;
            }
            com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
            if (!(obj2 instanceof java.lang.Iterable)) {
                if (this.filter.apply(jSONPath, obj, obj2, obj2)) {
                    return obj2;
                }
                return null;
            }
            for (java.lang.Object obj3 : (java.lang.Iterable) obj2) {
                if (this.filter.apply(jSONPath, obj, obj2, obj3)) {
                    jSONArray.add(obj3);
                }
            }
            return jSONArray;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            java.lang.Object obj = defaultJSONParser.parse();
            context.object = eval(jSONPath, obj, obj);
        }

        public boolean remove(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (obj2 == null || !(obj2 instanceof java.lang.Iterable)) {
                return false;
            }
            java.util.Iterator it = ((java.lang.Iterable) obj2).iterator();
            while (it.hasNext()) {
                if (this.filter.apply(jSONPath, obj, obj2, it.next())) {
                    it.remove();
                }
            }
            return true;
        }
    }

    public static class FloorSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.FloorSegment instance = new com.alibaba.fastjson.JSONPath.FloorSegment();

        public static java.lang.Object floor(java.lang.Object obj) {
            if (obj == null) {
                return null;
            }
            if (obj instanceof java.lang.Float) {
                return java.lang.Double.valueOf(java.lang.Math.floor(((java.lang.Float) obj).floatValue()));
            }
            if (obj instanceof java.lang.Double) {
                return java.lang.Double.valueOf(java.lang.Math.floor(((java.lang.Double) obj).doubleValue()));
            }
            if (obj instanceof java.math.BigDecimal) {
                return ((java.math.BigDecimal) obj).setScale(0, java.math.RoundingMode.FLOOR);
            }
            if ((obj instanceof java.lang.Byte) || (obj instanceof java.lang.Short) || (obj instanceof java.lang.Integer) || (obj instanceof java.lang.Long) || (obj instanceof java.math.BigInteger)) {
                return obj;
            }
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!(obj2 instanceof com.alibaba.fastjson.JSONArray)) {
                return floor(obj2);
            }
            com.alibaba.fastjson.JSONArray jSONArray = (com.alibaba.fastjson.JSONArray) ((com.alibaba.fastjson.JSONArray) obj2).clone();
            for (int i = 0; i < jSONArray.size(); i++) {
                java.lang.Object obj3 = jSONArray.get(i);
                java.lang.Object objFloor = floor(obj3);
                if (objFloor != obj3) {
                    jSONArray.set(i, objFloor);
                }
            }
            return jSONArray;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class IntBetweenSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final long endValue;
        public final boolean not;
        public final long startValue;

        public IntBetweenSegement(java.lang.String str, boolean z, long j, long j2, boolean z2) {
            super(str, z);
            this.startValue = j;
            this.endValue = j2;
            this.not = z2;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            if (obj4 instanceof java.lang.Number) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                if (jLongExtractValue >= this.startValue && jLongExtractValue <= this.endValue) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    public static class IntInSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final boolean not;
        public final long[] values;

        public IntInSegement(java.lang.String str, boolean z, long[] jArr, boolean z2) {
            super(str, z);
            this.values = jArr;
            this.not = z2;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            if (obj4 instanceof java.lang.Number) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                for (long j : this.values) {
                    if (j == jLongExtractValue) {
                        return !this.not;
                    }
                }
            }
            return this.not;
        }
    }

    public static class IntObjInSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final boolean not;
        public final java.lang.Long[] values;

        public IntObjInSegement(java.lang.String str, boolean z, java.lang.Long[] lArr, boolean z2) {
            super(str, z);
            this.values = lArr;
            this.not = z2;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            int i = 0;
            if (obj4 == null) {
                java.lang.Long[] lArr = this.values;
                int length = lArr.length;
                while (i < length) {
                    if (lArr[i] == null) {
                        return !this.not;
                    }
                    i++;
                }
                return this.not;
            }
            if (obj4 instanceof java.lang.Number) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                java.lang.Long[] lArr2 = this.values;
                int length2 = lArr2.length;
                while (i < length2) {
                    java.lang.Long l = lArr2[i];
                    if (l != null && l.longValue() == jLongExtractValue) {
                        return !this.not;
                    }
                    i++;
                }
            }
            return this.not;
        }
    }

    public static class IntOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final com.alibaba.fastjson.JSONPath.Operator op;
        public final long value;
        public java.math.BigDecimal valueDecimal;
        public java.lang.Double valueDouble;
        public java.lang.Float valueFloat;

        public IntOpSegement(java.lang.String str, boolean z, long j, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z);
            this.value = j;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null || !(obj4 instanceof java.lang.Number)) {
                return false;
            }
            if (obj4 instanceof java.math.BigDecimal) {
                if (this.valueDecimal == null) {
                    this.valueDecimal = java.math.BigDecimal.valueOf(this.value);
                }
                int iCompareTo = this.valueDecimal.compareTo((java.math.BigDecimal) obj4);
                int iOrdinal = this.op.ordinal();
                return iOrdinal != 0 ? iOrdinal != 1 ? iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? iOrdinal == 5 && iCompareTo >= 0 : iCompareTo > 0 : iCompareTo <= 0 : iCompareTo < 0 : iCompareTo != 0 : iCompareTo == 0;
            }
            if (obj4 instanceof java.lang.Float) {
                if (this.valueFloat == null) {
                    this.valueFloat = java.lang.Float.valueOf(this.value);
                }
                int iCompareTo2 = this.valueFloat.compareTo((java.lang.Float) obj4);
                int iOrdinal2 = this.op.ordinal();
                return iOrdinal2 != 0 ? iOrdinal2 != 1 ? iOrdinal2 != 2 ? iOrdinal2 != 3 ? iOrdinal2 != 4 ? iOrdinal2 == 5 && iCompareTo2 >= 0 : iCompareTo2 > 0 : iCompareTo2 <= 0 : iCompareTo2 < 0 : iCompareTo2 != 0 : iCompareTo2 == 0;
            }
            if (!(obj4 instanceof java.lang.Double)) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                int iOrdinal3 = this.op.ordinal();
                return iOrdinal3 != 0 ? iOrdinal3 != 1 ? iOrdinal3 != 2 ? iOrdinal3 != 3 ? iOrdinal3 != 4 ? iOrdinal3 == 5 && jLongExtractValue <= this.value : jLongExtractValue < this.value : jLongExtractValue >= this.value : jLongExtractValue > this.value : jLongExtractValue != this.value : jLongExtractValue == this.value;
            }
            if (this.valueDouble == null) {
                this.valueDouble = java.lang.Double.valueOf(this.value);
            }
            int iCompareTo3 = this.valueDouble.compareTo((java.lang.Double) obj4);
            int iOrdinal4 = this.op.ordinal();
            return iOrdinal4 != 0 ? iOrdinal4 != 1 ? iOrdinal4 != 2 ? iOrdinal4 != 3 ? iOrdinal4 != 4 ? iOrdinal4 == 5 && iCompareTo3 >= 0 : iCompareTo3 > 0 : iCompareTo3 <= 0 : iCompareTo3 < 0 : iCompareTo3 != 0 : iCompareTo3 == 0;
        }
    }

    public static class JSONPathParser {
        public char ch;
        public boolean hasRefSegment;
        public int level;
        public final java.lang.String path;
        public int pos;
        public static final java.lang.String strArrayRegex = "'\\s*,\\s*'";
        public static final java.util.regex.Pattern strArrayPatternx = java.util.regex.Pattern.compile(strArrayRegex);

        public JSONPathParser(java.lang.String str) {
            this.path = str;
            next();
        }

        public static boolean isDigitFirst(char c2) {
            return c2 == '-' || c2 == '+' || (c2 >= '0' && c2 <= '9');
        }

        public void accept(char c2) {
            if (this.ch == ' ') {
                next();
            }
            if (this.ch == c2) {
                if (isEOF()) {
                    return;
                }
                next();
            } else {
                throw new com.alibaba.fastjson.JSONPathException("expect '" + c2 + ", but '" + this.ch + "'");
            }
        }

        public com.alibaba.fastjson.JSONPath.Segment buildArraySegement(java.lang.String str) {
            int length = str.length();
            char cCharAt = str.charAt(0);
            int i = length - 1;
            char cCharAt2 = str.charAt(i);
            int iIndexOf = str.indexOf(44);
            if (str.length() > 2 && cCharAt == '\'' && cCharAt2 == '\'') {
                java.lang.String strSubstring = str.substring(1, i);
                return (iIndexOf == -1 || !strArrayPatternx.matcher(str).find()) ? new com.alibaba.fastjson.JSONPath.PropertySegment(strSubstring, false) : new com.alibaba.fastjson.JSONPath.MultiPropertySegment(strSubstring.split(strArrayRegex));
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf == -1 && iIndexOf2 == -1) {
                if (com.alibaba.fastjson.util.TypeUtils.isNumber(str)) {
                    try {
                        return new com.alibaba.fastjson.JSONPath.ArrayAccessSegment(java.lang.Integer.parseInt(str));
                    } catch (java.lang.NumberFormatException unused) {
                        return new com.alibaba.fastjson.JSONPath.PropertySegment(str, false);
                    }
                }
                if (str.charAt(0) == '\"' && str.charAt(str.length() - 1) == '\"') {
                    str = str.substring(1, str.length() - 1);
                }
                return new com.alibaba.fastjson.JSONPath.PropertySegment(str, false);
            }
            if (iIndexOf != -1) {
                java.lang.String[] strArrSplit = str.split(",");
                int[] iArr = new int[strArrSplit.length];
                for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                    iArr[i2] = java.lang.Integer.parseInt(strArrSplit[i2]);
                }
                return new com.alibaba.fastjson.JSONPath.MultiIndexSegment(iArr);
            }
            if (iIndexOf2 == -1) {
                throw new java.lang.UnsupportedOperationException();
            }
            java.lang.String[] strArrSplit2 = str.split(":");
            int length2 = strArrSplit2.length;
            int[] iArr2 = new int[length2];
            for (int i3 = 0; i3 < strArrSplit2.length; i3++) {
                java.lang.String str2 = strArrSplit2[i3];
                if (str2.length() != 0) {
                    iArr2[i3] = java.lang.Integer.parseInt(str2);
                } else {
                    if (i3 != 0) {
                        throw new java.lang.UnsupportedOperationException();
                    }
                    iArr2[i3] = 0;
                }
            }
            int i4 = iArr2[0];
            int i5 = length2 > 1 ? iArr2[1] : -1;
            int i6 = length2 == 3 ? iArr2[2] : 1;
            if (i5 < 0 || i5 >= i4) {
                if (i6 > 0) {
                    return new com.alibaba.fastjson.JSONPath.RangeSegment(i4, i5, i6);
                }
                throw new java.lang.UnsupportedOperationException(e.a.c.a.a.K("step must greater than zero : ", i6));
            }
            throw new java.lang.UnsupportedOperationException("end must greater than or equals start. start " + i4 + ",  end " + i5);
        }

        public com.alibaba.fastjson.JSONPath.Segment[] explain() {
            java.lang.String str = this.path;
            if (str == null || str.length() == 0) {
                throw new java.lang.IllegalArgumentException();
            }
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = new com.alibaba.fastjson.JSONPath.Segment[8];
            while (true) {
                com.alibaba.fastjson.JSONPath.Segment segement = readSegement();
                if (segement == null) {
                    break;
                }
                if (segement instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
                    com.alibaba.fastjson.JSONPath.PropertySegment propertySegment = (com.alibaba.fastjson.JSONPath.PropertySegment) segement;
                    if (propertySegment.deep || !propertySegment.propertyName.equals("*")) {
                    }
                }
                int i = this.level;
                if (i == segmentArr.length) {
                    com.alibaba.fastjson.JSONPath.Segment[] segmentArr2 = new com.alibaba.fastjson.JSONPath.Segment[(i * 3) / 2];
                    java.lang.System.arraycopy(segmentArr, 0, segmentArr2, 0, i);
                    segmentArr = segmentArr2;
                }
                int i2 = this.level;
                this.level = i2 + 1;
                segmentArr[i2] = segement;
            }
            int i3 = this.level;
            if (i3 == segmentArr.length) {
                return segmentArr;
            }
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr3 = new com.alibaba.fastjson.JSONPath.Segment[i3];
            java.lang.System.arraycopy(segmentArr, 0, segmentArr3, 0, i3);
            return segmentArr3;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0039  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0036 -> B:16:0x002d). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.alibaba.fastjson.JSONPath.Filter filterRest(com.alibaba.fastjson.JSONPath.Filter r6) {
            /*
                r5 = this;
                char r0 = r5.ch
                r1 = 1
                r2 = 0
                r3 = 38
                if (r0 != r3) goto La
                r0 = 1
                goto Lb
            La:
                r0 = 0
            Lb:
                char r4 = r5.ch
                if (r4 != r3) goto L15
                char r4 = r5.getNextChar()
                if (r4 == r3) goto L21
            L15:
                char r3 = r5.ch
                r4 = 124(0x7c, float:1.74E-43)
                if (r3 != r4) goto L50
                char r3 = r5.getNextChar()
                if (r3 != r4) goto L50
            L21:
                r5.next()
                r5.next()
                char r3 = r5.ch
                r4 = 40
                if (r3 != r4) goto L31
            L2d:
                r5.next()
                goto L32
            L31:
                r1 = 0
            L32:
                char r3 = r5.ch
                r4 = 32
                if (r3 != r4) goto L39
                goto L2d
            L39:
                java.lang.Object r2 = r5.parseArrayAccessFilter(r2)
                com.alibaba.fastjson.JSONPath$Filter r2 = (com.alibaba.fastjson.JSONPath.Filter) r2
                com.alibaba.fastjson.JSONPath$FilterGroup r3 = new com.alibaba.fastjson.JSONPath$FilterGroup
                r3.<init>(r6, r2, r0)
                if (r1 == 0) goto L4f
                char r6 = r5.ch
                r0 = 41
                if (r6 != r0) goto L4f
                r5.next()
            L4f:
                r6 = r3
            L50:
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.JSONPathParser.filterRest(com.alibaba.fastjson.JSONPath$Filter):com.alibaba.fastjson.JSONPath$Filter");
        }

        public char getNextChar() {
            return this.path.charAt(this.pos);
        }

        public boolean isEOF() {
            return this.pos >= this.path.length();
        }

        public void next() {
            java.lang.String str = this.path;
            int i = this.pos;
            this.pos = i + 1;
            this.ch = str.charAt(i);
        }

        public com.alibaba.fastjson.JSONPath.Segment parseArrayAccess(boolean z) {
            java.lang.Object arrayAccessFilter = parseArrayAccessFilter(z);
            return arrayAccessFilter instanceof com.alibaba.fastjson.JSONPath.Segment ? (com.alibaba.fastjson.JSONPath.Segment) arrayAccessFilter : new com.alibaba.fastjson.JSONPath.FilterSegment((com.alibaba.fastjson.JSONPath.Filter) arrayAccessFilter);
        }

        public java.lang.Object parseArrayAccessFilter(boolean z) {
            int i;
            boolean z2;
            boolean z3;
            char c2;
            char c3;
            char c4;
            char c5;
            char c6;
            char c7;
            java.lang.String str;
            java.lang.String[] strArr;
            java.lang.String str2;
            java.lang.String str3;
            com.alibaba.fastjson.JSONPath.Filter matchSegement;
            com.alibaba.fastjson.JSONPath.Filter stringOpSegement;
            char c8;
            char c9;
            char c10;
            char c11;
            int i2;
            char c12;
            char c13;
            char c14;
            char c15;
            char c16;
            java.lang.String strReplaceAll;
            int i3;
            char cCharAt;
            if (z) {
                accept('[');
            }
            if (this.ch == '?') {
                next();
                accept('(');
                i = 1;
                while (this.ch == '(') {
                    next();
                    i++;
                }
                z2 = true;
            } else {
                i = 0;
                z2 = false;
            }
            skipWhitespace();
            if (!z2 && !com.alibaba.fastjson.util.IOUtils.firstIdentifier(this.ch) && !java.lang.Character.isJavaIdentifierStart(this.ch) && (c15 = this.ch) != '\\' && c15 != '@') {
                int i4 = this.pos - 1;
                while (true) {
                    char c17 = this.ch;
                    if (c17 == ']' || c17 == '/' || isEOF() || !(this.ch != '.' || z2 || z2 || c15 == '\'')) {
                        break;
                    }
                    if (this.ch == '\\') {
                        next();
                    }
                    next();
                }
                java.lang.String strSubstring = this.path.substring(i4, (z || (c16 = this.ch) == '/' || c16 == '.') ? this.pos - 1 : this.pos);
                if (strSubstring.indexOf(92) != 0) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(strSubstring.length());
                    int i5 = 0;
                    while (i5 < strSubstring.length()) {
                        char cCharAt2 = strSubstring.charAt(i5);
                        if (cCharAt2 == '\\' && i5 < strSubstring.length() - 1 && ((cCharAt = strSubstring.charAt((i3 = i5 + 1))) == '@' || cCharAt2 == '\\' || cCharAt2 == '\"')) {
                            sb.append(cCharAt);
                            i5 = i3;
                        } else {
                            sb.append(cCharAt2);
                        }
                        i5++;
                    }
                    strSubstring = sb.toString();
                }
                if (strSubstring.indexOf("\\.") == -1) {
                    com.alibaba.fastjson.JSONPath.Segment segmentBuildArraySegement = buildArraySegement(strSubstring);
                    if (z && !isEOF()) {
                        accept(']');
                    }
                    return segmentBuildArraySegement;
                }
                if (c15 == '\'' && strSubstring.length() > 2 && strSubstring.charAt(strSubstring.length() - 1) == c15) {
                    strReplaceAll = strSubstring.substring(1, strSubstring.length() - 1);
                } else {
                    strReplaceAll = strSubstring.replaceAll("\\\\\\.", "\\.");
                    if (strReplaceAll.indexOf("\\-") != -1) {
                        strReplaceAll = strReplaceAll.replaceAll("\\\\-", "-");
                    }
                }
                if (z2) {
                    accept(')');
                }
                return new com.alibaba.fastjson.JSONPath.PropertySegment(strReplaceAll, false);
            }
            if (this.ch == '@') {
                next();
                accept('.');
            }
            java.lang.String name = readName();
            skipWhitespace();
            if (z2 && this.ch == ')') {
                next();
                com.alibaba.fastjson.JSONPath.Filter notNullSegement = new com.alibaba.fastjson.JSONPath.NotNullSegement(name, false);
                while (true) {
                    c14 = this.ch;
                    if (c14 != ' ') {
                        break;
                    }
                    next();
                }
                if (c14 == '&' || c14 == '|') {
                    notNullSegement = filterRest(notNullSegement);
                }
                if (z) {
                    accept(']');
                }
                return notNullSegement;
            }
            if (z && this.ch == ']') {
                if (isEOF() && name.equals("last")) {
                    return new com.alibaba.fastjson.JSONPath.MultiIndexSegment(new int[]{-1});
                }
                next();
                com.alibaba.fastjson.JSONPath.Filter notNullSegement2 = new com.alibaba.fastjson.JSONPath.NotNullSegement(name, false);
                while (true) {
                    c13 = this.ch;
                    if (c13 != ' ') {
                        break;
                    }
                    next();
                }
                if (c13 == '&' || c13 == '|') {
                    notNullSegement2 = filterRest(notNullSegement2);
                }
                accept(')');
                if (z2) {
                    accept(')');
                }
                if (z) {
                    accept(']');
                }
                return notNullSegement2;
            }
            skipWhitespace();
            if (this.ch == '(') {
                next();
                accept(')');
                skipWhitespace();
                z3 = true;
            } else {
                z3 = false;
            }
            com.alibaba.fastjson.JSONPath.Operator op = readOp();
            skipWhitespace();
            if (op == com.alibaba.fastjson.JSONPath.Operator.BETWEEN || op == com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN) {
                boolean z4 = op == com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN;
                java.lang.Object value = readValue();
                if (!"and".equalsIgnoreCase(readName())) {
                    throw new com.alibaba.fastjson.JSONPathException(this.path);
                }
                java.lang.Object value2 = readValue();
                if (value == null || value2 == null) {
                    throw new com.alibaba.fastjson.JSONPathException(this.path);
                }
                if (com.alibaba.fastjson.JSONPath.isInt(value.getClass()) && com.alibaba.fastjson.JSONPath.isInt(value2.getClass())) {
                    return new com.alibaba.fastjson.JSONPath.IntBetweenSegement(name, z3, com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) value), com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) value2), z4);
                }
                throw new com.alibaba.fastjson.JSONPathException(this.path);
            }
            if (op == com.alibaba.fastjson.JSONPath.Operator.IN || op == com.alibaba.fastjson.JSONPath.Operator.NOT_IN) {
                boolean z5 = op == com.alibaba.fastjson.JSONPath.Operator.NOT_IN;
                accept('(');
                com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
                jSONArray.add(readValue());
                while (true) {
                    skipWhitespace();
                    if (this.ch != ',') {
                        break;
                    }
                    next();
                    jSONArray.add(readValue());
                }
                java.util.Iterator<java.lang.Object> it = jSONArray.iterator();
                boolean z6 = true;
                boolean z7 = true;
                boolean z8 = true;
                while (it.hasNext()) {
                    java.lang.Object next = it.next();
                    if (next != null) {
                        java.lang.Class<?> cls = next.getClass();
                        if (z6 && cls != java.lang.Byte.class && cls != java.lang.Short.class && cls != java.lang.Integer.class && cls != java.lang.Long.class) {
                            z6 = false;
                            z8 = false;
                        }
                        if (z7 && cls != java.lang.String.class) {
                            z7 = false;
                        }
                    } else if (z6) {
                        z6 = false;
                    }
                }
                if (jSONArray.size() == 1 && jSONArray.get(0) == null) {
                    com.alibaba.fastjson.JSONPath.Filter notNullSegement3 = z5 ? new com.alibaba.fastjson.JSONPath.NotNullSegement(name, z3) : new com.alibaba.fastjson.JSONPath.NullSegement(name, z3);
                    while (true) {
                        c7 = this.ch;
                        if (c7 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c7 == '&' || c7 == '|') {
                        notNullSegement3 = filterRest(notNullSegement3);
                    }
                    accept(')');
                    if (z2) {
                        accept(')');
                    }
                    if (z) {
                        accept(']');
                    }
                    return notNullSegement3;
                }
                if (z6) {
                    if (jSONArray.size() == 1) {
                        com.alibaba.fastjson.JSONPath.Filter intOpSegement = new com.alibaba.fastjson.JSONPath.IntOpSegement(name, z3, com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) jSONArray.get(0)), z5 ? com.alibaba.fastjson.JSONPath.Operator.NE : com.alibaba.fastjson.JSONPath.Operator.EQ);
                        while (true) {
                            c6 = this.ch;
                            if (c6 != ' ') {
                                break;
                            }
                            next();
                        }
                        if (c6 == '&' || c6 == '|') {
                            intOpSegement = filterRest(intOpSegement);
                        }
                        accept(')');
                        if (z2) {
                            accept(')');
                        }
                        if (z) {
                            accept(']');
                        }
                        return intOpSegement;
                    }
                    int size = jSONArray.size();
                    long[] jArr = new long[size];
                    for (int i6 = 0; i6 < size; i6++) {
                        jArr[i6] = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) jSONArray.get(i6));
                    }
                    com.alibaba.fastjson.JSONPath.Filter intInSegement = new com.alibaba.fastjson.JSONPath.IntInSegement(name, z3, jArr, z5);
                    while (true) {
                        c5 = this.ch;
                        if (c5 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c5 == '&' || c5 == '|') {
                        intInSegement = filterRest(intInSegement);
                    }
                    accept(')');
                    if (z2) {
                        accept(')');
                    }
                    if (z) {
                        accept(']');
                    }
                    return intInSegement;
                }
                if (!z7) {
                    if (!z8) {
                        throw new java.lang.UnsupportedOperationException();
                    }
                    int size2 = jSONArray.size();
                    java.lang.Long[] lArr = new java.lang.Long[size2];
                    for (int i7 = 0; i7 < size2; i7++) {
                        java.lang.Number number = (java.lang.Number) jSONArray.get(i7);
                        if (number != null) {
                            lArr[i7] = java.lang.Long.valueOf(com.alibaba.fastjson.util.TypeUtils.longExtractValue(number));
                        }
                    }
                    com.alibaba.fastjson.JSONPath.Filter intObjInSegement = new com.alibaba.fastjson.JSONPath.IntObjInSegement(name, z3, lArr, z5);
                    while (true) {
                        c2 = this.ch;
                        if (c2 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c2 == '&' || c2 == '|') {
                        intObjInSegement = filterRest(intObjInSegement);
                    }
                    accept(')');
                    if (z2) {
                        accept(')');
                    }
                    if (z) {
                        accept(']');
                    }
                    return intObjInSegement;
                }
                if (jSONArray.size() == 1) {
                    com.alibaba.fastjson.JSONPath.Filter stringOpSegement2 = new com.alibaba.fastjson.JSONPath.StringOpSegement(name, z3, (java.lang.String) jSONArray.get(0), z5 ? com.alibaba.fastjson.JSONPath.Operator.NE : com.alibaba.fastjson.JSONPath.Operator.EQ);
                    while (true) {
                        c4 = this.ch;
                        if (c4 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c4 == '&' || c4 == '|') {
                        stringOpSegement2 = filterRest(stringOpSegement2);
                    }
                    accept(')');
                    if (z2) {
                        accept(')');
                    }
                    if (z) {
                        accept(']');
                    }
                    return stringOpSegement2;
                }
                java.lang.String[] strArr2 = new java.lang.String[jSONArray.size()];
                jSONArray.toArray(strArr2);
                com.alibaba.fastjson.JSONPath.Filter stringInSegement = new com.alibaba.fastjson.JSONPath.StringInSegement(name, z3, strArr2, z5);
                while (true) {
                    c3 = this.ch;
                    if (c3 != ' ') {
                        break;
                    }
                    next();
                }
                if (c3 == '&' || c3 == '|') {
                    stringInSegement = filterRest(stringInSegement);
                }
                accept(')');
                if (z2) {
                    accept(')');
                }
                if (z) {
                    accept(']');
                }
                return stringInSegement;
            }
            char c18 = this.ch;
            if (c18 == '\'' || c18 == '\"') {
                java.lang.String string = readString();
                if (op == com.alibaba.fastjson.JSONPath.Operator.RLIKE) {
                    matchSegement = new com.alibaba.fastjson.JSONPath.RlikeSegement(name, z3, string, false);
                } else {
                    if (op == com.alibaba.fastjson.JSONPath.Operator.NOT_RLIKE) {
                        stringOpSegement = new com.alibaba.fastjson.JSONPath.RlikeSegement(name, z3, string, true);
                    } else if (op == com.alibaba.fastjson.JSONPath.Operator.LIKE || op == com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE) {
                        while (string.indexOf("%%") != -1) {
                            string = string.replaceAll("%%", "%");
                        }
                        boolean z9 = op == com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE;
                        int iIndexOf = string.indexOf(37);
                        if (iIndexOf == -1) {
                            stringOpSegement = new com.alibaba.fastjson.JSONPath.StringOpSegement(name, z3, string, op == com.alibaba.fastjson.JSONPath.Operator.LIKE ? com.alibaba.fastjson.JSONPath.Operator.EQ : com.alibaba.fastjson.JSONPath.Operator.NE);
                        } else {
                            java.lang.String[] strArrSplit = string.split("%");
                            if (iIndexOf != 0) {
                                if (string.charAt(string.length() - 1) == '%') {
                                    if (strArrSplit.length == 1) {
                                        str3 = strArrSplit[0];
                                    } else {
                                        strArr = strArrSplit;
                                        str = null;
                                        str2 = null;
                                        matchSegement = new com.alibaba.fastjson.JSONPath.MatchSegement(name, z3, str, str2, strArr, z9);
                                    }
                                } else if (strArrSplit.length == 1) {
                                    str3 = strArrSplit[0];
                                } else {
                                    if (strArrSplit.length == 2) {
                                        str = strArrSplit[0];
                                        str2 = strArrSplit[1];
                                        strArr = null;
                                    } else {
                                        java.lang.String str4 = strArrSplit[0];
                                        java.lang.String str5 = strArrSplit[strArrSplit.length - 1];
                                        int length = strArrSplit.length - 2;
                                        java.lang.String[] strArr3 = new java.lang.String[length];
                                        java.lang.System.arraycopy(strArrSplit, 1, strArr3, 0, length);
                                        str = str4;
                                        strArr = strArr3;
                                        str2 = str5;
                                    }
                                    matchSegement = new com.alibaba.fastjson.JSONPath.MatchSegement(name, z3, str, str2, strArr, z9);
                                }
                                str = str3;
                                str2 = null;
                                strArr = null;
                                matchSegement = new com.alibaba.fastjson.JSONPath.MatchSegement(name, z3, str, str2, strArr, z9);
                            } else if (string.charAt(string.length() - 1) == '%') {
                                int length2 = strArrSplit.length - 1;
                                java.lang.String[] strArr4 = new java.lang.String[length2];
                                java.lang.System.arraycopy(strArrSplit, 1, strArr4, 0, length2);
                                strArr = strArr4;
                                str = null;
                                str2 = null;
                                matchSegement = new com.alibaba.fastjson.JSONPath.MatchSegement(name, z3, str, str2, strArr, z9);
                            } else {
                                java.lang.String str6 = strArrSplit[strArrSplit.length - 1];
                                if (strArrSplit.length > 2) {
                                    int length3 = strArrSplit.length - 2;
                                    java.lang.String[] strArr5 = new java.lang.String[length3];
                                    java.lang.System.arraycopy(strArrSplit, 1, strArr5, 0, length3);
                                    str2 = str6;
                                    strArr = strArr5;
                                    str = null;
                                } else {
                                    str2 = str6;
                                    str = null;
                                    strArr = null;
                                }
                                matchSegement = new com.alibaba.fastjson.JSONPath.MatchSegement(name, z3, str, str2, strArr, z9);
                            }
                        }
                    } else {
                        matchSegement = new com.alibaba.fastjson.JSONPath.StringOpSegement(name, z3, string, op);
                    }
                    matchSegement = stringOpSegement;
                }
                while (true) {
                    c8 = this.ch;
                    if (c8 != ' ') {
                        break;
                    }
                    next();
                }
                if (c8 == '&' || c8 == '|') {
                    matchSegement = filterRest(matchSegement);
                }
                if (z2) {
                    accept(')');
                }
                if (z) {
                    accept(']');
                }
                return matchSegement;
            }
            if (isDigitFirst(c18)) {
                long longValue = readLongValue();
                double doubleValue = this.ch == '.' ? readDoubleValue(longValue) : 0.0d;
                com.alibaba.fastjson.JSONPath.Filter intOpSegement2 = doubleValue == 0.0d ? new com.alibaba.fastjson.JSONPath.IntOpSegement(name, z3, longValue, op) : new com.alibaba.fastjson.JSONPath.DoubleOpSegement(name, z3, doubleValue, op);
                while (true) {
                    c12 = this.ch;
                    if (c12 != ' ') {
                        break;
                    }
                    next();
                }
                if (i > 1 && c12 == ')') {
                    next();
                }
                char c19 = this.ch;
                if (c19 == '&' || c19 == '|') {
                    intOpSegement2 = filterRest(intOpSegement2);
                }
                if (z2) {
                    accept(')');
                }
                if (z) {
                    accept(']');
                }
                return intOpSegement2;
            }
            char c20 = this.ch;
            if (c20 == '$') {
                com.alibaba.fastjson.JSONPath.RefOpSegement refOpSegement = new com.alibaba.fastjson.JSONPath.RefOpSegement(name, z3, readSegement(), op);
                this.hasRefSegment = true;
                while (this.ch == ' ') {
                    next();
                }
                if (z2) {
                    accept(')');
                }
                if (z) {
                    accept(']');
                }
                return refOpSegement;
            }
            if (c20 == '/') {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                while (true) {
                    next();
                    char c21 = this.ch;
                    if (c21 == '/') {
                        break;
                    }
                    if (c21 == '\\') {
                        next();
                        c21 = this.ch;
                    }
                    sb2.append(c21);
                }
                next();
                if (this.ch == 'i') {
                    next();
                    i2 = 2;
                } else {
                    i2 = 0;
                }
                com.alibaba.fastjson.JSONPath.RegMatchSegement regMatchSegement = new com.alibaba.fastjson.JSONPath.RegMatchSegement(name, z3, java.util.regex.Pattern.compile(sb2.toString(), i2), op);
                if (z2) {
                    accept(')');
                }
                if (z) {
                    accept(']');
                }
                return regMatchSegement;
            }
            if (c20 == 'n') {
                if ("null".equals(readName())) {
                    com.alibaba.fastjson.JSONPath.Filter nullSegement = op == com.alibaba.fastjson.JSONPath.Operator.EQ ? new com.alibaba.fastjson.JSONPath.NullSegement(name, z3) : op == com.alibaba.fastjson.JSONPath.Operator.NE ? new com.alibaba.fastjson.JSONPath.NotNullSegement(name, z3) : null;
                    if (nullSegement != null) {
                        while (true) {
                            c11 = this.ch;
                            if (c11 != ' ') {
                                break;
                            }
                            next();
                        }
                        if (c11 == '&' || c11 == '|') {
                            nullSegement = filterRest(nullSegement);
                        }
                    }
                    if (z2) {
                        accept(')');
                    }
                    accept(']');
                    if (nullSegement != null) {
                        return nullSegement;
                    }
                    throw new java.lang.UnsupportedOperationException();
                }
            } else if (c20 == 't') {
                if ("true".equals(readName())) {
                    com.alibaba.fastjson.JSONPath.Filter valueSegment = op == com.alibaba.fastjson.JSONPath.Operator.EQ ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z3, java.lang.Boolean.TRUE, true) : op == com.alibaba.fastjson.JSONPath.Operator.NE ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z3, java.lang.Boolean.TRUE, false) : null;
                    if (valueSegment != null) {
                        while (true) {
                            c10 = this.ch;
                            if (c10 != ' ') {
                                break;
                            }
                            next();
                        }
                        if (c10 == '&' || c10 == '|') {
                            valueSegment = filterRest(valueSegment);
                        }
                    }
                    if (z2) {
                        accept(')');
                    }
                    accept(']');
                    if (valueSegment != null) {
                        return valueSegment;
                    }
                    throw new java.lang.UnsupportedOperationException();
                }
            } else if (c20 == 'f' && "false".equals(readName())) {
                com.alibaba.fastjson.JSONPath.Filter valueSegment2 = op == com.alibaba.fastjson.JSONPath.Operator.EQ ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z3, java.lang.Boolean.FALSE, true) : op == com.alibaba.fastjson.JSONPath.Operator.NE ? new com.alibaba.fastjson.JSONPath.ValueSegment(name, z3, java.lang.Boolean.FALSE, false) : null;
                if (valueSegment2 != null) {
                    while (true) {
                        c9 = this.ch;
                        if (c9 != ' ') {
                            break;
                        }
                        next();
                    }
                    if (c9 == '&' || c9 == '|') {
                        valueSegment2 = filterRest(valueSegment2);
                    }
                }
                if (z2) {
                    accept(')');
                }
                accept(']');
                if (valueSegment2 != null) {
                    return valueSegment2;
                }
                throw new java.lang.UnsupportedOperationException();
            }
            throw new java.lang.UnsupportedOperationException();
        }

        public double readDoubleValue(long j) throws java.lang.NumberFormatException {
            char c2;
            int i = this.pos - 1;
            do {
                next();
                c2 = this.ch;
                if (c2 < '0') {
                    break;
                }
            } while (c2 <= '9');
            double d2 = java.lang.Double.parseDouble(this.path.substring(i, this.pos - 1));
            double d3 = j;
            java.lang.Double.isNaN(d3);
            return d2 + d3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        
            if (r1 != '-') goto L7;
         */
        /* JADX WARN: Path cross not found for [B:6:0x000e, B:4:0x000a], limit reached: 13 */
        /* JADX WARN: Path cross not found for [B:6:0x000e, B:7:0x0011], limit reached: 13 */
        /* JADX WARN: Path cross not found for [B:7:0x0011, B:6:0x000e], limit reached: 13 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0019 -> B:6:0x000e). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long readLongValue() {
            /*
                r3 = this;
                int r0 = r3.pos
                int r0 = r0 + (-1)
                char r1 = r3.ch
                r2 = 43
                if (r1 == r2) goto Le
                r2 = 45
                if (r1 != r2) goto L11
            Le:
                r3.next()
            L11:
                char r1 = r3.ch
                r2 = 48
                if (r1 < r2) goto L1c
                r2 = 57
                if (r1 > r2) goto L1c
                goto Le
            L1c:
                int r1 = r3.pos
                int r1 = r1 + (-1)
                java.lang.String r2 = r3.path
                java.lang.String r0 = r2.substring(r0, r1)
                long r0 = java.lang.Long.parseLong(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.JSONPathParser.readLongValue():long");
        }

        public java.lang.String readName() {
            skipWhitespace();
            char c2 = this.ch;
            if (c2 != '\\' && !java.lang.Character.isJavaIdentifierStart(c2)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("illeal jsonpath syntax. ");
                sbO.append(this.path);
                throw new com.alibaba.fastjson.JSONPathException(sbO.toString());
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            while (!isEOF()) {
                char c3 = this.ch;
                if (c3 == '\\') {
                    next();
                    sb.append(this.ch);
                    if (isEOF()) {
                        return sb.toString();
                    }
                } else {
                    if (!java.lang.Character.isJavaIdentifierPart(c3)) {
                        break;
                    }
                    sb.append(this.ch);
                }
                next();
            }
            if (isEOF() && java.lang.Character.isJavaIdentifierPart(this.ch)) {
                sb.append(this.ch);
            }
            return sb.toString();
        }

        public com.alibaba.fastjson.JSONPath.Operator readOp() {
            com.alibaba.fastjson.JSONPath.Operator operator;
            char c2 = this.ch;
            if (c2 == '=') {
                next();
                char c3 = this.ch;
                if (c3 == '~') {
                    next();
                    operator = com.alibaba.fastjson.JSONPath.Operator.REG_MATCH;
                } else {
                    if (c3 == '=') {
                        next();
                    }
                    operator = com.alibaba.fastjson.JSONPath.Operator.EQ;
                }
            } else if (c2 == '!') {
                next();
                accept('=');
                operator = com.alibaba.fastjson.JSONPath.Operator.NE;
            } else if (c2 == '<') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = com.alibaba.fastjson.JSONPath.Operator.LE;
                } else {
                    operator = com.alibaba.fastjson.JSONPath.Operator.LT;
                }
            } else if (c2 == '>') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = com.alibaba.fastjson.JSONPath.Operator.GE;
                } else {
                    operator = com.alibaba.fastjson.JSONPath.Operator.GT;
                }
            } else {
                operator = null;
            }
            if (operator != null) {
                return operator;
            }
            java.lang.String name = readName();
            if ("not".equalsIgnoreCase(name)) {
                skipWhitespace();
                java.lang.String name2 = readName();
                if ("like".equalsIgnoreCase(name2)) {
                    return com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE;
                }
                if ("rlike".equalsIgnoreCase(name2)) {
                    return com.alibaba.fastjson.JSONPath.Operator.NOT_RLIKE;
                }
                if (!"in".equalsIgnoreCase(name2)) {
                    if ("between".equalsIgnoreCase(name2)) {
                        return com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN;
                    }
                    throw new java.lang.UnsupportedOperationException();
                }
            } else if (!"nin".equalsIgnoreCase(name)) {
                if ("like".equalsIgnoreCase(name)) {
                    return com.alibaba.fastjson.JSONPath.Operator.LIKE;
                }
                if ("rlike".equalsIgnoreCase(name)) {
                    return com.alibaba.fastjson.JSONPath.Operator.RLIKE;
                }
                if ("in".equalsIgnoreCase(name)) {
                    return com.alibaba.fastjson.JSONPath.Operator.IN;
                }
                if ("between".equalsIgnoreCase(name)) {
                    return com.alibaba.fastjson.JSONPath.Operator.BETWEEN;
                }
                throw new java.lang.UnsupportedOperationException();
            }
            return com.alibaba.fastjson.JSONPath.Operator.NOT_IN;
        }

        public com.alibaba.fastjson.JSONPath.Segment readSegement() {
            boolean z;
            char c2;
            if (this.level == 0 && this.path.length() == 1) {
                if (isDigitFirst(this.ch)) {
                    return new com.alibaba.fastjson.JSONPath.ArrayAccessSegment(this.ch - '0');
                }
                char c3 = this.ch;
                if ((c3 >= 'a' && c3 <= 'z') || ((c2 = this.ch) >= 'A' && c2 <= 'Z')) {
                    return new com.alibaba.fastjson.JSONPath.PropertySegment(java.lang.Character.toString(this.ch), false);
                }
            }
            while (!isEOF()) {
                skipWhitespace();
                char c4 = this.ch;
                if (c4 != '$') {
                    if (c4 != '.' && c4 != '/') {
                        if (c4 == '[') {
                            return parseArrayAccess(true);
                        }
                        if (this.level == 0) {
                            return new com.alibaba.fastjson.JSONPath.PropertySegment(readName(), false);
                        }
                        if (c4 == '?') {
                            return new com.alibaba.fastjson.JSONPath.FilterSegment((com.alibaba.fastjson.JSONPath.Filter) parseArrayAccessFilter(false));
                        }
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("not support jsonpath : ");
                        sbO.append(this.path);
                        throw new com.alibaba.fastjson.JSONPathException(sbO.toString());
                    }
                    char c5 = this.ch;
                    next();
                    if (c5 == '.' && this.ch == '.') {
                        next();
                        int length = this.path.length();
                        int i = this.pos;
                        if (length > i + 3 && this.ch == '[' && this.path.charAt(i) == '*' && this.path.charAt(this.pos + 1) == ']' && this.path.charAt(this.pos + 2) == '.') {
                            next();
                            next();
                            next();
                            next();
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                    char c6 = this.ch;
                    if (c6 == '*' || (z && c6 == '[')) {
                        boolean z2 = this.ch == '[';
                        if (!isEOF()) {
                            next();
                        }
                        return z ? z2 ? com.alibaba.fastjson.JSONPath.WildCardSegment.instance_deep_objectOnly : com.alibaba.fastjson.JSONPath.WildCardSegment.instance_deep : com.alibaba.fastjson.JSONPath.WildCardSegment.instance;
                    }
                    if (isDigitFirst(this.ch)) {
                        return parseArrayAccess(false);
                    }
                    java.lang.String name = readName();
                    if (this.ch != '(') {
                        return new com.alibaba.fastjson.JSONPath.PropertySegment(name, z);
                    }
                    next();
                    if (this.ch != ')') {
                        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("not support jsonpath : ");
                        sbO2.append(this.path);
                        throw new com.alibaba.fastjson.JSONPathException(sbO2.toString());
                    }
                    if (!isEOF()) {
                        next();
                    }
                    if ("size".equals(name) || com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex.COLUMN_LENGTH.equals(name)) {
                        return com.alibaba.fastjson.JSONPath.SizeSegment.instance;
                    }
                    if ("max".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.MaxSegment.instance;
                    }
                    if ("min".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.MinSegment.instance;
                    }
                    if ("keySet".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.KeySetSegment.instance;
                    }
                    if (com.umeng.analytics.pro.c.y.equals(name)) {
                        return com.alibaba.fastjson.JSONPath.TypeSegment.instance;
                    }
                    if ("floor".equals(name)) {
                        return com.alibaba.fastjson.JSONPath.FloorSegment.instance;
                    }
                    java.lang.StringBuilder sbO3 = e.a.c.a.a.o("not support jsonpath : ");
                    sbO3.append(this.path);
                    throw new com.alibaba.fastjson.JSONPathException(sbO3.toString());
                }
                next();
                skipWhitespace();
                if (this.ch == '?') {
                    return new com.alibaba.fastjson.JSONPath.FilterSegment((com.alibaba.fastjson.JSONPath.Filter) parseArrayAccessFilter(false));
                }
            }
            return null;
        }

        public java.lang.String readString() {
            char c2 = this.ch;
            next();
            int i = this.pos - 1;
            while (this.ch != c2 && !isEOF()) {
                next();
            }
            java.lang.String strSubstring = this.path.substring(i, isEOF() ? this.pos : this.pos - 1);
            accept(c2);
            return strSubstring;
        }

        public java.lang.Object readValue() {
            skipWhitespace();
            if (isDigitFirst(this.ch)) {
                return java.lang.Long.valueOf(readLongValue());
            }
            char c2 = this.ch;
            if (c2 == '\"' || c2 == '\'') {
                return readString();
            }
            if (c2 != 'n') {
                throw new java.lang.UnsupportedOperationException();
            }
            if ("null".equals(readName())) {
                return null;
            }
            throw new com.alibaba.fastjson.JSONPathException(this.path);
        }

        public final void skipWhitespace() {
            while (true) {
                char c2 = this.ch;
                if (c2 > ' ') {
                    return;
                }
                if (c2 != ' ' && c2 != '\r' && c2 != '\n' && c2 != '\t' && c2 != '\f' && c2 != '\b') {
                    return;
                } else {
                    next();
                }
            }
        }
    }

    public static class KeySetSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.KeySetSegment instance = new com.alibaba.fastjson.JSONPath.KeySetSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return jSONPath.evalKeySet(obj2);
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MatchSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final java.lang.String[] containsValues;
        public final java.lang.String endsWithValue;
        public final int minLength;
        public final boolean not;
        public final java.lang.String startsWithValue;

        public MatchSegement(java.lang.String str, boolean z, java.lang.String str2, java.lang.String str3, java.lang.String[] strArr, boolean z2) {
            super(str, z);
            this.startsWithValue = str2;
            this.endsWithValue = str3;
            this.containsValues = strArr;
            this.not = z2;
            int length = str2 != null ? str2.length() + 0 : 0;
            length = str3 != null ? length + str3.length() : length;
            if (strArr != null) {
                for (java.lang.String str4 : strArr) {
                    length += str4.length();
                }
            }
            this.minLength = length;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            int length;
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            java.lang.String string = obj4.toString();
            if (string.length() < this.minLength) {
                return this.not;
            }
            java.lang.String str = this.startsWithValue;
            if (str == null) {
                length = 0;
            } else {
                if (!string.startsWith(str)) {
                    return this.not;
                }
                length = this.startsWithValue.length() + 0;
            }
            java.lang.String[] strArr = this.containsValues;
            if (strArr != null) {
                for (java.lang.String str2 : strArr) {
                    int iIndexOf = string.indexOf(str2, length);
                    if (iIndexOf == -1) {
                        return this.not;
                    }
                    length = iIndexOf + str2.length();
                }
            }
            java.lang.String str3 = this.endsWithValue;
            return (str3 == null || string.endsWith(str3)) ? !this.not : this.not;
        }
    }

    public static class MaxSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.MaxSegment instance = new com.alibaba.fastjson.JSONPath.MaxSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!(obj2 instanceof java.util.Collection)) {
                throw new java.lang.UnsupportedOperationException();
            }
            java.lang.Object obj3 = null;
            for (java.lang.Object obj4 : (java.util.Collection) obj2) {
                if (obj4 != null && (obj3 == null || com.alibaba.fastjson.JSONPath.compare(obj3, obj4) < 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MinSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.MinSegment instance = new com.alibaba.fastjson.JSONPath.MinSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!(obj2 instanceof java.util.Collection)) {
                throw new java.lang.UnsupportedOperationException();
            }
            java.lang.Object obj3 = null;
            for (java.lang.Object obj4 : (java.util.Collection) obj2) {
                if (obj4 != null && (obj3 == null || com.alibaba.fastjson.JSONPath.compare(obj3, obj4) > 0)) {
                    obj3 = obj4;
                }
            }
            return obj3;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MultiIndexSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public final int[] indexes;

        public MultiIndexSegment(int[] iArr) {
            this.indexes = iArr;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray(this.indexes.length);
            int i = 0;
            while (true) {
                int[] iArr = this.indexes;
                if (i >= iArr.length) {
                    return jSONArray;
                }
                jSONArray.add(jSONPath.getArrayItem(obj2, iArr[i]));
                i++;
            }
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            if (context.eval) {
                java.lang.Object obj = defaultJSONParser.parse();
                if (obj instanceof java.util.List) {
                    int[] iArr = this.indexes;
                    int length = iArr.length;
                    int[] iArr2 = new int[length];
                    java.lang.System.arraycopy(iArr, 0, iArr2, 0, length);
                    java.util.List list = (java.util.List) obj;
                    if (iArr2[0] >= 0) {
                        for (int size = list.size() - 1; size >= 0; size--) {
                            if (java.util.Arrays.binarySearch(iArr2, size) < 0) {
                                list.remove(size);
                            }
                        }
                        context.object = list;
                        return;
                    }
                }
            }
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class MultiPropertySegment implements com.alibaba.fastjson.JSONPath.Segment {
        public final java.lang.String[] propertyNames;
        public final long[] propertyNamesHash;

        public MultiPropertySegment(java.lang.String[] strArr) {
            this.propertyNames = strArr;
            this.propertyNamesHash = new long[strArr.length];
            int i = 0;
            while (true) {
                long[] jArr = this.propertyNamesHash;
                if (i >= jArr.length) {
                    return;
                }
                jArr[i] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(strArr[i]);
                i++;
            }
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            java.util.ArrayList arrayList = new java.util.ArrayList(this.propertyNames.length);
            int i = 0;
            while (true) {
                java.lang.String[] strArr = this.propertyNames;
                if (i >= strArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.getPropertyValue(obj2, strArr[i], this.propertyNamesHash[i]));
                i++;
            }
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) throws java.lang.NumberFormatException {
            com.alibaba.fastjson.JSONArray jSONArray;
            java.lang.Object objIntegerValue;
            com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.lexer;
            java.lang.Object obj = context.object;
            if (obj == null) {
                jSONArray = new com.alibaba.fastjson.JSONArray();
                context.object = jSONArray;
            } else {
                jSONArray = (com.alibaba.fastjson.JSONArray) obj;
            }
            for (int size = jSONArray.size(); size < this.propertyNamesHash.length; size++) {
                jSONArray.add(null);
            }
            do {
                int iSeekObjectToField = jSONLexerBase.seekObjectToField(this.propertyNamesHash);
                if (jSONLexerBase.matchStat != 3) {
                    return;
                }
                int i = jSONLexerBase.token();
                if (i == 2) {
                    objIntegerValue = jSONLexerBase.integerValue();
                } else if (i == 3) {
                    objIntegerValue = jSONLexerBase.decimalValue();
                } else if (i != 4) {
                    objIntegerValue = defaultJSONParser.parse();
                    jSONArray.set(iSeekObjectToField, objIntegerValue);
                } else {
                    objIntegerValue = jSONLexerBase.stringVal();
                }
                jSONLexerBase.nextToken(16);
                jSONArray.set(iSeekObjectToField, objIntegerValue);
            } while (jSONLexerBase.token() == 16);
        }
    }

    public static class NotNullSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public NotNullSegement(java.lang.String str, boolean z) {
            super(str, z);
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            return jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash) != null;
        }
    }

    public static class NullSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public NullSegement(java.lang.String str, boolean z) {
            super(str, z);
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            return get(jSONPath, obj, obj3) == null;
        }
    }

    public enum Operator {
        EQ,
        NE,
        GT,
        GE,
        LT,
        LE,
        LIKE,
        NOT_LIKE,
        RLIKE,
        NOT_RLIKE,
        IN,
        NOT_IN,
        BETWEEN,
        NOT_BETWEEN,
        And,
        Or,
        REG_MATCH
    }

    public static abstract class PropertyFilter implements com.alibaba.fastjson.JSONPath.Filter {
        public static long TYPE = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(com.umeng.analytics.pro.c.y);
        public final boolean function;
        public com.alibaba.fastjson.JSONPath.Segment functionExpr;
        public final java.lang.String propertyName;
        public final long propertyNameHash;

        public PropertyFilter(java.lang.String str, boolean z) {
            com.alibaba.fastjson.JSONPath.Segment segment;
            this.propertyName = str;
            long jFnv1a_64 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
            this.propertyNameHash = jFnv1a_64;
            this.function = z;
            if (z) {
                if (jFnv1a_64 == TYPE) {
                    segment = com.alibaba.fastjson.JSONPath.TypeSegment.instance;
                } else {
                    if (jFnv1a_64 != com.alibaba.fastjson.JSONPath.SIZE) {
                        throw new com.alibaba.fastjson.JSONPathException(e.a.c.a.a.e("unsupported funciton : ", str));
                    }
                    segment = com.alibaba.fastjson.JSONPath.SizeSegment.instance;
                }
                this.functionExpr = segment;
            }
        }

        public java.lang.Object get(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            com.alibaba.fastjson.JSONPath.Segment segment = this.functionExpr;
            return segment != null ? segment.eval(jSONPath, obj, obj2) : jSONPath.getPropertyValue(obj2, this.propertyName, this.propertyNameHash);
        }
    }

    public static class PropertySegment implements com.alibaba.fastjson.JSONPath.Segment {
        public final boolean deep;
        public final java.lang.String propertyName;
        public final long propertyNameHash;

        public PropertySegment(java.lang.String str, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(str);
            this.deep = z;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!this.deep) {
                return jSONPath.getPropertyValue(obj2, this.propertyName, this.propertyNameHash);
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            jSONPath.deepScan(obj2, this.propertyName, arrayList);
            return arrayList;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
        
            if (r3.token() != 13) goto L44;
         */
        /* JADX WARN: Removed duplicated region for block: B:123:0x0149 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0114 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:142:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:77:0x0111  */
        @Override // com.alibaba.fastjson.JSONPath.Segment
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void extract(com.alibaba.fastjson.JSONPath r17, com.alibaba.fastjson.parser.DefaultJSONParser r18, com.alibaba.fastjson.JSONPath.Context r19) throws java.lang.NumberFormatException {
            /*
                Method dump skipped, instructions count: 382
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.PropertySegment.extract(com.alibaba.fastjson.JSONPath, com.alibaba.fastjson.parser.DefaultJSONParser, com.alibaba.fastjson.JSONPath$Context):void");
        }

        public boolean remove(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj) {
            return jSONPath.removePropertyValue(obj, this.propertyName, this.deep);
        }

        public void setValue(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (this.deep) {
                jSONPath.deepSet(obj, this.propertyName, this.propertyNameHash, obj2);
            } else {
                jSONPath.setPropertyValue(obj, this.propertyName, this.propertyNameHash, obj2);
            }
        }
    }

    public static class RangeSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public final int end;
        public final int start;
        public final int step;

        public RangeSegment(int i, int i2, int i3) {
            this.start = i;
            this.end = i2;
            this.step = i3;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            int iIntValue = com.alibaba.fastjson.JSONPath.SizeSegment.instance.eval(jSONPath, obj, obj2).intValue();
            int i = this.start;
            if (i < 0) {
                i += iIntValue;
            }
            int i2 = this.end;
            if (i2 < 0) {
                i2 += iIntValue;
            }
            int i3 = ((i2 - i) / this.step) + 1;
            if (i3 == -1) {
                return null;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList(i3);
            while (i <= i2 && i < iIntValue) {
                arrayList.add(jSONPath.getArrayItem(obj2, i));
                i += this.step;
            }
            return arrayList;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class RefOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final com.alibaba.fastjson.JSONPath.Operator op;
        public final com.alibaba.fastjson.JSONPath.Segment refSgement;

        public RefOpSegement(java.lang.String str, boolean z, com.alibaba.fastjson.JSONPath.Segment segment, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z);
            this.refSgement = segment;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null || !(obj4 instanceof java.lang.Number)) {
                return false;
            }
            java.lang.Object objEval = this.refSgement.eval(jSONPath, obj, obj);
            if ((objEval instanceof java.lang.Integer) || (objEval instanceof java.lang.Long) || (objEval instanceof java.lang.Short) || (objEval instanceof java.lang.Byte)) {
                long jLongExtractValue = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) objEval);
                if ((obj4 instanceof java.lang.Integer) || (obj4 instanceof java.lang.Long) || (obj4 instanceof java.lang.Short) || (obj4 instanceof java.lang.Byte)) {
                    long jLongExtractValue2 = com.alibaba.fastjson.util.TypeUtils.longExtractValue((java.lang.Number) obj4);
                    int iOrdinal = this.op.ordinal();
                    if (iOrdinal == 0) {
                        return jLongExtractValue2 == jLongExtractValue;
                    }
                    if (iOrdinal == 1) {
                        return jLongExtractValue2 != jLongExtractValue;
                    }
                    if (iOrdinal == 2) {
                        return jLongExtractValue2 > jLongExtractValue;
                    }
                    if (iOrdinal == 3) {
                        return jLongExtractValue2 >= jLongExtractValue;
                    }
                    if (iOrdinal == 4) {
                        return jLongExtractValue2 < jLongExtractValue;
                    }
                    if (iOrdinal == 5) {
                        return jLongExtractValue2 <= jLongExtractValue;
                    }
                } else if (obj4 instanceof java.math.BigDecimal) {
                    int iCompareTo = java.math.BigDecimal.valueOf(jLongExtractValue).compareTo((java.math.BigDecimal) obj4);
                    int iOrdinal2 = this.op.ordinal();
                    return iOrdinal2 != 0 ? iOrdinal2 != 1 ? iOrdinal2 != 2 ? iOrdinal2 != 3 ? iOrdinal2 != 4 ? iOrdinal2 == 5 && iCompareTo >= 0 : iCompareTo > 0 : iCompareTo <= 0 : iCompareTo < 0 : iCompareTo != 0 : iCompareTo == 0;
                }
            }
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class RegMatchSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final com.alibaba.fastjson.JSONPath.Operator op;
        public final java.util.regex.Pattern pattern;

        public RegMatchSegement(java.lang.String str, boolean z, java.util.regex.Pattern pattern, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z);
            this.pattern = pattern;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            return this.pattern.matcher(obj4.toString()).matches();
        }
    }

    public static class RlikeSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final boolean not;
        public final java.util.regex.Pattern pattern;

        public RlikeSegement(java.lang.String str, boolean z, java.lang.String str2, boolean z2) {
            super(str, z);
            this.pattern = java.util.regex.Pattern.compile(str2);
            this.not = z2;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            if (obj4 == null) {
                return false;
            }
            boolean zMatches = this.pattern.matcher(obj4.toString()).matches();
            return this.not ? !zMatches : zMatches;
        }
    }

    public interface Segment {
        java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2);

        void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context);
    }

    public static class SizeSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.SizeSegment instance = new com.alibaba.fastjson.JSONPath.SizeSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Integer eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return java.lang.Integer.valueOf(jSONPath.evalSize(obj2));
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            context.object = java.lang.Integer.valueOf(jSONPath.evalSize(defaultJSONParser.parse()));
        }
    }

    public static class StringInSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final boolean not;
        public final java.lang.String[] values;

        public StringInSegement(java.lang.String str, boolean z, java.lang.String[] strArr, boolean z2) {
            super(str, z);
            this.values = strArr;
            this.not = z2;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            for (java.lang.String str : this.values) {
                if (str == obj4) {
                    return !this.not;
                }
                if (str != null && str.equals(obj4)) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    public static class StringOpSegement extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public final com.alibaba.fastjson.JSONPath.Operator op;
        public final java.lang.String value;

        public StringOpSegement(java.lang.String str, boolean z, java.lang.String str2, com.alibaba.fastjson.JSONPath.Operator operator) {
            super(str, z);
            this.value = str2;
            this.op = operator;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            java.lang.Object obj4 = get(jSONPath, obj, obj3);
            com.alibaba.fastjson.JSONPath.Operator operator = this.op;
            if (operator == com.alibaba.fastjson.JSONPath.Operator.EQ) {
                return this.value.equals(obj4);
            }
            if (operator == com.alibaba.fastjson.JSONPath.Operator.NE) {
                return !this.value.equals(obj4);
            }
            if (obj4 == null) {
                return false;
            }
            int iCompareTo = this.value.compareTo(obj4.toString());
            com.alibaba.fastjson.JSONPath.Operator operator2 = this.op;
            return operator2 == com.alibaba.fastjson.JSONPath.Operator.GE ? iCompareTo <= 0 : operator2 == com.alibaba.fastjson.JSONPath.Operator.GT ? iCompareTo < 0 : operator2 == com.alibaba.fastjson.JSONPath.Operator.LE ? iCompareTo >= 0 : operator2 == com.alibaba.fastjson.JSONPath.Operator.LT && iCompareTo > 0;
        }
    }

    public static class TypeSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.TypeSegment instance = new com.alibaba.fastjson.JSONPath.TypeSegment();

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.String eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            return obj2 == null ? "null" : obj2 instanceof java.util.Collection ? "array" : obj2 instanceof java.lang.Number ? "number" : obj2 instanceof java.lang.Boolean ? "boolean" : ((obj2 instanceof java.lang.String) || (obj2 instanceof java.util.UUID) || (obj2 instanceof java.lang.Enum)) ? "string" : "object";
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public static class ValueSegment extends com.alibaba.fastjson.JSONPath.PropertyFilter {
        public boolean eq;
        public final java.lang.Object value;

        public ValueSegment(java.lang.String str, boolean z, java.lang.Object obj, boolean z2) {
            super(str, z);
            this.eq = true;
            if (obj == null) {
                throw new java.lang.IllegalArgumentException("value is null");
            }
            this.value = obj;
            this.eq = z2;
        }

        @Override // com.alibaba.fastjson.JSONPath.Filter
        public boolean apply(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
            boolean zEquals = this.value.equals(get(jSONPath, obj, obj3));
            return !this.eq ? !zEquals : zEquals;
        }
    }

    public static class WildCardSegment implements com.alibaba.fastjson.JSONPath.Segment {
        public static final com.alibaba.fastjson.JSONPath.WildCardSegment instance = new com.alibaba.fastjson.JSONPath.WildCardSegment(false, false);
        public static final com.alibaba.fastjson.JSONPath.WildCardSegment instance_deep = new com.alibaba.fastjson.JSONPath.WildCardSegment(true, false);
        public static final com.alibaba.fastjson.JSONPath.WildCardSegment instance_deep_objectOnly = new com.alibaba.fastjson.JSONPath.WildCardSegment(true, true);
        public boolean deep;
        public boolean objectOnly;

        public WildCardSegment(boolean z, boolean z2) {
            this.deep = z;
            this.objectOnly = z2;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public java.lang.Object eval(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, java.lang.Object obj2) {
            if (!this.deep) {
                return jSONPath.getPropertyValues(obj2);
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            jSONPath.deepGetPropertyValues(obj2, arrayList);
            return arrayList;
        }

        @Override // com.alibaba.fastjson.JSONPath.Segment
        public void extract(com.alibaba.fastjson.JSONPath jSONPath, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, com.alibaba.fastjson.JSONPath.Context context) {
            if (context.eval) {
                java.lang.Object obj = defaultJSONParser.parse();
                if (this.deep) {
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    if (this.objectOnly) {
                        jSONPath.deepGetObjects(obj, arrayList);
                    } else {
                        jSONPath.deepGetPropertyValues(obj, arrayList);
                    }
                    context.object = arrayList;
                    return;
                }
                if (obj instanceof com.alibaba.fastjson.JSONObject) {
                    java.util.Collection<?> collectionValues = ((com.alibaba.fastjson.JSONObject) obj).values();
                    com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray(collectionValues.size());
                    jSONArray.addAll(collectionValues);
                    context.object = jSONArray;
                    return;
                }
                if (obj instanceof com.alibaba.fastjson.JSONArray) {
                    context.object = obj;
                    return;
                }
            }
            throw new com.alibaba.fastjson.JSONException("TODO");
        }
    }

    public JSONPath(java.lang.String str) {
        this(str, com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), true);
    }

    public JSONPath(java.lang.String str, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, com.alibaba.fastjson.parser.ParserConfig parserConfig, boolean z) {
        if (str == null || str.length() == 0) {
            throw new com.alibaba.fastjson.JSONPathException("json-path can not be null or empty");
        }
        this.path = str;
        this.serializeConfig = serializeConfig;
        this.parserConfig = parserConfig;
        this.ignoreNullValue = z;
    }

    public JSONPath(java.lang.String str, boolean z) {
        this(str, com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance(), com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), z);
    }

    public static void arrayAdd(java.lang.Object obj, java.lang.String str, java.lang.Object... objArr) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        compile(str).arrayAdd(obj, objArr);
    }

    public static int compare(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object d2;
        java.lang.Object f2;
        if (obj.getClass() != obj2.getClass()) {
            java.lang.Class<?> cls = obj.getClass();
            java.lang.Class<?> cls2 = obj2.getClass();
            if (cls == java.math.BigDecimal.class) {
                if (cls2 == java.lang.Integer.class) {
                    f2 = new java.math.BigDecimal(((java.lang.Integer) obj2).intValue());
                } else if (cls2 == java.lang.Long.class) {
                    f2 = new java.math.BigDecimal(((java.lang.Long) obj2).longValue());
                } else if (cls2 == java.lang.Float.class) {
                    f2 = new java.math.BigDecimal(((java.lang.Float) obj2).floatValue());
                } else if (cls2 == java.lang.Double.class) {
                    f2 = new java.math.BigDecimal(((java.lang.Double) obj2).doubleValue());
                }
                obj2 = f2;
            } else if (cls == java.lang.Long.class) {
                if (cls2 == java.lang.Integer.class) {
                    f2 = new java.lang.Long(((java.lang.Integer) obj2).intValue());
                    obj2 = f2;
                } else {
                    if (cls2 == java.math.BigDecimal.class) {
                        d2 = new java.math.BigDecimal(((java.lang.Long) obj).longValue());
                    } else if (cls2 == java.lang.Float.class) {
                        d2 = new java.lang.Float(((java.lang.Long) obj).longValue());
                    } else if (cls2 == java.lang.Double.class) {
                        d2 = new java.lang.Double(((java.lang.Long) obj).longValue());
                    }
                    obj = d2;
                }
            } else if (cls == java.lang.Integer.class) {
                if (cls2 == java.lang.Long.class) {
                    d2 = new java.lang.Long(((java.lang.Integer) obj).intValue());
                } else if (cls2 == java.math.BigDecimal.class) {
                    d2 = new java.math.BigDecimal(((java.lang.Integer) obj).intValue());
                } else if (cls2 == java.lang.Float.class) {
                    d2 = new java.lang.Float(((java.lang.Integer) obj).intValue());
                } else if (cls2 == java.lang.Double.class) {
                    d2 = new java.lang.Double(((java.lang.Integer) obj).intValue());
                }
                obj = d2;
            } else if (cls == java.lang.Double.class) {
                if (cls2 == java.lang.Integer.class) {
                    f2 = new java.lang.Double(((java.lang.Integer) obj2).intValue());
                } else if (cls2 == java.lang.Long.class) {
                    f2 = new java.lang.Double(((java.lang.Long) obj2).longValue());
                } else if (cls2 == java.lang.Float.class) {
                    f2 = new java.lang.Double(((java.lang.Float) obj2).floatValue());
                }
                obj2 = f2;
            } else if (cls == java.lang.Float.class) {
                if (cls2 == java.lang.Integer.class) {
                    f2 = new java.lang.Float(((java.lang.Integer) obj2).intValue());
                } else if (cls2 == java.lang.Long.class) {
                    f2 = new java.lang.Float(((java.lang.Long) obj2).longValue());
                } else if (cls2 == java.lang.Double.class) {
                    d2 = new java.lang.Double(((java.lang.Float) obj).floatValue());
                    obj = d2;
                }
                obj2 = f2;
            }
        }
        return ((java.lang.Comparable) obj).compareTo(obj2);
    }

    public static com.alibaba.fastjson.JSONPath compile(java.lang.String str) {
        if (str == null) {
            throw new com.alibaba.fastjson.JSONPathException("jsonpath can not be null");
        }
        com.alibaba.fastjson.JSONPath jSONPath = pathCache.get(str);
        if (jSONPath != null) {
            return jSONPath;
        }
        com.alibaba.fastjson.JSONPath jSONPath2 = new com.alibaba.fastjson.JSONPath(str);
        if (pathCache.size() >= 1024) {
            return jSONPath2;
        }
        pathCache.putIfAbsent(str, jSONPath2);
        return pathCache.get(str);
    }

    public static com.alibaba.fastjson.JSONPath compile(java.lang.String str, boolean z) {
        if (str == null) {
            throw new com.alibaba.fastjson.JSONPathException("jsonpath can not be null");
        }
        com.alibaba.fastjson.JSONPath jSONPath = pathCache.get(str);
        if (jSONPath != null) {
            return jSONPath;
        }
        com.alibaba.fastjson.JSONPath jSONPath2 = new com.alibaba.fastjson.JSONPath(str, z);
        if (pathCache.size() >= 1024) {
            return jSONPath2;
        }
        pathCache.putIfAbsent(str, jSONPath2);
        return pathCache.get(str);
    }

    public static boolean contains(java.lang.Object obj, java.lang.String str) {
        if (obj == null) {
            return false;
        }
        return compile(str).contains(obj);
    }

    public static boolean containsValue(java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        return compile(str).containsValue(obj, obj2);
    }

    public static boolean eq(java.lang.Object obj, java.lang.Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (obj.getClass() != obj2.getClass() && (obj instanceof java.lang.Number)) {
            if (obj2 instanceof java.lang.Number) {
                return eqNotNull((java.lang.Number) obj, (java.lang.Number) obj2);
            }
            return false;
        }
        return obj.equals(obj2);
    }

    public static boolean eqNotNull(java.lang.Number number, java.lang.Number number2) {
        java.lang.Class<?> cls = number.getClass();
        boolean zIsInt = isInt(cls);
        java.lang.Class<?> cls2 = number2.getClass();
        boolean zIsInt2 = isInt(cls2);
        if (number instanceof java.math.BigDecimal) {
            java.math.BigDecimal bigDecimal = (java.math.BigDecimal) number;
            if (zIsInt2) {
                return bigDecimal.equals(java.math.BigDecimal.valueOf(com.alibaba.fastjson.util.TypeUtils.longExtractValue(number2)));
            }
        }
        if (zIsInt) {
            if (zIsInt2) {
                return number.longValue() == number2.longValue();
            }
            if (number2 instanceof java.math.BigInteger) {
                return java.math.BigInteger.valueOf(number.longValue()).equals((java.math.BigInteger) number);
            }
        }
        if (zIsInt2 && (number instanceof java.math.BigInteger)) {
            return ((java.math.BigInteger) number).equals(java.math.BigInteger.valueOf(com.alibaba.fastjson.util.TypeUtils.longExtractValue(number2)));
        }
        boolean zIsDouble = isDouble(cls);
        boolean zIsDouble2 = isDouble(cls2);
        return ((zIsDouble && zIsDouble2) || ((zIsDouble && zIsInt2) || (zIsDouble2 && zIsInt))) && number.doubleValue() == number2.doubleValue();
    }

    public static java.lang.Object eval(java.lang.Object obj, java.lang.String str) {
        return compile(str).eval(obj);
    }

    public static java.lang.Object eval(java.lang.Object obj, java.lang.String str, boolean z) {
        return compile(str, z).eval(obj);
    }

    public static java.lang.Object extract(java.lang.String str, java.lang.String str2) {
        return extract(str, str2, com.alibaba.fastjson.parser.ParserConfig.global, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, new com.alibaba.fastjson.parser.Feature[0]);
    }

    public static java.lang.Object extract(java.lang.String str, java.lang.String str2, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i, com.alibaba.fastjson.parser.Feature... featureArr) {
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str, parserConfig, i | com.alibaba.fastjson.parser.Feature.OrderedField.mask);
        java.lang.Object objExtract = compile(str2).extract(defaultJSONParser);
        defaultJSONParser.lexer.close();
        return objExtract;
    }

    public static boolean isDouble(java.lang.Class<?> cls) {
        return cls == java.lang.Float.class || cls == java.lang.Double.class;
    }

    public static boolean isInt(java.lang.Class<?> cls) {
        return cls == java.lang.Byte.class || cls == java.lang.Short.class || cls == java.lang.Integer.class || cls == java.lang.Long.class;
    }

    public static java.util.Set<?> keySet(java.lang.Object obj, java.lang.String str) {
        com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
        return jSONPathCompile.evalKeySet(jSONPathCompile.eval(obj));
    }

    public static java.util.Map<java.lang.String, java.lang.Object> paths(java.lang.Object obj) {
        return paths(obj, com.alibaba.fastjson.serializer.SerializeConfig.globalInstance);
    }

    public static java.util.Map<java.lang.String, java.lang.Object> paths(java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException {
        java.util.IdentityHashMap identityHashMap = new java.util.IdentityHashMap();
        java.util.HashMap map = new java.util.HashMap();
        paths(identityHashMap, map, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, obj, serializeConfig);
        return map;
    }

    public static void paths(java.util.Map<java.lang.Object, java.lang.String> map, java.util.Map<java.lang.String, java.lang.Object> map2, java.lang.String str, java.lang.Object obj, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException {
        java.lang.StringBuilder sb;
        if (obj == null) {
            return;
        }
        int i = 0;
        if (map.put(obj, str) != null) {
            java.lang.Class<?> cls = obj.getClass();
            if (!(cls == java.lang.String.class || cls == java.lang.Boolean.class || cls == java.lang.Character.class || cls == java.util.UUID.class || cls.isEnum() || (obj instanceof java.lang.Number) || (obj instanceof java.util.Date))) {
                return;
            }
        }
        map2.put(str, obj);
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                java.lang.Object key = entry.getKey();
                if (key instanceof java.lang.String) {
                    java.lang.StringBuilder sb2 = str.equals(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR) ? new java.lang.StringBuilder() : e.a.c.a.a.o(str);
                    sb2.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                    sb2.append(key);
                    paths(map, map2, sb2.toString(), entry.getValue(), serializeConfig);
                }
            }
            return;
        }
        if (obj instanceof java.util.Collection) {
            for (java.lang.Object obj2 : (java.util.Collection) obj) {
                java.lang.StringBuilder sb3 = str.equals(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR) ? new java.lang.StringBuilder() : e.a.c.a.a.o(str);
                sb3.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                sb3.append(i);
                paths(map, map2, sb3.toString(), obj2, serializeConfig);
                i++;
            }
            return;
        }
        java.lang.Class<?> cls2 = obj.getClass();
        if (cls2.isArray()) {
            int length = java.lang.reflect.Array.getLength(obj);
            while (i < length) {
                java.lang.Object obj3 = java.lang.reflect.Array.get(obj, i);
                java.lang.StringBuilder sb4 = str.equals(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR) ? new java.lang.StringBuilder() : e.a.c.a.a.o(str);
                sb4.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                sb4.append(i);
                paths(map, map2, sb4.toString(), obj3, serializeConfig);
                i++;
            }
            return;
        }
        if (com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(cls2) || cls2.isEnum()) {
            return;
        }
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = serializeConfig.getObjectWriter(cls2);
        if (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
            try {
                for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry2 : ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter).getFieldValuesMap(obj).entrySet()) {
                    java.lang.String key2 = entry2.getKey();
                    if (key2 instanceof java.lang.String) {
                        if (str.equals(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR)) {
                            sb = new java.lang.StringBuilder();
                            sb.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                        } else {
                            sb = new java.lang.StringBuilder();
                            sb.append(str);
                            sb.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                        }
                        sb.append(key2);
                        paths(map, map2, sb.toString(), entry2.getValue(), serializeConfig);
                    }
                }
            } catch (java.lang.Exception e2) {
                throw new com.alibaba.fastjson.JSONException("toJSON error", e2);
            }
        }
    }

    public static java.lang.Object read(java.lang.String str, java.lang.String str2) {
        return compile(str2).eval(com.alibaba.fastjson.JSON.parse(str));
    }

    public static <T> T read(java.lang.String str, java.lang.String str2, java.lang.reflect.Type type) {
        return (T) read(str, str2, type, null);
    }

    public static <T> T read(java.lang.String str, java.lang.String str2, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return (T) compile(str2).eval(com.alibaba.fastjson.JSON.parse(str), type, parserConfig);
    }

    public static boolean remove(java.lang.Object obj, java.lang.String str) {
        return compile(str).remove(obj);
    }

    public static java.lang.Object reserveToArray(java.lang.Object obj, java.lang.String... strArr) {
        com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
        if (strArr != null && strArr.length != 0) {
            for (java.lang.String str : strArr) {
                com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
                jSONPathCompile.init();
                jSONArray.add(jSONPathCompile.eval(obj));
            }
        }
        return jSONArray;
    }

    public static java.lang.Object reserveToObject(java.lang.Object obj, java.lang.String... strArr) {
        java.lang.Object objEval;
        if (strArr == null || strArr.length == 0) {
            return obj;
        }
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject(true);
        for (java.lang.String str : strArr) {
            com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
            jSONPathCompile.init();
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = jSONPathCompile.segments;
            if ((segmentArr[segmentArr.length - 1] instanceof com.alibaba.fastjson.JSONPath.PropertySegment) && (objEval = jSONPathCompile.eval(obj)) != null) {
                jSONPathCompile.set(jSONObject, objEval);
            }
        }
        return jSONObject;
    }

    public static boolean set(java.lang.Object obj, java.lang.String str, java.lang.Object obj2) {
        return compile(str).set(obj, obj2);
    }

    public static int size(java.lang.Object obj, java.lang.String str) {
        com.alibaba.fastjson.JSONPath jSONPathCompile = compile(str);
        return jSONPathCompile.evalSize(jSONPathCompile.eval(obj));
    }

    public void arrayAdd(java.lang.Object obj, java.lang.Object... objArr) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        if (objArr == null || objArr.length == 0 || obj == null) {
            return;
        }
        init();
        java.lang.Object obj2 = null;
        int i = 0;
        int i2 = 0;
        java.lang.Object objEval = obj;
        while (true) {
            if (i2 >= this.segments.length) {
                break;
            }
            if (i2 == r4.length - 1) {
                obj2 = objEval;
            }
            objEval = this.segments[i2].eval(this, obj, objEval);
            i2++;
        }
        if (objEval == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("value not found in path ");
            sbO.append(this.path);
            throw new com.alibaba.fastjson.JSONPathException(sbO.toString());
        }
        if (objEval instanceof java.util.Collection) {
            java.util.Collection collection = (java.util.Collection) objEval;
            int length = objArr.length;
            while (i < length) {
                collection.add(objArr[i]);
                i++;
            }
            return;
        }
        java.lang.Class<?> cls = objEval.getClass();
        if (!cls.isArray()) {
            throw new com.alibaba.fastjson.JSONException("unsupported array put operation. " + cls);
        }
        int length2 = java.lang.reflect.Array.getLength(objEval);
        java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(cls.getComponentType(), objArr.length + length2);
        java.lang.System.arraycopy(objEval, 0, objNewInstance, 0, length2);
        while (i < objArr.length) {
            java.lang.reflect.Array.set(objNewInstance, length2 + i, objArr[i]);
            i++;
        }
        com.alibaba.fastjson.JSONPath.Segment segment = this.segments[r8.length - 1];
        if (segment instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
            ((com.alibaba.fastjson.JSONPath.PropertySegment) segment).setValue(this, obj2, objNewInstance);
        } else {
            if (!(segment instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment)) {
                throw new java.lang.UnsupportedOperationException();
            }
            ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment).setValue(this, obj2, objNewInstance);
        }
    }

    public boolean contains(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        init();
        java.lang.Object obj2 = obj;
        int i = 0;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i >= segmentArr.length) {
                return true;
            }
            java.lang.Object objEval = segmentArr[i].eval(this, obj, obj2);
            if (objEval == null) {
                return false;
            }
            if (objEval == java.util.Collections.EMPTY_LIST && (obj2 instanceof java.util.List)) {
                return ((java.util.List) obj2).contains(objEval);
            }
            i++;
            obj2 = objEval;
        }
    }

    public boolean containsValue(java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object objEval = eval(obj);
        if (objEval == obj2) {
            return true;
        }
        if (objEval == null) {
            return false;
        }
        if (!(objEval instanceof java.lang.Iterable)) {
            return eq(objEval, obj2);
        }
        java.util.Iterator it = ((java.lang.Iterable) objEval).iterator();
        while (it.hasNext()) {
            if (eq(it.next(), obj2)) {
                return true;
            }
        }
        return false;
    }

    public void deepGetObjects(java.lang.Object obj, java.util.List<java.lang.Object> list) {
        java.util.Collection fieldValues;
        java.lang.Class<?> cls = obj.getClass();
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(cls);
        if (javaBeanSerializer != null) {
            try {
                fieldValues = javaBeanSerializer.getFieldValues(obj);
                list.add(obj);
            } catch (java.lang.Exception e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("jsonpath error, path ");
                sbO.append(this.path);
                throw new com.alibaba.fastjson.JSONPathException(sbO.toString(), e2);
            }
        } else if (obj instanceof java.util.Map) {
            list.add(obj);
            fieldValues = ((java.util.Map) obj).values();
        } else {
            fieldValues = obj instanceof java.util.Collection ? (java.util.Collection) obj : null;
        }
        if (fieldValues == null) {
            throw new java.lang.UnsupportedOperationException(cls.getName());
        }
        for (java.lang.Object obj2 : fieldValues) {
            if (obj2 != null && !com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(obj2.getClass())) {
                deepGetObjects(obj2, list);
            }
        }
    }

    public void deepGetPropertyValues(java.lang.Object obj, java.util.List<java.lang.Object> list) {
        java.util.Collection fieldValues;
        java.lang.Class<?> cls = obj.getClass();
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(cls);
        if (javaBeanSerializer != null) {
            try {
                fieldValues = javaBeanSerializer.getFieldValues(obj);
            } catch (java.lang.Exception e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("jsonpath error, path ");
                sbO.append(this.path);
                throw new com.alibaba.fastjson.JSONPathException(sbO.toString(), e2);
            }
        } else {
            fieldValues = obj instanceof java.util.Map ? ((java.util.Map) obj).values() : obj instanceof java.util.Collection ? (java.util.Collection) obj : null;
        }
        if (fieldValues == null) {
            throw new java.lang.UnsupportedOperationException(cls.getName());
        }
        for (java.lang.Object obj2 : fieldValues) {
            if (obj2 == null || com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(obj2.getClass())) {
                list.add(obj2);
            } else {
                deepGetPropertyValues(obj2, list);
            }
        }
    }

    public void deepScan(java.lang.Object obj, java.lang.String str, java.util.List<java.lang.Object> list) {
        if (obj == null) {
            return;
        }
        if (obj instanceof java.util.Map) {
            for (java.util.Map.Entry entry : ((java.util.Map) obj).entrySet()) {
                java.lang.Object value = entry.getValue();
                if (str.equals(entry.getKey())) {
                    if (value instanceof java.util.Collection) {
                        list.addAll((java.util.Collection) value);
                    } else {
                        list.add(value);
                    }
                } else if (value != null && !com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(value.getClass())) {
                    deepScan(value, str, list);
                }
            }
            return;
        }
        if (obj instanceof java.util.Collection) {
            for (java.lang.Object obj2 : (java.util.Collection) obj) {
                if (!com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(obj2.getClass())) {
                    deepScan(obj2, str, list);
                }
            }
            return;
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            if (obj instanceof java.util.List) {
                java.util.List list2 = (java.util.List) obj;
                for (int i = 0; i < list2.size(); i++) {
                    deepScan(list2.get(i), str, list);
                }
                return;
            }
            return;
        }
        try {
            com.alibaba.fastjson.serializer.FieldSerializer fieldSerializer = javaBeanSerializer.getFieldSerializer(str);
            if (fieldSerializer == null) {
                java.util.Iterator<java.lang.Object> it = javaBeanSerializer.getFieldValues(obj).iterator();
                while (it.hasNext()) {
                    deepScan(it.next(), str, list);
                }
                return;
            }
            try {
                list.add(fieldSerializer.getPropertyValueDirect(obj));
            } catch (java.lang.IllegalAccessException e2) {
                throw new com.alibaba.fastjson.JSONException("getFieldValue error." + str, e2);
            } catch (java.lang.reflect.InvocationTargetException e3) {
                throw new com.alibaba.fastjson.JSONException("getFieldValue error." + str, e3);
            }
        } catch (java.lang.Exception e4) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("jsonpath error, path ");
            sbO.append(this.path);
            sbO.append(", segement ");
            sbO.append(str);
            throw new com.alibaba.fastjson.JSONPathException(sbO.toString(), e4);
        }
    }

    public void deepSet(java.lang.Object obj, java.lang.String str, long j, java.lang.Object obj2) {
        if (obj == null) {
            return;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (map.containsKey(str)) {
                map.get(str);
                map.put(str, obj2);
                return;
            } else {
                java.util.Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    deepSet(it.next(), str, j, obj2);
                }
                return;
            }
        }
        java.lang.Class<?> cls = obj.getClass();
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = getJavaBeanDeserializer(cls);
        if (javaBeanDeserializer == null) {
            if (obj instanceof java.util.List) {
                java.util.List list = (java.util.List) obj;
                for (int i = 0; i < list.size(); i++) {
                    deepSet(list.get(i), str, j, obj2);
                }
                return;
            }
            return;
        }
        try {
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
            if (fieldDeserializer != null) {
                fieldDeserializer.setValue(obj, obj2);
                return;
            }
            java.util.Iterator<java.lang.Object> it2 = getJavaBeanSerializer(cls).getObjectFieldValues(obj).iterator();
            while (it2.hasNext()) {
                deepSet(it2.next(), str, j, obj2);
            }
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("jsonpath error, path ");
            sbO.append(this.path);
            sbO.append(", segement ");
            sbO.append(str);
            throw new com.alibaba.fastjson.JSONPathException(sbO.toString(), e2);
        }
    }

    public java.lang.Object eval(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        init();
        int i = 0;
        java.lang.Object objEval = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i >= segmentArr.length) {
                return objEval;
            }
            objEval = segmentArr[i].eval(this, obj, objEval);
            i++;
        }
    }

    public <T> T eval(java.lang.Object obj, java.lang.reflect.Type type) {
        return (T) eval(obj, type, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public <T> T eval(java.lang.Object obj, java.lang.reflect.Type type, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        return (T) com.alibaba.fastjson.util.TypeUtils.cast(eval(obj), type, parserConfig);
    }

    public java.util.Set<?> evalKeySet(java.lang.Object obj) {
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer;
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.util.Map) {
            return ((java.util.Map) obj).keySet();
        }
        if ((obj instanceof java.util.Collection) || (obj instanceof java.lang.Object[]) || obj.getClass().isArray() || (javaBeanSerializer = getJavaBeanSerializer(obj.getClass())) == null) {
            return null;
        }
        try {
            return javaBeanSerializer.getFieldNames(obj);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("evalKeySet error : ");
            sbO.append(this.path);
            throw new com.alibaba.fastjson.JSONPathException(sbO.toString(), e2);
        }
    }

    public int evalSize(java.lang.Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof java.util.Collection) {
            return ((java.util.Collection) obj).size();
        }
        if (obj instanceof java.lang.Object[]) {
            return ((java.lang.Object[]) obj).length;
        }
        if (obj.getClass().isArray()) {
            return java.lang.reflect.Array.getLength(obj);
        }
        if (obj instanceof java.util.Map) {
            int i = 0;
            java.util.Iterator it = ((java.util.Map) obj).values().iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    i++;
                }
            }
            return i;
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            return -1;
        }
        try {
            return javaBeanSerializer.getSize(obj);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("evalSize error : ");
            sbO.append(this.path);
            throw new com.alibaba.fastjson.JSONPathException(sbO.toString(), e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object extract(com.alibaba.fastjson.parser.DefaultJSONParser r9) {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L4
            return r0
        L4:
            r8.init()
            boolean r1 = r8.hasRefSegment
            if (r1 == 0) goto L14
        Lb:
            java.lang.Object r9 = r9.parse()
            java.lang.Object r9 = r8.eval(r9)
            return r9
        L14:
            com.alibaba.fastjson.JSONPath$Segment[] r1 = r8.segments
            int r2 = r1.length
            if (r2 != 0) goto L1e
            java.lang.Object r9 = r9.parse()
            return r9
        L1e:
            int r2 = r1.length
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            boolean r2 = r1 instanceof com.alibaba.fastjson.JSONPath.TypeSegment
            if (r2 != 0) goto Lb
            boolean r2 = r1 instanceof com.alibaba.fastjson.JSONPath.FloorSegment
            if (r2 != 0) goto Lb
            boolean r1 = r1 instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment
            if (r1 == 0) goto L30
            goto Lb
        L30:
            r1 = 0
            r4 = r0
            r2 = 0
        L33:
            com.alibaba.fastjson.JSONPath$Segment[] r5 = r8.segments
            int r6 = r5.length
            if (r2 >= r6) goto La8
            r6 = r5[r2]
            int r5 = r5.length
            int r5 = r5 - r3
            if (r2 != r5) goto L40
            r5 = 1
            goto L41
        L40:
            r5 = 0
        L41:
            if (r4 == 0) goto L4e
            java.lang.Object r7 = r4.object
            if (r7 == 0) goto L4e
            java.lang.Object r5 = r6.eval(r8, r0, r7)
            r4.object = r5
            goto La5
        L4e:
            if (r5 != 0) goto L9b
            com.alibaba.fastjson.JSONPath$Segment[] r5 = r8.segments
            int r7 = r2 + 1
            r5 = r5[r7]
            boolean r7 = r6 instanceof com.alibaba.fastjson.JSONPath.PropertySegment
            if (r7 == 0) goto L7c
            r7 = r6
            com.alibaba.fastjson.JSONPath$PropertySegment r7 = (com.alibaba.fastjson.JSONPath.PropertySegment) r7
            boolean r7 = com.alibaba.fastjson.JSONPath.PropertySegment.access$100(r7)
            if (r7 == 0) goto L7c
            boolean r7 = r5 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment
            if (r7 != 0) goto L9b
            boolean r7 = r5 instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment
            if (r7 != 0) goto L9b
            boolean r7 = r5 instanceof com.alibaba.fastjson.JSONPath.MultiPropertySegment
            if (r7 != 0) goto L9b
            boolean r7 = r5 instanceof com.alibaba.fastjson.JSONPath.SizeSegment
            if (r7 != 0) goto L9b
            boolean r7 = r5 instanceof com.alibaba.fastjson.JSONPath.PropertySegment
            if (r7 != 0) goto L9b
            boolean r7 = r5 instanceof com.alibaba.fastjson.JSONPath.FilterSegment
            if (r7 == 0) goto L7c
            goto L9b
        L7c:
            boolean r7 = r5 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment
            if (r7 == 0) goto L8a
            r7 = r5
            com.alibaba.fastjson.JSONPath$ArrayAccessSegment r7 = (com.alibaba.fastjson.JSONPath.ArrayAccessSegment) r7
            int r7 = com.alibaba.fastjson.JSONPath.ArrayAccessSegment.access$200(r7)
            if (r7 >= 0) goto L8a
            goto L9b
        L8a:
            boolean r5 = r5 instanceof com.alibaba.fastjson.JSONPath.FilterSegment
            if (r5 == 0) goto L8f
            goto L9b
        L8f:
            boolean r5 = r6 instanceof com.alibaba.fastjson.JSONPath.WildCardSegment
            if (r5 == 0) goto L94
            goto L9b
        L94:
            boolean r5 = r6 instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment
            if (r5 == 0) goto L99
            goto L9b
        L99:
            r5 = 0
            goto L9c
        L9b:
            r5 = 1
        L9c:
            com.alibaba.fastjson.JSONPath$Context r7 = new com.alibaba.fastjson.JSONPath$Context
            r7.<init>(r4, r5)
            r6.extract(r8, r9, r7)
            r4 = r7
        La5:
            int r2 = r2 + 1
            goto L33
        La8:
            java.lang.Object r9 = r4.object
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.extract(com.alibaba.fastjson.parser.DefaultJSONParser):java.lang.Object");
    }

    public java.lang.Object getArrayItem(java.lang.Object obj, int i) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof java.util.List) {
            java.util.List list = (java.util.List) obj;
            if (i >= 0) {
                if (i < list.size()) {
                    return list.get(i);
                }
                return null;
            }
            if (java.lang.Math.abs(i) <= list.size()) {
                return list.get(list.size() + i);
            }
            return null;
        }
        if (obj.getClass().isArray()) {
            int length = java.lang.reflect.Array.getLength(obj);
            if (i >= 0) {
                if (i < length) {
                    return java.lang.reflect.Array.get(obj, i);
                }
                return null;
            }
            if (java.lang.Math.abs(i) <= length) {
                return java.lang.reflect.Array.get(obj, length + i);
            }
            return null;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            java.lang.Object obj2 = map.get(java.lang.Integer.valueOf(i));
            return obj2 == null ? map.get(java.lang.Integer.toString(i)) : obj2;
        }
        if (!(obj instanceof java.util.Collection)) {
            if (i == 0) {
                return obj;
            }
            throw new java.lang.UnsupportedOperationException();
        }
        int i2 = 0;
        for (java.lang.Object obj3 : (java.util.Collection) obj) {
            if (i2 == i) {
                return obj3;
            }
            i2++;
        }
        return null;
    }

    public com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer getJavaBeanDeserializer(java.lang.Class<?> cls) {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.parserConfig.getDeserializer(cls);
        if (deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
            return (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer;
        }
        return null;
    }

    public com.alibaba.fastjson.serializer.JavaBeanSerializer getJavaBeanSerializer(java.lang.Class<?> cls) {
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = this.serializeConfig.getObjectWriter(cls);
        if (objectWriter instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer) {
            return (com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter;
        }
        return null;
    }

    public java.lang.String getPath() {
        return this.path;
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0105 A[PHI: r0
  0x0105: PHI (r0v4 java.lang.Object) = (r0v3 java.lang.Object), (r0v5 java.lang.Object), (r0v5 java.lang.Object) binds: [B:69:0x00ee, B:74:0x00ff, B:76:0x0103] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getPropertyValue(java.lang.Object r9, java.lang.String r10, long r11) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.getPropertyValue(java.lang.Object, java.lang.String, long):java.lang.Object");
    }

    public java.util.Collection<java.lang.Object> getPropertyValues(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        com.alibaba.fastjson.serializer.JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer != null) {
            try {
                return javaBeanSerializer.getFieldValues(obj);
            } catch (java.lang.Exception e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("jsonpath error, path ");
                sbO.append(this.path);
                throw new com.alibaba.fastjson.JSONPathException(sbO.toString(), e2);
            }
        }
        if (obj instanceof java.util.Map) {
            return ((java.util.Map) obj).values();
        }
        if (obj instanceof java.util.Collection) {
            return (java.util.Collection) obj;
        }
        throw new java.lang.UnsupportedOperationException();
    }

    public void init() {
        if (this.segments != null) {
            return;
        }
        if ("*".equals(this.path)) {
            this.segments = new com.alibaba.fastjson.JSONPath.Segment[]{com.alibaba.fastjson.JSONPath.WildCardSegment.instance};
            return;
        }
        com.alibaba.fastjson.JSONPath.JSONPathParser jSONPathParser = new com.alibaba.fastjson.JSONPath.JSONPathParser(this.path);
        this.segments = jSONPathParser.explain();
        this.hasRefSegment = jSONPathParser.hasRefSegment;
    }

    public boolean isRef() {
        try {
            init();
            for (int i = 0; i < this.segments.length; i++) {
                java.lang.Class<?> cls = this.segments[i].getClass();
                if (cls != com.alibaba.fastjson.JSONPath.ArrayAccessSegment.class && cls != com.alibaba.fastjson.JSONPath.PropertySegment.class) {
                    return false;
                }
            }
            return true;
        } catch (com.alibaba.fastjson.JSONPathException unused) {
            return false;
        }
    }

    public java.util.Set<?> keySet(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        init();
        int i = 0;
        java.lang.Object objEval = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i >= segmentArr.length) {
                return evalKeySet(objEval);
            }
            objEval = segmentArr[i].eval(this, obj, objEval);
            i++;
        }
    }

    public void patchAdd(java.lang.Object obj, java.lang.Object obj2, boolean z) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        if (obj == null) {
            return;
        }
        init();
        java.lang.Object obj3 = null;
        int i = 0;
        java.lang.Object obj4 = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i >= segmentArr.length) {
                break;
            }
            com.alibaba.fastjson.JSONPath.Segment segment = segmentArr[i];
            java.lang.Object objEval = segment.eval(this, obj, obj4);
            if (objEval == null && i != this.segments.length - 1 && (segment instanceof com.alibaba.fastjson.JSONPath.PropertySegment)) {
                objEval = new com.alibaba.fastjson.JSONObject();
                ((com.alibaba.fastjson.JSONPath.PropertySegment) segment).setValue(this, obj4, objEval);
            }
            i++;
            obj3 = obj4;
            obj4 = objEval;
        }
        if (!z && (obj4 instanceof java.util.Collection)) {
            ((java.util.Collection) obj4).add(obj2);
            return;
        }
        if (obj4 != null && !z) {
            java.lang.Class<?> cls = obj4.getClass();
            if (cls.isArray()) {
                int length = java.lang.reflect.Array.getLength(obj4);
                java.lang.Object objNewInstance = java.lang.reflect.Array.newInstance(cls.getComponentType(), length + 1);
                java.lang.System.arraycopy(obj4, 0, objNewInstance, 0, length);
                java.lang.reflect.Array.set(objNewInstance, length, obj2);
                obj2 = objNewInstance;
            } else if (!java.util.Map.class.isAssignableFrom(cls)) {
                throw new com.alibaba.fastjson.JSONException("unsupported array put operation. " + cls);
            }
        }
        com.alibaba.fastjson.JSONPath.Segment segment2 = this.segments[r7.length - 1];
        if (segment2 instanceof com.alibaba.fastjson.JSONPath.PropertySegment) {
            ((com.alibaba.fastjson.JSONPath.PropertySegment) segment2).setValue(this, obj3, obj2);
        } else {
            if (!(segment2 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment)) {
                throw new java.lang.UnsupportedOperationException();
            }
            ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) segment2).setValue(this, obj3, obj2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x008f, code lost:
    
        if (r1 != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0091, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0094, code lost:
    
        if ((r2 instanceof com.alibaba.fastjson.JSONPath.PropertySegment) == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0096, code lost:
    
        r2 = (com.alibaba.fastjson.JSONPath.PropertySegment) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009a, code lost:
    
        if ((r1 instanceof java.util.Collection) == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009c, code lost:
    
        r12 = r11.segments;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x009f, code lost:
    
        if (r12.length <= 1) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a1, code lost:
    
        r12 = r12[r12.length - 2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a8, code lost:
    
        if ((r12 instanceof com.alibaba.fastjson.JSONPath.RangeSegment) != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ac, code lost:
    
        if ((r12 instanceof com.alibaba.fastjson.JSONPath.MultiIndexSegment) == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ae, code lost:
    
        r12 = ((java.util.Collection) r1).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b8, code lost:
    
        if (r12.hasNext() == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c2, code lost:
    
        if (r2.remove(r11, r12.next()) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00c4, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c6, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00cb, code lost:
    
        return r2.remove(r11, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ce, code lost:
    
        if ((r2 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment) == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d6, code lost:
    
        return ((com.alibaba.fastjson.JSONPath.ArrayAccessSegment) r2).remove(r11, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00d9, code lost:
    
        if ((r2 instanceof com.alibaba.fastjson.JSONPath.FilterSegment) == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e1, code lost:
    
        return ((com.alibaba.fastjson.JSONPath.FilterSegment) r2).remove(r11, r12, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00e8, code lost:
    
        throw new java.lang.UnsupportedOperationException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean remove(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.remove(java.lang.Object):boolean");
    }

    public boolean removeArrayItem(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, int i) {
        if (!(obj instanceof java.util.List)) {
            throw new com.alibaba.fastjson.JSONPathException("unsupported set operation." + obj.getClass());
        }
        java.util.List list = (java.util.List) obj;
        int size = list.size();
        if (i >= 0) {
            if (i >= size) {
                return false;
            }
            list.remove(i);
            return true;
        }
        int i2 = size + i;
        if (i2 < 0) {
            return false;
        }
        list.remove(i2);
        return true;
    }

    public boolean removePropertyValue(java.lang.Object obj, java.lang.String str, boolean z) {
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            z = map.remove(str) != null;
            if (z) {
                java.util.Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    removePropertyValue(it.next(), str, z);
                }
            }
            return z;
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.parserConfig.getDeserializer(obj.getClass());
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer ? (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer : null;
        if (javaBeanDeserializer == null) {
            if (z) {
                return false;
            }
            throw new java.lang.UnsupportedOperationException();
        }
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
        if (fieldDeserializer != null) {
            fieldDeserializer.setValue(obj, (java.lang.String) null);
        } else {
            z = false;
        }
        if (z) {
            for (java.lang.Object obj2 : getPropertyValues(obj)) {
                if (obj2 != null) {
                    removePropertyValue(obj2, str, z);
                }
            }
        }
        return z;
    }

    public boolean set(java.lang.Object obj, java.lang.Object obj2) {
        return set(obj, obj2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean set(java.lang.Object r9, java.lang.Object r10, boolean r11) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r8 = this;
            r11 = 0
            if (r9 != 0) goto L4
            return r11
        L4:
            r8.init()
            r0 = 0
            r2 = r9
            r3 = r0
            r1 = 0
        Lb:
            com.alibaba.fastjson.JSONPath$Segment[] r4 = r8.segments
            int r5 = r4.length
            r6 = 1
            if (r1 >= r5) goto L86
            r3 = r4[r1]
            java.lang.Object r4 = r3.eval(r8, r9, r2)
            if (r4 != 0) goto L81
            com.alibaba.fastjson.JSONPath$Segment[] r4 = r8.segments
            int r5 = r4.length
            int r5 = r5 - r6
            if (r1 >= r5) goto L24
            int r5 = r1 + 1
            r4 = r4[r5]
            goto L25
        L24:
            r4 = r0
        L25:
            boolean r5 = r4 instanceof com.alibaba.fastjson.JSONPath.PropertySegment
            if (r5 == 0) goto L61
            boolean r4 = r3 instanceof com.alibaba.fastjson.JSONPath.PropertySegment
            if (r4 == 0) goto L4b
            r4 = r3
            com.alibaba.fastjson.JSONPath$PropertySegment r4 = (com.alibaba.fastjson.JSONPath.PropertySegment) r4
            java.lang.String r4 = com.alibaba.fastjson.JSONPath.PropertySegment.access$400(r4)
            java.lang.Class r5 = r2.getClass()
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r5 = r8.getJavaBeanDeserializer(r5)
            if (r5 == 0) goto L4b
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r4 = r5.getFieldDeserializer(r4)
            com.alibaba.fastjson.util.FieldInfo r4 = r4.fieldInfo
            java.lang.Class<?> r4 = r4.fieldClass
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r5 = r8.getJavaBeanDeserializer(r4)
            goto L4d
        L4b:
            r4 = r0
            r5 = r4
        L4d:
            if (r5 == 0) goto L5b
            com.alibaba.fastjson.util.JavaBeanInfo r7 = r5.beanInfo
            java.lang.reflect.Constructor<?> r7 = r7.defaultConstructor
            if (r7 == 0) goto L5a
            java.lang.Object r4 = r5.createInstance(r0, r4)
            goto L6c
        L5a:
            return r11
        L5b:
            com.alibaba.fastjson.JSONObject r4 = new com.alibaba.fastjson.JSONObject
            r4.<init>()
            goto L6c
        L61:
            boolean r4 = r4 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment
            if (r4 == 0) goto L6b
            com.alibaba.fastjson.JSONArray r4 = new com.alibaba.fastjson.JSONArray
            r4.<init>()
            goto L6c
        L6b:
            r4 = r0
        L6c:
            if (r4 == 0) goto L87
            boolean r5 = r3 instanceof com.alibaba.fastjson.JSONPath.PropertySegment
            if (r5 == 0) goto L78
            com.alibaba.fastjson.JSONPath$PropertySegment r3 = (com.alibaba.fastjson.JSONPath.PropertySegment) r3
            r3.setValue(r8, r2, r4)
            goto L81
        L78:
            boolean r5 = r3 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment
            if (r5 == 0) goto L87
            com.alibaba.fastjson.JSONPath$ArrayAccessSegment r3 = (com.alibaba.fastjson.JSONPath.ArrayAccessSegment) r3
            r3.setValue(r8, r2, r4)
        L81:
            int r1 = r1 + 1
            r3 = r2
            r2 = r4
            goto Lb
        L86:
            r2 = r3
        L87:
            if (r2 != 0) goto L8a
            return r11
        L8a:
            com.alibaba.fastjson.JSONPath$Segment[] r9 = r8.segments
            int r11 = r9.length
            int r11 = r11 - r6
            r9 = r9[r11]
            boolean r11 = r9 instanceof com.alibaba.fastjson.JSONPath.PropertySegment
            if (r11 == 0) goto L9a
            com.alibaba.fastjson.JSONPath$PropertySegment r9 = (com.alibaba.fastjson.JSONPath.PropertySegment) r9
            r9.setValue(r8, r2, r10)
            return r6
        L9a:
            boolean r11 = r9 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegment
            if (r11 == 0) goto La5
            com.alibaba.fastjson.JSONPath$ArrayAccessSegment r9 = (com.alibaba.fastjson.JSONPath.ArrayAccessSegment) r9
            boolean r9 = r9.setValue(r8, r2, r10)
            return r9
        La5:
            java.lang.UnsupportedOperationException r9 = new java.lang.UnsupportedOperationException
            r9.<init>()
            goto Lac
        Lab:
            throw r9
        Lac:
            goto Lab
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.set(java.lang.Object, java.lang.Object, boolean):boolean");
    }

    public boolean setArrayItem(com.alibaba.fastjson.JSONPath jSONPath, java.lang.Object obj, int i, java.lang.Object obj2) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException {
        if (obj instanceof java.util.List) {
            java.util.List list = (java.util.List) obj;
            if (i >= 0) {
                list.set(i, obj2);
            } else {
                list.set(list.size() + i, obj2);
            }
            return true;
        }
        java.lang.Class<?> cls = obj.getClass();
        if (!cls.isArray()) {
            throw new com.alibaba.fastjson.JSONPathException("unsupported set operation." + cls);
        }
        int length = java.lang.reflect.Array.getLength(obj);
        if (i >= 0) {
            if (i < length) {
                java.lang.reflect.Array.set(obj, i, obj2);
            }
        } else if (java.lang.Math.abs(i) <= length) {
            java.lang.reflect.Array.set(obj, length + i, obj2);
        }
        return true;
    }

    public boolean setPropertyValue(java.lang.Object obj, java.lang.String str, long j, java.lang.Object obj2) {
        if (obj instanceof java.util.Map) {
            ((java.util.Map) obj).put(str, obj2);
            return true;
        }
        if (obj instanceof java.util.List) {
            for (java.lang.Object obj3 : (java.util.List) obj) {
                if (obj3 != null) {
                    setPropertyValue(obj3, str, j, obj2);
                }
            }
            return true;
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.parserConfig.getDeserializer(obj.getClass());
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer ? (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer : null;
        if (javaBeanDeserializer == null) {
            throw new java.lang.UnsupportedOperationException();
        }
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(j);
        if (fieldDeserializer == null) {
            return false;
        }
        if (obj2 != null) {
            java.lang.Class<?> cls = obj2.getClass();
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
            if (cls != fieldInfo.fieldClass) {
                obj2 = com.alibaba.fastjson.util.TypeUtils.cast(obj2, fieldInfo.fieldType, this.parserConfig);
            }
        }
        fieldDeserializer.setValue(obj, obj2);
        return true;
    }

    public int size(java.lang.Object obj) {
        if (obj == null) {
            return -1;
        }
        init();
        int i = 0;
        java.lang.Object objEval = obj;
        while (true) {
            com.alibaba.fastjson.JSONPath.Segment[] segmentArr = this.segments;
            if (i >= segmentArr.length) {
                return evalSize(objEval);
            }
            objEval = segmentArr[i].eval(this, obj, objEval);
            i++;
        }
    }

    @Override // com.alibaba.fastjson.JSONAware
    public java.lang.String toJSONString() {
        return com.alibaba.fastjson.JSON.toJSONString(this.path);
    }
}
