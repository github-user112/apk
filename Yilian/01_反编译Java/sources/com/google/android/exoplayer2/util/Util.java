package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class Util {
    public static final int[] CRC32_BYTES_MSBF;
    public static final int[] CRC8_BYTES_MSBF;
    public static final java.lang.String DEVICE_DEBUG_INFO;
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final java.util.regex.Pattern ESCAPED_CHARACTER_PATTERN;
    public static final java.lang.String ISM_DASH_FORMAT_EXTENSION = "format=mpd-time-csf";
    public static final java.lang.String ISM_HLS_FORMAT_EXTENSION = "format=m3u8-aapl";
    public static final java.util.regex.Pattern ISM_URL_PATTERN;
    public static final java.lang.String MODEL;
    public static final java.lang.String TAG = "Util";
    public static final java.util.regex.Pattern XS_DATE_TIME_PATTERN;
    public static final java.util.regex.Pattern XS_DURATION_PATTERN;
    public static final java.lang.String[] additionalIsoLanguageReplacements;
    public static final java.lang.String[] isoLegacyTagReplacements;
    public static java.util.HashMap<java.lang.String, java.lang.String> languageTagReplacementMap;
    public static final int SDK_INT = android.os.Build.VERSION.SDK_INT;
    public static final java.lang.String DEVICE = android.os.Build.DEVICE;
    public static final java.lang.String MANUFACTURER = android.os.Build.MANUFACTURER;

    static {
        java.lang.String str = android.os.Build.MODEL;
        MODEL = str;
        java.lang.String str2 = DEVICE;
        java.lang.String str3 = MANUFACTURER;
        int i = SDK_INT;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str3, e.a.c.a.a.m(str, e.a.c.a.a.m(str2, 17))), str2, ", ", str, ", ");
        sbL.append(str3);
        sbL.append(", ");
        sbL.append(i);
        DEVICE_DEBUG_INFO = sbL.toString();
        EMPTY_BYTE_ARRAY = new byte[0];
        XS_DATE_TIME_PATTERN = java.util.regex.Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        XS_DURATION_PATTERN = java.util.regex.Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        ESCAPED_CHARACTER_PATTERN = java.util.regex.Pattern.compile("%([A-Fa-f0-9]{2})");
        ISM_URL_PATTERN = java.util.regex.Pattern.compile(".*\\.isml?(?:/(manifest(.*))?)?");
        additionalIsoLanguageReplacements = new java.lang.String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", com.umeng.analytics.pro.ai.ae, com.umeng.commonsdk.statistics.idtracking.g.a, "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        isoLegacyTagReplacements = new java.lang.String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        CRC32_BYTES_MSBF = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        CRC8_BYTES_MSBF = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_TIME_CODE, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_BLOCK_ADD_ID, 233, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_DEX, 251, 242, 245, com.tencent.tinker.android.dx.instruction.Opcodes.ADD_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.XOR_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.OR_INT_LIT16, 209, com.tencent.tinker.android.dx.instruction.Opcodes.SHR_LONG_2ADDR, com.tencent.tinker.android.dx.instruction.Opcodes.SHL_LONG_2ADDR, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_FLOAT, com.tencent.tinker.android.dx.instruction.Opcodes.REM_DOUBLE, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.REM_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.AND_INT_LIT16, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_INT_LIT16, 255, net.easyconn.framework.broadcast.BroadcastManager.DIRECTION_248, com.google.android.exoplayer2.extractor.mkv.MatroskaExtractor.ID_CUE_CLUSTER_POSITION, 246, 227, 228, 237, 234, 183, 176, 185, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_LONG_2ADDR, com.tencent.tinker.android.dx.instruction.Opcodes.ADD_DOUBLE, 172, 165, 162, 143, 136, 129, 134, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, com.tencent.tinker.android.dx.instruction.Opcodes.REM_LONG_2ADDR, 184, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_DOUBLE, com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT, 163, com.tencent.tinker.android.dx.instruction.Opcodes.SHR_LONG, 249, com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_RESOURCE, 247, 240, 229, com.tencent.tinker.android.dx.instruction.Opcodes.USHR_INT_LIT8, 235, 236, 193, 198, 207, 200, com.tencent.tinker.android.dx.instruction.Opcodes.AND_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_INT_LIT16, com.tencent.tinker.android.dx.instruction.Opcodes.REM_INT_LIT16, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, com.tencent.tinker.android.dx.instruction.Opcodes.OR_INT_LIT8, com.tencent.tinker.android.dx.instruction.Opcodes.RSUB_INT_LIT8, 208, 215, com.tencent.tinker.android.dx.instruction.Opcodes.XOR_LONG_2ADDR, com.tencent.tinker.android.dx.instruction.Opcodes.USHR_LONG_2ADDR, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    public static /* synthetic */ java.lang.Thread a(java.lang.String str, java.lang.Runnable runnable) {
        return new java.lang.Thread(runnable, str);
    }

    public static long addWithOverflowDefault(long j, long j2, long j3) {
        long j4 = j + j2;
        return ((j ^ j4) & (j2 ^ j4)) < 0 ? j3 : j4;
    }

    public static boolean areEqual(java.lang.Object obj, java.lang.Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static <T extends java.lang.Comparable<? super T>> int binarySearchCeil(java.util.List<? extends java.lang.Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int i;
        int iBinarySearch = java.util.Collections.binarySearch(list, t);
        if (iBinarySearch < 0) {
            i = iBinarySearch ^ (-1);
        } else {
            int size = list.size();
            do {
                iBinarySearch++;
                if (iBinarySearch >= size) {
                    break;
                }
            } while (list.get(iBinarySearch).compareTo(t) == 0);
            i = z ? iBinarySearch - 1 : iBinarySearch;
        }
        return z2 ? java.lang.Math.min(list.size() - 1, i) : i;
    }

    public static int binarySearchCeil(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int iBinarySearch = java.util.Arrays.binarySearch(iArr, i);
        if (iBinarySearch < 0) {
            i2 = iBinarySearch ^ (-1);
        } else {
            do {
                iBinarySearch++;
                if (iBinarySearch >= iArr.length) {
                    break;
                }
            } while (iArr[iBinarySearch] == i);
            i2 = z ? iBinarySearch - 1 : iBinarySearch;
        }
        return z2 ? java.lang.Math.min(iArr.length - 1, i2) : i2;
    }

    public static int binarySearchCeil(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int iBinarySearch = java.util.Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            i = iBinarySearch ^ (-1);
        } else {
            do {
                iBinarySearch++;
                if (iBinarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[iBinarySearch] == j);
            i = z ? iBinarySearch - 1 : iBinarySearch;
        }
        return z2 ? java.lang.Math.min(jArr.length - 1, i) : i;
    }

    public static int binarySearchFloor(com.google.android.exoplayer2.util.LongArray longArray, long j, boolean z, boolean z2) {
        int i;
        int size = longArray.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            if (longArray.get(i3) < j) {
                i2 = i3 + 1;
            } else {
                size = i3 - 1;
            }
        }
        if (z && (i = size + 1) < longArray.size() && longArray.get(i) == j) {
            return i;
        }
        if (z2 && size == -1) {
            return 0;
        }
        return size;
    }

    public static <T extends java.lang.Comparable<? super T>> int binarySearchFloor(java.util.List<? extends java.lang.Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int i;
        int iBinarySearch = java.util.Collections.binarySearch(list, t);
        if (iBinarySearch < 0) {
            i = -(iBinarySearch + 2);
        } else {
            do {
                iBinarySearch--;
                if (iBinarySearch < 0) {
                    break;
                }
            } while (list.get(iBinarySearch).compareTo(t) == 0);
            i = z ? iBinarySearch + 1 : iBinarySearch;
        }
        return z2 ? java.lang.Math.max(0, i) : i;
    }

    public static int binarySearchFloor(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int iBinarySearch = java.util.Arrays.binarySearch(iArr, i);
        if (iBinarySearch < 0) {
            i2 = -(iBinarySearch + 2);
        } else {
            do {
                iBinarySearch--;
                if (iBinarySearch < 0) {
                    break;
                }
            } while (iArr[iBinarySearch] == i);
            i2 = z ? iBinarySearch + 1 : iBinarySearch;
        }
        return z2 ? java.lang.Math.max(0, i2) : i2;
    }

    public static int binarySearchFloor(long[] jArr, long j, boolean z, boolean z2) {
        int i;
        int iBinarySearch = java.util.Arrays.binarySearch(jArr, j);
        if (iBinarySearch < 0) {
            i = -(iBinarySearch + 2);
        } else {
            do {
                iBinarySearch--;
                if (iBinarySearch < 0) {
                    break;
                }
            } while (jArr[iBinarySearch] == j);
            i = z ? iBinarySearch + 1 : iBinarySearch;
        }
        return z2 ? java.lang.Math.max(0, i) : i;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"#1"})
    public static <T> T castNonNull(T t) {
        return t;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"#1"})
    public static <T> T[] castNonNullTypeArray(T[] tArr) {
        return tArr;
    }

    public static int ceilDivide(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static long ceilDivide(long j, long j2) {
        return ((j + j2) - 1) / j2;
    }

    public static boolean checkCleartextTrafficPermitted(com.google.android.exoplayer2.MediaItem... mediaItemArr) {
        if (SDK_INT < 24) {
            return true;
        }
        for (com.google.android.exoplayer2.MediaItem mediaItem : mediaItemArr) {
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                if (isTrafficRestricted(localConfiguration.uri)) {
                    return false;
                }
                for (int i = 0; i < mediaItem.localConfiguration.subtitleConfigurations.size(); i++) {
                    if (isTrafficRestricted(mediaItem.localConfiguration.subtitleConfigurations.get(i).uri)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static void closeQuietly(java.io.Closeable closeable) throws java.io.IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (java.io.IOException unused) {
            }
        }
    }

    public static int compareLong(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static float constrainValue(float f2, float f3, float f4) {
        return java.lang.Math.max(f3, java.lang.Math.min(f2, f4));
    }

    public static int constrainValue(int i, int i2, int i3) {
        return java.lang.Math.max(i2, java.lang.Math.min(i, i3));
    }

    public static long constrainValue(long j, long j2, long j3) {
        return java.lang.Math.max(j2, java.lang.Math.min(j, j3));
    }

    public static boolean contains(java.lang.Object[] objArr, java.lang.Object obj) {
        for (java.lang.Object obj2 : objArr) {
            if (areEqual(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static int crc32(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = CRC32_BYTES_MSBF[((i3 >>> 24) ^ (bArr[i] & 255)) & 255] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    public static int crc8(byte[] bArr, int i, int i2, int i3) {
        while (i < i2) {
            i3 = CRC8_BYTES_MSBF[i3 ^ (bArr[i] & 255)];
            i++;
        }
        return i3;
    }

    public static android.os.Handler createHandler(android.os.Looper looper, android.os.Handler.Callback callback) {
        return new android.os.Handler(looper, callback);
    }

    public static android.os.Handler createHandlerForCurrentLooper() {
        return createHandlerForCurrentLooper(null);
    }

    public static android.os.Handler createHandlerForCurrentLooper(android.os.Handler.Callback callback) {
        return createHandler((android.os.Looper) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(android.os.Looper.myLooper()), callback);
    }

    public static android.os.Handler createHandlerForCurrentOrMainLooper() {
        return createHandlerForCurrentOrMainLooper(null);
    }

    public static android.os.Handler createHandlerForCurrentOrMainLooper(android.os.Handler.Callback callback) {
        return createHandler(getCurrentOrMainLooper(), callback);
    }

    public static java.util.HashMap<java.lang.String, java.lang.String> createIsoLanguageReplacementMap() throws java.util.MissingResourceException {
        java.lang.String[] iSOLanguages = java.util.Locale.getISOLanguages();
        java.util.HashMap<java.lang.String, java.lang.String> map = new java.util.HashMap<>(iSOLanguages.length + additionalIsoLanguageReplacements.length);
        int i = 0;
        for (java.lang.String str : iSOLanguages) {
            try {
                java.lang.String iSO3Language = new java.util.Locale(str).getISO3Language();
                if (!android.text.TextUtils.isEmpty(iSO3Language)) {
                    map.put(iSO3Language, str);
                }
            } catch (java.util.MissingResourceException unused) {
            }
        }
        while (true) {
            java.lang.String[] strArr = additionalIsoLanguageReplacements;
            if (i >= strArr.length) {
                return map;
            }
            map.put(strArr[i], strArr[i + 1]);
            i += 2;
        }
    }

    public static java.io.File createTempDirectory(android.content.Context context, java.lang.String str) {
        java.io.File fileCreateTempFile = createTempFile(context, str);
        fileCreateTempFile.delete();
        fileCreateTempFile.mkdir();
        return fileCreateTempFile;
    }

    public static java.io.File createTempFile(android.content.Context context, java.lang.String str) {
        return java.io.File.createTempFile(str, null, (java.io.File) com.google.android.exoplayer2.util.Assertions.checkNotNull(context.getCacheDir()));
    }

    public static java.lang.String escapeFileName(java.lang.String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            if (shouldEscapeCharacter(str.charAt(i3))) {
                i2++;
            }
        }
        if (i2 == 0) {
            return str;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder((i2 * 2) + length);
        while (i2 > 0) {
            int i4 = i + 1;
            char cCharAt = str.charAt(i);
            if (shouldEscapeCharacter(cCharAt)) {
                sb.append('%');
                sb.append(java.lang.Integer.toHexString(cCharAt));
                i2--;
            } else {
                sb.append(cCharAt);
            }
            i = i4;
        }
        if (i < length) {
            sb.append((java.lang.CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public static android.net.Uri fixSmoothStreamingIsmManifestUri(android.net.Uri uri) {
        java.lang.String path = uri.getPath();
        if (path == null) {
            return uri;
        }
        java.util.regex.Matcher matcher = ISM_URL_PATTERN.matcher(d.s.y.b0(path));
        return (matcher.matches() && matcher.group(1) == null) ? android.net.Uri.withAppendedPath(uri, "Manifest") : uri;
    }

    public static java.lang.String formatInvariant(java.lang.String str, java.lang.Object... objArr) {
        return java.lang.String.format(java.util.Locale.US, str, objArr);
    }

    public static java.lang.String fromUtf8Bytes(byte[] bArr) {
        return new java.lang.String(bArr, e.c.b.a.c.f2667c);
    }

    public static java.lang.String fromUtf8Bytes(byte[] bArr, int i, int i2) {
        return new java.lang.String(bArr, i, i2, e.c.b.a.c.f2667c);
    }

    public static int generateAudioSessionIdV21(android.content.Context context) {
        android.media.AudioManager audioManager = (android.media.AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return -1;
        }
        return audioManager.generateAudioSessionId();
    }

    public static java.lang.String getAdaptiveMimeTypeForContentType(int i) {
        if (i == 0) {
            return com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MPD;
        }
        if (i == 1) {
            return com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SS;
        }
        if (i != 2) {
            return null;
        }
        return com.google.android.exoplayer2.util.MimeTypes.APPLICATION_M3U8;
    }

    public static int getAudioContentTypeForStreamType(int i) {
        if (i != 0) {
            return (i == 1 || i == 2 || i == 4 || i == 5 || i == 8) ? 4 : 2;
        }
        return 1;
    }

    public static int getAudioTrackChannelConfig(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return com.tencent.tinker.android.dx.instruction.Opcodes.REM_INT_LIT8;
            case 6:
                return com.tencent.bugly.beta.tinker.TinkerReport.KEY_LOADED_EXCEPTION_DEX;
            case 7:
                return 1276;
            case 8:
                int i2 = SDK_INT;
                return (i2 < 23 && i2 < 21) ? 0 : 6396;
            default:
                return 0;
        }
    }

    public static int getAudioUsageForStreamType(int i) {
        if (i == 0) {
            return 2;
        }
        if (i == 1) {
            return 13;
        }
        if (i == 2) {
            return 6;
        }
        int i2 = 4;
        if (i != 4) {
            i2 = 5;
            if (i != 5) {
                return i != 8 ? 1 : 3;
            }
        }
        return i2;
    }

    public static int getBigEndianInt(java.nio.ByteBuffer byteBuffer, int i) {
        int i2 = byteBuffer.getInt(i);
        return byteBuffer.order() == java.nio.ByteOrder.BIG_ENDIAN ? i2 : java.lang.Integer.reverseBytes(i2);
    }

    public static byte[] getBytesFromHexString(java.lang.String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (java.lang.Character.digit(str.charAt(i2 + 1), 16) + (java.lang.Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    public static int getCodecCountOfType(java.lang.String str, int i) {
        int i2 = 0;
        for (java.lang.String str2 : splitCodecs(str)) {
            if (i == com.google.android.exoplayer2.util.MimeTypes.getTrackTypeOfCodec(str2)) {
                i2++;
            }
        }
        return i2;
    }

    public static java.lang.String getCodecsOfType(java.lang.String str, int i) {
        java.lang.String[] strArrSplitCodecs = splitCodecs(str);
        if (strArrSplitCodecs.length == 0) {
            return null;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.lang.String str2 : strArrSplitCodecs) {
            if (i == com.google.android.exoplayer2.util.MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static java.lang.String getCommaDelimitedSimpleClassNames(java.lang.Object[] objArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (int i = 0; i < objArr.length; i++) {
            sb.append(objArr[i].getClass().getSimpleName());
            if (i < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }

    public static java.lang.String getCountryCode(android.content.Context context) {
        android.telephony.TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone")) != null) {
            java.lang.String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!android.text.TextUtils.isEmpty(networkCountryIso)) {
                return d.s.y.c0(networkCountryIso);
            }
        }
        return d.s.y.c0(java.util.Locale.getDefault().getCountry());
    }

    public static android.graphics.Point getCurrentDisplayModeSize(android.content.Context context) {
        android.hardware.display.DisplayManager displayManager;
        android.view.Display display = (SDK_INT < 17 || (displayManager = (android.hardware.display.DisplayManager) context.getSystemService("display")) == null) ? null : displayManager.getDisplay(0);
        if (display == null) {
            display = ((android.view.WindowManager) com.google.android.exoplayer2.util.Assertions.checkNotNull((android.view.WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return getCurrentDisplayModeSize(context, display);
    }

    public static android.graphics.Point getCurrentDisplayModeSize(android.content.Context context, android.view.Display display) throws java.lang.ClassNotFoundException, java.lang.NumberFormatException {
        if (display.getDisplayId() == 0 && isTv(context)) {
            java.lang.String systemProperty = getSystemProperty(SDK_INT < 28 ? "sys.display-size" : "vendor.display-size");
            if (!android.text.TextUtils.isEmpty(systemProperty)) {
                try {
                    java.lang.String[] strArrSplit = split(systemProperty.trim(), "x");
                    if (strArrSplit.length == 2) {
                        int i = java.lang.Integer.parseInt(strArrSplit[0]);
                        int i2 = java.lang.Integer.parseInt(strArrSplit[1]);
                        if (i > 0 && i2 > 0) {
                            return new android.graphics.Point(i, i2);
                        }
                    }
                } catch (java.lang.NumberFormatException unused) {
                }
                java.lang.String strValueOf = java.lang.String.valueOf(systemProperty);
                com.google.android.exoplayer2.util.Log.e(TAG, strValueOf.length() != 0 ? "Invalid display size: ".concat(strValueOf) : new java.lang.String("Invalid display size: "));
            }
            if ("Sony".equals(MANUFACTURER) && MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new android.graphics.Point(com.google.android.exoplayer2.audio.OpusUtil.DEFAULT_SEEK_PRE_ROLL_SAMPLES, 2160);
            }
        }
        android.graphics.Point point = new android.graphics.Point();
        int i3 = SDK_INT;
        if (i3 >= 23) {
            getDisplaySizeV23(display, point);
        } else if (i3 >= 17) {
            getDisplaySizeV17(display, point);
        } else {
            getDisplaySizeV16(display, point);
        }
        return point;
    }

    public static android.os.Looper getCurrentOrMainLooper() {
        android.os.Looper looperMyLooper = android.os.Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : android.os.Looper.getMainLooper();
    }

    public static android.net.Uri getDataUriForString(java.lang.String str, java.lang.String str2) {
        java.lang.String strEncodeToString = android.util.Base64.encodeToString(str2.getBytes(), 2);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(strEncodeToString).length() + java.lang.String.valueOf(str).length() + 13);
        sb.append("data:");
        sb.append(str);
        sb.append(";base64,");
        sb.append(strEncodeToString);
        return android.net.Uri.parse(sb.toString());
    }

    public static java.util.Locale getDefaultDisplayLocale() {
        return SDK_INT >= 24 ? java.util.Locale.getDefault(java.util.Locale.Category.DISPLAY) : java.util.Locale.getDefault();
    }

    public static void getDisplaySizeV16(android.view.Display display, android.graphics.Point point) {
        display.getSize(point);
    }

    public static void getDisplaySizeV17(android.view.Display display, android.graphics.Point point) {
        display.getRealSize(point);
    }

    public static void getDisplaySizeV23(android.view.Display display, android.graphics.Point point) {
        android.view.Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.UUID getDrmUuid(java.lang.String r5) {
        /*
            java.lang.String r0 = d.s.y.b0(r5)
            int r1 = r0.hashCode()
            r2 = -1860423953(0xffffffff911c2eef, float:-1.2320693E-28)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L2e
            r2 = -1400551171(0xffffffffac8548fd, float:-3.7881907E-12)
            if (r1 == r2) goto L24
            r2 = 790309106(0x2f1b28f2, float:1.4111715E-10)
            if (r1 == r2) goto L1a
            goto L38
        L1a:
            java.lang.String r1 = "clearkey"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
            r0 = 2
            goto L39
        L24:
            java.lang.String r1 = "widevine"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
            r0 = 0
            goto L39
        L2e:
            java.lang.String r1 = "playready"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
            r0 = 1
            goto L39
        L38:
            r0 = -1
        L39:
            if (r0 == 0) goto L4c
            if (r0 == r4) goto L49
            if (r0 == r3) goto L46
            java.util.UUID r5 = java.util.UUID.fromString(r5)     // Catch: java.lang.RuntimeException -> L44
            return r5
        L44:
            r5 = 0
            return r5
        L46:
            java.util.UUID r5 = com.google.android.exoplayer2.C.CLEARKEY_UUID
            return r5
        L49:
            java.util.UUID r5 = com.google.android.exoplayer2.C.PLAYREADY_UUID
            return r5
        L4c:
            java.util.UUID r5 = com.google.android.exoplayer2.C.WIDEVINE_UUID
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.Util.getDrmUuid(java.lang.String):java.util.UUID");
    }

    public static int getErrorCodeForMediaDrmErrorCode(int i) {
        if (i == 2 || i == 4) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
        }
        if (i == 10) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
        }
        if (i == 7) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
        }
        if (i == 8) {
            return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
        }
        switch (i) {
            case 15:
                return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
            case 16:
            case 18:
                return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
            default:
                switch (i) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
                    default:
                        return com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
                }
        }
    }

    public static int getErrorCodeFromPlatformDiagnosticsInfo(java.lang.String str) throws java.lang.NumberFormatException {
        java.lang.String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = split(str, "_")).length) < 2) {
            return 0;
        }
        java.lang.String str2 = strArrSplit[length - 1];
        boolean z = length >= 3 && "neg".equals(strArrSplit[length - 2]);
        try {
            int i = java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(str2));
            return z ? -i : i;
        } catch (java.lang.NumberFormatException unused) {
            return 0;
        }
    }

    public static java.lang.String getFormatSupportString(int i) {
        if (i == 0) {
            return com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.BOOLEAN_FALSE;
        }
        if (i == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i == 4) {
            return com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.BOOLEAN_TRUE;
        }
        throw new java.lang.IllegalStateException();
    }

    public static int getIntegerCodeForString(java.lang.String str) {
        int length = str.length();
        com.google.android.exoplayer2.util.Assertions.checkArgument(length <= 4);
        int iCharAt = 0;
        for (int i = 0; i < length; i++) {
            iCharAt = (iCharAt << 8) | str.charAt(i);
        }
        return iCharAt;
    }

    public static java.lang.String getLocaleLanguageTag(java.util.Locale locale) {
        return SDK_INT >= 21 ? getLocaleLanguageTagV21(locale) : locale.toString();
    }

    public static java.lang.String getLocaleLanguageTagV21(java.util.Locale locale) {
        return locale.toLanguageTag();
    }

    public static long getMediaDurationForPlayoutDuration(long j, float f2) {
        if (f2 == 1.0f) {
            return j;
        }
        double d2 = j;
        double d3 = f2;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        return java.lang.Math.round(d2 * d3);
    }

    public static long getNowUnixTimeMs(long j) {
        return j == com.google.android.exoplayer2.C.TIME_UNSET ? java.lang.System.currentTimeMillis() : j + android.os.SystemClock.elapsedRealtime();
    }

    public static int getPcmEncoding(int i) {
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return 2;
        }
        if (i == 24) {
            return 536870912;
        }
        if (i != 32) {
            return 0;
        }
        return com.google.android.exoplayer2.C.ENCODING_PCM_32BIT;
    }

    public static com.google.android.exoplayer2.Format getPcmFormat(int i, int i2, int i3) {
        return new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW).setChannelCount(i2).setSampleRate(i3).setPcmEncoding(i).build();
    }

    public static int getPcmFrameSize(int i, int i2) {
        if (i != 2) {
            if (i == 3) {
                return i2;
            }
            if (i != 4) {
                if (i != 268435456) {
                    if (i == 536870912) {
                        return i2 * 3;
                    }
                    if (i != 805306368) {
                        throw new java.lang.IllegalArgumentException();
                    }
                }
            }
            return i2 * 4;
        }
        return i2 * 2;
    }

    public static long getPlayoutDurationForMediaDuration(long j, float f2) {
        if (f2 == 1.0f) {
            return j;
        }
        double d2 = j;
        double d3 = f2;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        return java.lang.Math.round(d2 / d3);
    }

    public static int getStreamTypeForAudioUsage(int i) {
        if (i == 13) {
            return 1;
        }
        switch (i) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    public static java.lang.String getStringForTime(java.lang.StringBuilder sb, java.util.Formatter formatter, long j) {
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            j = 0;
        }
        java.lang.String str = j < 0 ? "-" : "";
        long jAbs = (java.lang.Math.abs(j) + 500) / 1000;
        long j2 = jAbs % 60;
        long j3 = (jAbs / 60) % 60;
        long j4 = jAbs / 3600;
        sb.setLength(0);
        return (j4 > 0 ? formatter.format("%s%d:%02d:%02d", str, java.lang.Long.valueOf(j4), java.lang.Long.valueOf(j3), java.lang.Long.valueOf(j2)) : formatter.format("%s%02d:%02d", str, java.lang.Long.valueOf(j3), java.lang.Long.valueOf(j2))).toString();
    }

    public static java.lang.String[] getSystemLanguageCodes() {
        java.lang.String[] systemLocales = getSystemLocales();
        for (int i = 0; i < systemLocales.length; i++) {
            systemLocales[i] = normalizeLanguageCode(systemLocales[i]);
        }
        return systemLocales;
    }

    public static java.lang.String[] getSystemLocales() {
        android.content.res.Configuration configuration = android.content.res.Resources.getSystem().getConfiguration();
        return SDK_INT >= 24 ? getSystemLocalesV24(configuration) : new java.lang.String[]{getLocaleLanguageTag(configuration.locale)};
    }

    public static java.lang.String[] getSystemLocalesV24(android.content.res.Configuration configuration) {
        return split(configuration.getLocales().toLanguageTags(), ",");
    }

    public static java.lang.String getSystemProperty(java.lang.String str) throws java.lang.ClassNotFoundException {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.os.SystemProperties");
            return (java.lang.String) cls.getMethod("get", java.lang.String.class).invoke(cls, str);
        } catch (java.lang.Exception e2) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.e(TAG, strValueOf.length() != 0 ? "Failed to read system property ".concat(strValueOf) : new java.lang.String("Failed to read system property "), e2);
            return null;
        }
    }

    public static java.lang.String getTrackTypeString(int i) {
        switch (i) {
            case -2:
                return "none";
            case -1:
            default:
                if (i < 10000) {
                    return "?";
                }
                java.lang.StringBuilder sb = new java.lang.StringBuilder(20);
                sb.append("custom (");
                sb.append(i);
                sb.append(")");
                return sb.toString();
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
        }
    }

    public static java.lang.String getUserAgent(android.content.Context context, java.lang.String str) {
        java.lang.String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            str2 = "?";
        }
        java.lang.String str3 = android.os.Build.VERSION.RELEASE;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 38))), str, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, str2, " (Linux;Android ");
        sbL.append(str3);
        sbL.append(") ");
        sbL.append(com.google.android.exoplayer2.ExoPlayerLibraryInfo.VERSION_SLASHY);
        return sbL.toString();
    }

    public static byte[] getUtf8Bytes(java.lang.String str) {
        return str.getBytes(e.c.b.a.c.f2667c);
    }

    public static byte[] gzip(byte[] bArr) {
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        try {
            java.util.zip.GZIPOutputStream gZIPOutputStream = new java.util.zip.GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (java.lang.Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (java.lang.Throwable unused) {
                }
                throw th;
            }
        } catch (java.io.IOException e2) {
            throw new java.lang.IllegalStateException(e2);
        }
    }

    public static int inferContentType(android.net.Uri uri) {
        java.lang.String scheme = uri.getScheme();
        if (scheme != null && d.s.y.x("rtsp", scheme)) {
            return 3;
        }
        java.lang.String path = uri.getPath();
        if (path == null) {
            return 4;
        }
        return inferContentType(path);
    }

    public static int inferContentType(android.net.Uri uri, java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return inferContentType(uri);
        }
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        return inferContentType(strValueOf.length() != 0 ? ".".concat(strValueOf) : new java.lang.String("."));
    }

    public static int inferContentType(java.lang.String str) {
        java.lang.String strB0 = d.s.y.b0(str);
        if (strB0.endsWith(".mpd")) {
            return 0;
        }
        if (strB0.endsWith(".m3u8")) {
            return 2;
        }
        java.util.regex.Matcher matcher = ISM_URL_PATTERN.matcher(strB0);
        if (!matcher.matches()) {
            return 4;
        }
        java.lang.String strGroup = matcher.group(2);
        if (strGroup == null) {
            return 1;
        }
        if (strGroup.contains(ISM_DASH_FORMAT_EXTENSION)) {
            return 0;
        }
        return strGroup.contains(ISM_HLS_FORMAT_EXTENSION) ? 2 : 1;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static int inferContentTypeForUriAndMimeType(android.net.Uri uri, java.lang.String str) {
        if (str == null) {
            return inferContentType(uri);
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -979127466:
                if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_M3U8)) {
                    c2 = 1;
                    break;
                }
                break;
            case -156749520:
                if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SS)) {
                    c2 = 2;
                    break;
                }
                break;
            case 64194685:
                if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MPD)) {
                    c2 = 0;
                    break;
                }
                break;
            case 1154777587:
                if (str.equals(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_RTSP)) {
                    c2 = 3;
                    break;
                }
                break;
        }
        if (c2 == 0) {
            return 0;
        }
        if (c2 == 1) {
            return 2;
        }
        if (c2 != 2) {
            return c2 != 3 ? 4 : 3;
        }
        return 1;
    }

    public static boolean inflate(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray2, java.util.zip.Inflater inflater) {
        if (parsableByteArray.bytesLeft() <= 0) {
            return false;
        }
        if (parsableByteArray2.capacity() < parsableByteArray.bytesLeft()) {
            parsableByteArray2.ensureCapacity(parsableByteArray.bytesLeft() * 2);
        }
        if (inflater == null) {
            inflater = new java.util.zip.Inflater();
        }
        inflater.setInput(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray.bytesLeft());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(parsableByteArray2.getData(), iInflate, parsableByteArray2.capacity() - iInflate);
                if (!inflater.finished()) {
                    if (inflater.needsDictionary() || inflater.needsInput()) {
                        break;
                    }
                    if (iInflate == parsableByteArray2.capacity()) {
                        parsableByteArray2.ensureCapacity(parsableByteArray2.capacity() * 2);
                    }
                } else {
                    parsableByteArray2.setLimit(iInflate);
                    return true;
                }
            } catch (java.util.zip.DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static boolean isAutomotive(android.content.Context context) {
        return SDK_INT >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static boolean isEncodingHighResolutionPcm(int i) {
        return i == 536870912 || i == 805306368 || i == 4;
    }

    public static boolean isEncodingLinearPcm(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 536870912 || i == 805306368 || i == 4;
    }

    public static boolean isLinebreak(int i) {
        return i == 10 || i == 13;
    }

    public static boolean isLocalFileUri(android.net.Uri uri) {
        java.lang.String scheme = uri.getScheme();
        return android.text.TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    public static boolean isTrafficRestricted(android.net.Uri uri) {
        return "http".equals(uri.getScheme()) && !android.security.NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri.getHost()));
    }

    public static boolean isTv(android.content.Context context) {
        android.app.UiModeManager uiModeManager = (android.app.UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static int linearSearch(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public static int linearSearch(long[] jArr, long j) {
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i] == j) {
                return i;
            }
        }
        return -1;
    }

    public static java.lang.String maybeReplaceLegacyLanguageTags(java.lang.String str) {
        int i = 0;
        while (true) {
            java.lang.String[] strArr = isoLegacyTagReplacements;
            if (i >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i])) {
                java.lang.String strValueOf = java.lang.String.valueOf(isoLegacyTagReplacements[i + 1]);
                java.lang.String strValueOf2 = java.lang.String.valueOf(str.substring(isoLegacyTagReplacements[i].length()));
                return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new java.lang.String(strValueOf);
            }
            i += 2;
        }
    }

    public static boolean maybeRequestReadExternalStoragePermission(android.app.Activity activity, android.net.Uri... uriArr) {
        if (SDK_INT < 23) {
            return false;
        }
        for (android.net.Uri uri : uriArr) {
            if (isLocalFileUri(uri)) {
                return requestExternalStoragePermission(activity);
            }
        }
        return false;
    }

    public static boolean maybeRequestReadExternalStoragePermission(android.app.Activity activity, com.google.android.exoplayer2.MediaItem... mediaItemArr) {
        if (SDK_INT < 23) {
            return false;
        }
        for (com.google.android.exoplayer2.MediaItem mediaItem : mediaItemArr) {
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                if (isLocalFileUri(localConfiguration.uri)) {
                    return requestExternalStoragePermission(activity);
                }
                for (int i = 0; i < mediaItem.localConfiguration.subtitleConfigurations.size(); i++) {
                    if (isLocalFileUri(mediaItem.localConfiguration.subtitleConfigurations.get(i).uri)) {
                        return requestExternalStoragePermission(activity);
                    }
                }
            }
        }
        return false;
    }

    public static long minValue(android.util.SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            throw new java.util.NoSuchElementException();
        }
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < sparseLongArray.size(); i++) {
            jMin = java.lang.Math.min(jMin, sparseLongArray.valueAt(i));
        }
        return jMin;
    }

    public static <T> void moveItems(java.util.List<T> list, int i, int i2, int i3) {
        java.util.ArrayDeque arrayDeque = new java.util.ArrayDeque();
        for (int i4 = (i2 - i) - 1; i4 >= 0; i4--) {
            arrayDeque.addFirst(list.remove(i + i4));
        }
        list.addAll(java.lang.Math.min(i3, list.size()), arrayDeque);
    }

    public static long msToUs(long j) {
        return (j == com.google.android.exoplayer2.C.TIME_UNSET || j == Long.MIN_VALUE) ? j : j * 1000;
    }

    public static java.util.concurrent.ExecutorService newSingleThreadExecutor(final java.lang.String str) {
        return java.util.concurrent.Executors.newSingleThreadExecutor(new java.util.concurrent.ThreadFactory() { // from class: e.c.a.a.s2.d
            @Override // java.util.concurrent.ThreadFactory
            public final java.lang.Thread newThread(java.lang.Runnable runnable) {
                return com.google.android.exoplayer2.util.Util.a(str, runnable);
            }
        });
    }

    public static java.lang.String normalizeLanguageCode(java.lang.String str) {
        if (str == null) {
            return null;
        }
        java.lang.String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals(com.google.android.exoplayer2.C.LANGUAGE_UNDETERMINED)) {
            str = strReplace;
        }
        java.lang.String strB0 = d.s.y.b0(str);
        java.lang.String str2 = splitAtFirst(strB0, "-")[0];
        if (languageTagReplacementMap == null) {
            languageTagReplacementMap = createIsoLanguageReplacementMap();
        }
        java.lang.String str3 = languageTagReplacementMap.get(str2);
        if (str3 != null) {
            java.lang.String strValueOf = java.lang.String.valueOf(strB0.substring(str2.length()));
            strB0 = strValueOf.length() != 0 ? str3.concat(strValueOf) : new java.lang.String(str3);
            str2 = str3;
        }
        return ("no".equals(str2) || "i".equals(str2) || "zh".equals(str2)) ? maybeReplaceLegacyLanguageTags(strB0) : strB0;
    }

    public static <T> T[] nullSafeArrayAppend(T[] tArr, T t) {
        java.lang.Object[] objArrCopyOf = java.util.Arrays.copyOf(tArr, tArr.length + 1);
        objArrCopyOf[tArr.length] = t;
        return (T[]) castNonNullTypeArray(objArrCopyOf);
    }

    public static <T> T[] nullSafeArrayConcatenation(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) java.util.Arrays.copyOf(tArr, tArr.length + tArr2.length);
        java.lang.System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static <T> T[] nullSafeArrayCopy(T[] tArr, int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i <= tArr.length);
        return (T[]) java.util.Arrays.copyOf(tArr, i);
    }

    public static <T> T[] nullSafeArrayCopyOfRange(T[] tArr, int i, int i2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0);
        com.google.android.exoplayer2.util.Assertions.checkArgument(i2 <= tArr.length);
        return (T[]) java.util.Arrays.copyOfRange(tArr, i, i2);
    }

    public static <T> void nullSafeListToArray(java.util.List<T> list, T[] tArr) {
        com.google.android.exoplayer2.util.Assertions.checkState(list.size() == tArr.length);
        list.toArray(tArr);
    }

    public static long parseXsDateTime(java.lang.String str) throws com.google.android.exoplayer2.ParserException {
        java.util.regex.Matcher matcher = XS_DATE_TIME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(strValueOf.length() != 0 ? "Invalid date/time format: ".concat(strValueOf) : new java.lang.String("Invalid date/time format: "), null);
        }
        int i = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i = java.lang.Integer.parseInt(matcher.group(13)) + (java.lang.Integer.parseInt(matcher.group(12)) * 60);
            if ("-".equals(matcher.group(11))) {
                i *= -1;
            }
        }
        java.util.GregorianCalendar gregorianCalendar = new java.util.GregorianCalendar(java.util.TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(java.lang.Integer.parseInt(matcher.group(1)), java.lang.Integer.parseInt(matcher.group(2)) - 1, java.lang.Integer.parseInt(matcher.group(3)), java.lang.Integer.parseInt(matcher.group(4)), java.lang.Integer.parseInt(matcher.group(5)), java.lang.Integer.parseInt(matcher.group(6)));
        if (!android.text.TextUtils.isEmpty(matcher.group(8))) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(matcher.group(8));
            gregorianCalendar.set(14, new java.math.BigDecimal(strValueOf2.length() != 0 ? "0.".concat(strValueOf2) : new java.lang.String("0.")).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i != 0 ? timeInMillis - (i * 60000) : timeInMillis;
    }

    public static long parseXsDuration(java.lang.String str) {
        java.util.regex.Matcher matcher = XS_DURATION_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return (long) (java.lang.Double.parseDouble(str) * 3600.0d * 1000.0d);
        }
        boolean zIsEmpty = true ^ android.text.TextUtils.isEmpty(matcher.group(1));
        java.lang.String strGroup = matcher.group(3);
        double d2 = strGroup != null ? java.lang.Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
        java.lang.String strGroup2 = matcher.group(5);
        double d3 = d2 + (strGroup2 != null ? java.lang.Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
        java.lang.String strGroup3 = matcher.group(7);
        double d4 = d3 + (strGroup3 != null ? java.lang.Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
        java.lang.String strGroup4 = matcher.group(10);
        double d5 = d4 + (strGroup4 != null ? java.lang.Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
        java.lang.String strGroup5 = matcher.group(12);
        double d6 = d5 + (strGroup5 != null ? java.lang.Double.parseDouble(strGroup5) * 60.0d : 0.0d);
        java.lang.String strGroup6 = matcher.group(14);
        long j = (long) ((d6 + (strGroup6 != null ? java.lang.Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
        return zIsEmpty ? -j : j;
    }

    public static boolean postOrRun(android.os.Handler handler, java.lang.Runnable runnable) {
        if (!handler.getLooper().getThread().isAlive()) {
            return false;
        }
        if (handler.getLooper() != android.os.Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    public static boolean readBoolean(android.os.Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void recursiveDelete(java.io.File file) {
        java.io.File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (java.io.File file2 : fileArrListFiles) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    public static <T> void removeRange(java.util.List<T> list, int i, int i2) {
        if (i < 0 || i2 > list.size() || i > i2) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i != i2) {
            list.subList(i, i2).clear();
        }
    }

    public static boolean requestExternalStoragePermission(android.app.Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return false;
        }
        activity.requestPermissions(new java.lang.String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
        return true;
    }

    public static long scaleLargeTimestamp(long j, long j2, long j3) {
        if (j3 >= j2 && j3 % j2 == 0) {
            return j / (j3 / j2);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return (j2 / j3) * j;
        }
        double d2 = j2;
        double d3 = j3;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        double d4 = j;
        java.lang.Double.isNaN(d4);
        return (long) (d4 * (d2 / d3));
    }

    public static long[] scaleLargeTimestamps(java.util.List<java.lang.Long> list, long j, long j2) {
        int size = list.size();
        long[] jArr = new long[size];
        int i = 0;
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            while (i < size) {
                jArr[i] = list.get(i).longValue() / j3;
                i++;
            }
        } else if (j2 >= j || j % j2 != 0) {
            double d2 = j;
            double d3 = j2;
            java.lang.Double.isNaN(d2);
            java.lang.Double.isNaN(d3);
            double d4 = d2 / d3;
            while (i < size) {
                double dLongValue = list.get(i).longValue();
                java.lang.Double.isNaN(dLongValue);
                jArr[i] = (long) (dLongValue * d4);
                i++;
            }
        } else {
            long j4 = j / j2;
            while (i < size) {
                jArr[i] = list.get(i).longValue() * j4;
                i++;
            }
        }
        return jArr;
    }

    public static void scaleLargeTimestampsInPlace(long[] jArr, long j, long j2) {
        int i = 0;
        if (j2 >= j && j2 % j == 0) {
            long j3 = j2 / j;
            while (i < jArr.length) {
                jArr[i] = jArr[i] / j3;
                i++;
            }
            return;
        }
        if (j2 < j && j % j2 == 0) {
            long j4 = j / j2;
            while (i < jArr.length) {
                jArr[i] = jArr[i] * j4;
                i++;
            }
            return;
        }
        double d2 = j;
        double d3 = j2;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        double d4 = d2 / d3;
        while (i < jArr.length) {
            double d5 = jArr[i];
            java.lang.Double.isNaN(d5);
            jArr[i] = (long) (d5 * d4);
            i++;
        }
    }

    public static boolean shouldEscapeCharacter(char c2) {
        return c2 == '\"' || c2 == '%' || c2 == '*' || c2 == '/' || c2 == ':' || c2 == '<' || c2 == '\\' || c2 == '|' || c2 == '>' || c2 == '?';
    }

    public static void sneakyThrow(java.lang.Throwable th) throws java.lang.Throwable {
        sneakyThrowInternal(th);
    }

    public static <T extends java.lang.Throwable> void sneakyThrowInternal(java.lang.Throwable th) throws java.lang.Throwable {
        throw th;
    }

    public static java.lang.String[] split(java.lang.String str, java.lang.String str2) {
        return str.split(str2, -1);
    }

    public static java.lang.String[] splitAtFirst(java.lang.String str, java.lang.String str2) {
        return str.split(str2, 2);
    }

    public static java.lang.String[] splitCodecs(java.lang.String str) {
        return android.text.TextUtils.isEmpty(str) ? new java.lang.String[0] : split(str.trim(), "(\\s*,\\s*)");
    }

    public static android.content.ComponentName startForegroundService(android.content.Context context, android.content.Intent intent) {
        return SDK_INT >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    public static long subtractWithOverflowDefault(long j, long j2, long j3) {
        long j4 = j - j2;
        return ((j ^ j4) & (j2 ^ j)) < 0 ? j3 : j4;
    }

    public static boolean tableExists(android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str) {
        return android.database.DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new java.lang.String[]{str}) > 0;
    }

    public static byte[] toByteArray(java.io.InputStream inputStream) throws java.io.IOException {
        byte[] bArr = new byte[4096];
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static java.lang.String toHexString(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(java.lang.Character.forDigit((bArr[i] >> 4) & 15, 16));
            sb.append(java.lang.Character.forDigit(bArr[i] & com.umeng.analytics.pro.bw.m, 16));
        }
        return sb.toString();
    }

    public static long toLong(int i, int i2) {
        return toUnsignedLong(i2) | (toUnsignedLong(i) << 32);
    }

    public static long toUnsignedLong(int i) {
        return i & 4294967295L;
    }

    public static java.lang.CharSequence truncateAscii(java.lang.CharSequence charSequence, int i) {
        return charSequence.length() <= i ? charSequence : charSequence.subSequence(0, i);
    }

    public static java.lang.String unescapeFileName(java.lang.String str) {
        int length = str.length();
        int iEnd = 0;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) == '%') {
                i++;
            }
        }
        if (i == 0) {
            return str;
        }
        int i3 = length - (i * 2);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(i3);
        java.util.regex.Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(str);
        while (i > 0 && matcher.find()) {
            char c2 = (char) java.lang.Integer.parseInt((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)), 16);
            sb.append((java.lang.CharSequence) str, iEnd, matcher.start());
            sb.append(c2);
            iEnd = matcher.end();
            i--;
        }
        if (iEnd < length) {
            sb.append((java.lang.CharSequence) str, iEnd, length);
        }
        if (sb.length() != i3) {
            return null;
        }
        return sb.toString();
    }

    public static long usToMs(long j) {
        return (j == com.google.android.exoplayer2.C.TIME_UNSET || j == Long.MIN_VALUE) ? j : j / 1000;
    }

    public static void writeBoolean(android.os.Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
