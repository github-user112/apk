package androidx.core.content;

/* loaded from: classes.dex */
public class FileProvider extends android.content.ContentProvider {
    public static final java.lang.String ATTR_NAME = "name";
    public static final java.lang.String ATTR_PATH = "path";
    public static final java.lang.String DISPLAYNAME_FIELD = "displayName";
    public static final java.lang.String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
    public static final java.lang.String TAG_CACHE_PATH = "cache-path";
    public static final java.lang.String TAG_EXTERNAL = "external-path";
    public static final java.lang.String TAG_EXTERNAL_CACHE = "external-cache-path";
    public static final java.lang.String TAG_EXTERNAL_FILES = "external-files-path";
    public static final java.lang.String TAG_EXTERNAL_MEDIA = "external-media-path";
    public static final java.lang.String TAG_FILES_PATH = "files-path";
    public static final java.lang.String TAG_ROOT_PATH = "root-path";
    public androidx.core.content.FileProvider.a mStrategy;
    public static final java.lang.String[] COLUMNS = {"_display_name", "_size"};
    public static final java.io.File DEVICE_ROOT = new java.io.File(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
    public static java.util.HashMap<java.lang.String, androidx.core.content.FileProvider.a> sCache = new java.util.HashMap<>();

    public interface a {
        java.io.File a(android.net.Uri uri);

        android.net.Uri b(java.io.File file);
    }

    public static class b implements androidx.core.content.FileProvider.a {
        public final java.lang.String a;
        public final java.util.HashMap<java.lang.String, java.io.File> b = new java.util.HashMap<>();

        public b(java.lang.String str) {
            this.a = str;
        }

        @Override // androidx.core.content.FileProvider.a
        public java.io.File a(android.net.Uri uri) throws java.io.IOException {
            java.lang.String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            java.lang.String strDecode = android.net.Uri.decode(encodedPath.substring(1, iIndexOf));
            java.lang.String strDecode2 = android.net.Uri.decode(encodedPath.substring(iIndexOf + 1));
            java.io.File file = this.b.get(strDecode);
            if (file == null) {
                throw new java.lang.IllegalArgumentException("Unable to find configured root for " + uri);
            }
            java.io.File file2 = new java.io.File(file, strDecode2);
            try {
                java.io.File canonicalFile = file2.getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new java.lang.SecurityException("Resolved path jumped beyond configured root");
            } catch (java.io.IOException unused) {
                throw new java.lang.IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }

        @Override // androidx.core.content.FileProvider.a
        public android.net.Uri b(java.io.File file) throws java.io.IOException {
            try {
                java.lang.String canonicalPath = file.getCanonicalPath();
                java.util.Map.Entry<java.lang.String, java.io.File> entry = null;
                for (java.util.Map.Entry<java.lang.String, java.io.File> entry2 : this.b.entrySet()) {
                    java.lang.String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new java.lang.IllegalArgumentException(e.a.c.a.a.e("Failed to find configured root that contains ", canonicalPath));
                }
                java.lang.String path2 = entry.getValue().getPath();
                boolean zEndsWith = path2.endsWith(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                int length = path2.length();
                if (!zEndsWith) {
                    length++;
                }
                return new android.net.Uri.Builder().scheme("content").authority(this.a).encodedPath(android.net.Uri.encode(entry.getKey()) + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH + android.net.Uri.encode(canonicalPath.substring(length), com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR)).build();
            } catch (java.io.IOException unused) {
                throw new java.lang.IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }
    }

    public static java.io.File buildPath(java.io.File file, java.lang.String... strArr) {
        for (java.lang.String str : strArr) {
            if (str != null) {
                file = new java.io.File(file, str);
            }
        }
        return file;
    }

    public static java.lang.Object[] copyOf(java.lang.Object[] objArr, int i) {
        java.lang.Object[] objArr2 = new java.lang.Object[i];
        java.lang.System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    public static java.lang.String[] copyOf(java.lang.String[] strArr, int i) {
        java.lang.String[] strArr2 = new java.lang.String[i];
        java.lang.System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    public static androidx.core.content.FileProvider.a getPathStrategy(android.content.Context context, java.lang.String str) {
        androidx.core.content.FileProvider.a pathStrategy;
        synchronized (sCache) {
            pathStrategy = sCache.get(str);
            if (pathStrategy == null) {
                try {
                    pathStrategy = parsePathStrategy(context, str);
                    sCache.put(str, pathStrategy);
                } catch (java.io.IOException e2) {
                    throw new java.lang.IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e2);
                } catch (org.xmlpull.v1.XmlPullParserException e3) {
                    throw new java.lang.IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e3);
                }
            }
        }
        return pathStrategy;
    }

    public static android.net.Uri getUriForFile(android.content.Context context, java.lang.String str, java.io.File file) {
        return getPathStrategy(context, str).b(file);
    }

    @android.annotation.SuppressLint({"StreamFiles"})
    public static android.net.Uri getUriForFile(android.content.Context context, java.lang.String str, java.io.File file, java.lang.String str2) {
        return getUriForFile(context, str, file).buildUpon().appendQueryParameter(DISPLAYNAME_FIELD, str2).build();
    }

    public static int modeToMode(java.lang.String str) {
        if (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT.equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new java.lang.IllegalArgumentException(e.a.c.a.a.e("Invalid mode: ", str));
    }

    public static androidx.core.content.FileProvider.a parsePathStrategy(android.content.Context context, java.lang.String str) {
        androidx.core.content.FileProvider.b bVar = new androidx.core.content.FileProvider.b(str);
        android.content.pm.ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
        if (providerInfoResolveContentProvider == null) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.e("Couldn't find meta-data for provider with authority ", str));
        }
        android.content.res.XmlResourceParser xmlResourceParserLoadXmlMetaData = providerInfoResolveContentProvider.loadXmlMetaData(context.getPackageManager(), META_DATA_FILE_PROVIDER_PATHS);
        if (xmlResourceParserLoadXmlMetaData == null) {
            throw new java.lang.IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            int next = xmlResourceParserLoadXmlMetaData.next();
            if (next == 1) {
                return bVar;
            }
            if (next == 2) {
                java.lang.String name = xmlResourceParserLoadXmlMetaData.getName();
                java.io.File externalStorageDirectory = null;
                java.lang.String attributeValue = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, "name");
                java.lang.String attributeValue2 = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, ATTR_PATH);
                if (TAG_ROOT_PATH.equals(name)) {
                    externalStorageDirectory = DEVICE_ROOT;
                } else if (TAG_FILES_PATH.equals(name)) {
                    externalStorageDirectory = context.getFilesDir();
                } else if (TAG_CACHE_PATH.equals(name)) {
                    externalStorageDirectory = context.getCacheDir();
                } else if (TAG_EXTERNAL.equals(name)) {
                    externalStorageDirectory = android.os.Environment.getExternalStorageDirectory();
                } else if (TAG_EXTERNAL_FILES.equals(name)) {
                    java.io.File[] fileArrF = d.g.f.a.f(context, null);
                    if (fileArrF.length > 0) {
                        externalStorageDirectory = fileArrF[0];
                    }
                } else if (TAG_EXTERNAL_CACHE.equals(name)) {
                    java.io.File[] fileArrE = d.g.f.a.e(context);
                    if (fileArrE.length > 0) {
                        externalStorageDirectory = fileArrE[0];
                    }
                } else if (android.os.Build.VERSION.SDK_INT >= 21 && TAG_EXTERNAL_MEDIA.equals(name)) {
                    java.io.File[] externalMediaDirs = context.getExternalMediaDirs();
                    if (externalMediaDirs.length > 0) {
                        externalStorageDirectory = externalMediaDirs[0];
                    }
                }
                if (externalStorageDirectory != null) {
                    java.io.File fileBuildPath = buildPath(externalStorageDirectory, attributeValue2);
                    if (android.text.TextUtils.isEmpty(attributeValue)) {
                        throw new java.lang.IllegalArgumentException("Name must not be empty");
                    }
                    try {
                        bVar.b.put(attributeValue, fileBuildPath.getCanonicalFile());
                    } catch (java.io.IOException e2) {
                        throw new java.lang.IllegalArgumentException("Failed to resolve canonical path for " + fileBuildPath, e2);
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(android.content.Context context, android.content.pm.ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new java.lang.SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new java.lang.SecurityException("Provider must grant uri permissions");
        }
        this.mStrategy = getPathStrategy(context, providerInfo.authority.split(";")[0]);
    }

    @Override // android.content.ContentProvider
    public int delete(android.net.Uri uri, java.lang.String str, java.lang.String[] strArr) {
        return this.mStrategy.a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public java.lang.String getType(android.net.Uri uri) {
        java.io.File fileA = this.mStrategy.a(uri);
        int iLastIndexOf = fileA.getName().lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        java.lang.String mimeTypeFromExtension = android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileA.getName().substring(iLastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public android.net.Uri insert(android.net.Uri uri, android.content.ContentValues contentValues) {
        throw new java.lang.UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    @android.annotation.SuppressLint({"UnknownNullness"})
    public android.os.ParcelFileDescriptor openFile(android.net.Uri uri, java.lang.String str) {
        return android.os.ParcelFileDescriptor.open(this.mStrategy.a(uri), modeToMode(str));
    }

    @Override // android.content.ContentProvider
    public android.database.Cursor query(android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2) {
        int i;
        java.io.File fileA = this.mStrategy.a(uri);
        java.lang.String queryParameter = uri.getQueryParameter(DISPLAYNAME_FIELD);
        if (strArr == null) {
            strArr = COLUMNS;
        }
        java.lang.String[] strArr3 = new java.lang.String[strArr.length];
        java.lang.Object[] objArr = new java.lang.Object[strArr.length];
        int i2 = 0;
        for (java.lang.String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i2] = "_display_name";
                i = i2 + 1;
                objArr[i2] = queryParameter == null ? fileA.getName() : queryParameter;
            } else if ("_size".equals(str3)) {
                strArr3[i2] = "_size";
                i = i2 + 1;
                objArr[i2] = java.lang.Long.valueOf(fileA.length());
            }
            i2 = i;
        }
        java.lang.String[] strArrCopyOf = copyOf(strArr3, i2);
        java.lang.Object[] objArrCopyOf = copyOf(objArr, i2);
        android.database.MatrixCursor matrixCursor = new android.database.MatrixCursor(strArrCopyOf, 1);
        matrixCursor.addRow(objArrCopyOf);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(android.net.Uri uri, android.content.ContentValues contentValues, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.UnsupportedOperationException("No external updates");
    }
}
