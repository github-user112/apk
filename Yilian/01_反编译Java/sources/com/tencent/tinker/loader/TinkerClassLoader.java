package com.tencent.tinker.loader;

@android.annotation.SuppressLint({"NewApi"})
@com.tencent.tinker.anno.Keep
/* loaded from: classes.dex */
public final class TinkerClassLoader extends dalvik.system.PathClassLoader {
    public final java.lang.ClassLoader mOriginAppClassLoader;

    @com.tencent.tinker.anno.Keep
    public class CompoundEnumeration<E> implements java.util.Enumeration<E> {
        public java.util.Enumeration<E>[] enums;
        public int index = 0;

        public CompoundEnumeration(java.util.Enumeration<E>[] enumerationArr) {
            this.enums = enumerationArr;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            while (true) {
                int i = this.index;
                java.util.Enumeration<E>[] enumerationArr = this.enums;
                if (i >= enumerationArr.length) {
                    return false;
                }
                if (enumerationArr[i] != null && enumerationArr[i].hasMoreElements()) {
                    return true;
                }
                this.index++;
            }
        }

        @Override // java.util.Enumeration
        public E nextElement() {
            if (hasMoreElements()) {
                return this.enums[this.index].nextElement();
            }
            throw new java.util.NoSuchElementException();
        }
    }

    public TinkerClassLoader(java.lang.String str, java.io.File file, java.lang.String str2, java.lang.ClassLoader classLoader) {
        super("", str2, java.lang.ClassLoader.getSystemClassLoader());
        this.mOriginAppClassLoader = classLoader;
        injectDexPath(this, str, file);
    }

    public static void injectDexPath(java.lang.ClassLoader classLoader, java.lang.String str, java.io.File file) {
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList(16);
            for (java.lang.String str2 : str.split(":")) {
                if (!str2.isEmpty()) {
                    arrayList.add(new java.io.File(str2));
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            com.tencent.tinker.loader.SystemClassLoaderAdder.injectDexesInternal(classLoader, arrayList, file);
        } catch (java.lang.Throwable th) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("Fail to create TinkerClassLoader.", th);
        }
    }

    @Override // dalvik.system.BaseDexClassLoader, java.lang.ClassLoader
    public java.lang.Class<?> findClass(java.lang.String str) {
        java.lang.Class<?> clsFindClass;
        try {
            clsFindClass = super.findClass(str);
        } catch (java.lang.ClassNotFoundException unused) {
            clsFindClass = null;
        }
        return clsFindClass != null ? clsFindClass : this.mOriginAppClassLoader.loadClass(str);
    }

    @Override // java.lang.ClassLoader
    public java.net.URL getResource(java.lang.String str) {
        java.net.URL resource = java.lang.Object.class.getClassLoader().getResource(str);
        if (resource != null) {
            return resource;
        }
        java.net.URL urlFindResource = findResource(str);
        return urlFindResource != null ? urlFindResource : this.mOriginAppClassLoader.getResource(str);
    }

    @Override // java.lang.ClassLoader
    public java.util.Enumeration<java.net.URL> getResources(java.lang.String str) {
        return new com.tencent.tinker.loader.TinkerClassLoader.CompoundEnumeration(new java.util.Enumeration[]{java.lang.Object.class.getClassLoader().getResources(str), findResources(str), this.mOriginAppClassLoader.getResources(str)});
    }
}
