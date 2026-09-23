package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class Dex {
    public static final int CHECKSUM_OFFSET = 8;
    public static final short[] EMPTY_SHORT_ARRAY = new short[0];
    public static final int SIGNATURE_OFFSET = 12;
    public final com.tencent.tinker.android.dex.Dex.ClassDefTable classDefs;
    public java.nio.ByteBuffer data;
    public final com.tencent.tinker.android.dex.Dex.FieldIdTable fieldIds;
    public final com.tencent.tinker.android.dex.Dex.MethodIdTable methodIds;
    public int nextSectionStart;
    public final com.tencent.tinker.android.dex.Dex.ProtoIdTable protoIds;
    public byte[] signature;
    public final com.tencent.tinker.android.dex.Dex.StringTable strings;
    public final com.tencent.tinker.android.dex.TableOfContents tableOfContents;
    public final com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorIndexTable typeIds;
    public final com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorTable typeNames;

    public final class ClassDefIterable implements java.lang.Iterable<com.tencent.tinker.android.dex.ClassDef> {
        public ClassDefIterable() {
        }

        @Override // java.lang.Iterable
        public java.util.Iterator<com.tencent.tinker.android.dex.ClassDef> iterator() {
            return !com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDefs.exists() ? java.util.Collections.emptySet().iterator() : new com.tencent.tinker.android.dex.Dex.ClassDefIterator();
        }
    }

    public final class ClassDefIterator implements java.util.Iterator<com.tencent.tinker.android.dex.ClassDef> {
        public int count;
        public final com.tencent.tinker.android.dex.Dex.Section in;

        public ClassDefIterator() {
            com.tencent.tinker.android.dex.Dex dex = com.tencent.tinker.android.dex.Dex.this;
            this.in = dex.openSection(dex.tableOfContents.classDefs);
            this.count = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.count < com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDefs.size;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public com.tencent.tinker.android.dex.ClassDef next() {
            if (!hasNext()) {
                throw new java.util.NoSuchElementException();
            }
            this.count++;
            return this.in.readClassDef();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public final class ClassDefTable extends java.util.AbstractList<com.tencent.tinker.android.dex.ClassDef> implements java.util.RandomAccess {
        public ClassDefTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public com.tencent.tinker.android.dex.ClassDef get(int i) {
            com.tencent.tinker.android.dex.Dex.checkBounds(i, com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDefs.size);
            com.tencent.tinker.android.dex.Dex dex = com.tencent.tinker.android.dex.Dex.this;
            return dex.openSection((i * 32) + dex.tableOfContents.classDefs.off).readClassDef();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDefs.size;
        }
    }

    public final class FieldIdTable extends java.util.AbstractList<com.tencent.tinker.android.dex.FieldId> implements java.util.RandomAccess {
        public FieldIdTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public com.tencent.tinker.android.dex.FieldId get(int i) {
            com.tencent.tinker.android.dex.Dex.checkBounds(i, com.tencent.tinker.android.dex.Dex.this.tableOfContents.fieldIds.size);
            com.tencent.tinker.android.dex.Dex dex = com.tencent.tinker.android.dex.Dex.this;
            return dex.openSection((i * 8) + dex.tableOfContents.fieldIds.off).readFieldId();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.tencent.tinker.android.dex.Dex.this.tableOfContents.fieldIds.size;
        }
    }

    public final class MethodIdTable extends java.util.AbstractList<com.tencent.tinker.android.dex.MethodId> implements java.util.RandomAccess {
        public MethodIdTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public com.tencent.tinker.android.dex.MethodId get(int i) {
            com.tencent.tinker.android.dex.Dex.checkBounds(i, com.tencent.tinker.android.dex.Dex.this.tableOfContents.methodIds.size);
            com.tencent.tinker.android.dex.Dex dex = com.tencent.tinker.android.dex.Dex.this;
            return dex.openSection((i * 8) + dex.tableOfContents.methodIds.off).readMethodId();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.tencent.tinker.android.dex.Dex.this.tableOfContents.methodIds.size;
        }
    }

    public final class ProtoIdTable extends java.util.AbstractList<com.tencent.tinker.android.dex.ProtoId> implements java.util.RandomAccess {
        public ProtoIdTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public com.tencent.tinker.android.dex.ProtoId get(int i) {
            com.tencent.tinker.android.dex.Dex.checkBounds(i, com.tencent.tinker.android.dex.Dex.this.tableOfContents.protoIds.size);
            com.tencent.tinker.android.dex.Dex dex = com.tencent.tinker.android.dex.Dex.this;
            return dex.openSection((i * 12) + dex.tableOfContents.protoIds.off).readProtoId();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.tencent.tinker.android.dex.Dex.this.tableOfContents.protoIds.size;
        }
    }

    public final class Section extends com.tencent.tinker.android.dex.io.DexDataBuffer {
        public final java.lang.String name;

        public Section(java.lang.String str, java.nio.ByteBuffer byteBuffer) {
            super(byteBuffer);
            this.name = str;
        }

        private void ensureFourBytesAligned(com.tencent.tinker.android.dex.TableOfContents.Section section, boolean z) {
            if (section.isElementFourByteAligned) {
                if (z) {
                    alignToFourBytesWithZeroFill();
                } else {
                    alignToFourBytes();
                }
            }
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.Annotation readAnnotation() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotations, false);
            return super.readAnnotation();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.AnnotationSet readAnnotationSet() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotationSets, false);
            return super.readAnnotationSet();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.AnnotationSetRefList readAnnotationSetRefList() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotationSetRefLists, false);
            return super.readAnnotationSetRefList();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.AnnotationsDirectory readAnnotationsDirectory() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotationsDirectories, false);
            return super.readAnnotationsDirectory();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.ClassData readClassData() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDatas, false);
            return super.readClassData();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.ClassDef readClassDef() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDefs, false);
            return super.readClassDef();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.Code readCode() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.codes, false);
            return super.readCode();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.DebugInfoItem readDebugInfoItem() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.debugInfos, false);
            return super.readDebugInfoItem();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.EncodedValue readEncodedArray() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.encodedArrays, false);
            return super.readEncodedArray();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.FieldId readFieldId() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.fieldIds, false);
            return super.readFieldId();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.MethodId readMethodId() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.methodIds, false);
            return super.readMethodId();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.ProtoId readProtoId() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.protoIds, false);
            return super.readProtoId();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.StringData readStringData() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.stringDatas, false);
            return super.readStringData();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public com.tencent.tinker.android.dex.TypeList readTypeList() {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.typeLists, false);
            return super.readTypeList();
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeAnnotation(com.tencent.tinker.android.dex.Annotation annotation) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotations, true);
            return super.writeAnnotation(annotation);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeAnnotationSet(com.tencent.tinker.android.dex.AnnotationSet annotationSet) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotationSets, true);
            return super.writeAnnotationSet(annotationSet);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeAnnotationSetRefList(com.tencent.tinker.android.dex.AnnotationSetRefList annotationSetRefList) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotationSetRefLists, true);
            return super.writeAnnotationSetRefList(annotationSetRefList);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeAnnotationsDirectory(com.tencent.tinker.android.dex.AnnotationsDirectory annotationsDirectory) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.annotationsDirectories, true);
            return super.writeAnnotationsDirectory(annotationsDirectory);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeClassData(com.tencent.tinker.android.dex.ClassData classData) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDatas, true);
            return super.writeClassData(classData);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeClassDef(com.tencent.tinker.android.dex.ClassDef classDef) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.classDefs, true);
            return super.writeClassDef(classDef);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeCode(com.tencent.tinker.android.dex.Code code) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.codes, true);
            return super.writeCode(code);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeDebugInfoItem(com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.debugInfos, true);
            return super.writeDebugInfoItem(debugInfoItem);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeEncodedArray(com.tencent.tinker.android.dex.EncodedValue encodedValue) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.encodedArrays, true);
            return super.writeEncodedArray(encodedValue);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeFieldId(com.tencent.tinker.android.dex.FieldId fieldId) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.fieldIds, true);
            return super.writeFieldId(fieldId);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeMethodId(com.tencent.tinker.android.dex.MethodId methodId) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.methodIds, true);
            return super.writeMethodId(methodId);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeProtoId(com.tencent.tinker.android.dex.ProtoId protoId) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.protoIds, true);
            return super.writeProtoId(protoId);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeStringData(com.tencent.tinker.android.dex.StringData stringData) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.stringDatas, true);
            return super.writeStringData(stringData);
        }

        @Override // com.tencent.tinker.android.dex.io.DexDataBuffer
        public int writeTypeList(com.tencent.tinker.android.dex.TypeList typeList) {
            ensureFourBytesAligned(com.tencent.tinker.android.dex.Dex.this.tableOfContents.typeLists, true);
            return super.writeTypeList(typeList);
        }
    }

    public final class StringTable extends java.util.AbstractList<java.lang.String> implements java.util.RandomAccess {
        public StringTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public java.lang.String get(int i) {
            com.tencent.tinker.android.dex.Dex.checkBounds(i, com.tencent.tinker.android.dex.Dex.this.tableOfContents.stringIds.size);
            com.tencent.tinker.android.dex.Dex dex = com.tencent.tinker.android.dex.Dex.this;
            return com.tencent.tinker.android.dex.Dex.this.openSection(dex.openSection((i * 4) + dex.tableOfContents.stringIds.off).readInt()).readStringData().value;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.tencent.tinker.android.dex.Dex.this.tableOfContents.stringIds.size;
        }
    }

    public final class TypeIndexToDescriptorIndexTable extends java.util.AbstractList<java.lang.Integer> implements java.util.RandomAccess {
        public TypeIndexToDescriptorIndexTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public java.lang.Integer get(int i) {
            return java.lang.Integer.valueOf(com.tencent.tinker.android.dex.Dex.this.descriptorIndexFromTypeIndex(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.tencent.tinker.android.dex.Dex.this.tableOfContents.typeIds.size;
        }
    }

    public final class TypeIndexToDescriptorTable extends java.util.AbstractList<java.lang.String> implements java.util.RandomAccess {
        public TypeIndexToDescriptorTable() {
        }

        @Override // java.util.AbstractList, java.util.List
        public java.lang.String get(int i) {
            return com.tencent.tinker.android.dex.Dex.this.strings.get(com.tencent.tinker.android.dex.Dex.this.descriptorIndexFromTypeIndex(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return com.tencent.tinker.android.dex.Dex.this.tableOfContents.typeIds.size;
        }
    }

    public Dex(int i) {
        this.tableOfContents = new com.tencent.tinker.android.dex.TableOfContents();
        this.strings = new com.tencent.tinker.android.dex.Dex.StringTable();
        this.typeIds = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorIndexTable();
        this.typeNames = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorTable();
        this.protoIds = new com.tencent.tinker.android.dex.Dex.ProtoIdTable();
        this.fieldIds = new com.tencent.tinker.android.dex.Dex.FieldIdTable();
        this.methodIds = new com.tencent.tinker.android.dex.Dex.MethodIdTable();
        this.classDefs = new com.tencent.tinker.android.dex.Dex.ClassDefTable();
        this.nextSectionStart = 0;
        this.signature = null;
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(new byte[i]);
        this.data = byteBufferWrap;
        byteBufferWrap.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        this.tableOfContents.fileSize = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.tencent.tinker.android.dex.Dex$1] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public Dex(java.io.File file) throws java.lang.Throwable {
        java.util.zip.ZipFile zipFile;
        java.io.BufferedInputStream bufferedInputStream;
        this.tableOfContents = new com.tencent.tinker.android.dex.TableOfContents();
        ?? r1 = 0;
        bufferedInputStream = null;
        java.io.BufferedInputStream bufferedInputStream2 = null;
        java.io.InputStream inputStream = null;
        this.strings = new com.tencent.tinker.android.dex.Dex.StringTable();
        this.typeIds = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorIndexTable();
        this.typeNames = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorTable();
        this.protoIds = new com.tencent.tinker.android.dex.Dex.ProtoIdTable();
        this.fieldIds = new com.tencent.tinker.android.dex.Dex.FieldIdTable();
        this.methodIds = new com.tencent.tinker.android.dex.Dex.MethodIdTable();
        this.classDefs = new com.tencent.tinker.android.dex.Dex.ClassDefTable();
        this.nextSectionStart = 0;
        this.signature = null;
        if (file == null) {
            throw new java.lang.IllegalArgumentException("file is null.");
        }
        try {
            if (com.tencent.tinker.android.dex.util.FileUtils.hasArchiveSuffix(file.getName())) {
                try {
                    zipFile = new java.util.zip.ZipFile(file);
                } catch (java.lang.Throwable th) {
                    th = th;
                }
                try {
                    java.util.zip.ZipEntry entry = zipFile.getEntry("classes.dex");
                    if (entry == null) {
                        throw new com.tencent.tinker.android.dex.DexException("Expected classes.dex in " + file);
                    }
                    try {
                        inputStream = zipFile.getInputStream(entry);
                        loadFrom(inputStream, (int) entry.getSize());
                        zipFile.close();
                    } finally {
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    }
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    r1 = zipFile;
                    if (r1 != 0) {
                        try {
                            r1.close();
                        } catch (java.lang.Exception unused) {
                        }
                    }
                    throw th;
                }
            } else {
                if (!file.getName().endsWith(com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX)) {
                    throw new com.tencent.tinker.android.dex.DexException("unknown output extension: " + file);
                }
                try {
                    try {
                        bufferedInputStream = new java.io.BufferedInputStream(new java.io.FileInputStream(file));
                    } catch (java.lang.Exception e2) {
                        e = e2;
                    }
                } catch (java.lang.Throwable th3) {
                    th = th3;
                }
                try {
                    loadFrom(bufferedInputStream, (int) file.length());
                    bufferedInputStream.close();
                } catch (java.lang.Exception e3) {
                    e = e3;
                    bufferedInputStream2 = bufferedInputStream;
                    throw new com.tencent.tinker.android.dex.DexException(e);
                } catch (java.lang.Throwable th4) {
                    th = th4;
                    bufferedInputStream2 = bufferedInputStream;
                    if (bufferedInputStream2 != null) {
                        try {
                            bufferedInputStream2.close();
                        } catch (java.lang.Exception unused2) {
                        }
                    }
                    throw th;
                }
            }
        } catch (java.lang.Exception unused3) {
        }
    }

    public Dex(java.io.InputStream inputStream) {
        this.tableOfContents = new com.tencent.tinker.android.dex.TableOfContents();
        this.strings = new com.tencent.tinker.android.dex.Dex.StringTable();
        this.typeIds = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorIndexTable();
        this.typeNames = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorTable();
        this.protoIds = new com.tencent.tinker.android.dex.Dex.ProtoIdTable();
        this.fieldIds = new com.tencent.tinker.android.dex.Dex.FieldIdTable();
        this.methodIds = new com.tencent.tinker.android.dex.Dex.MethodIdTable();
        this.classDefs = new com.tencent.tinker.android.dex.Dex.ClassDefTable();
        this.nextSectionStart = 0;
        this.signature = null;
        loadFrom(inputStream);
    }

    public Dex(java.io.InputStream inputStream, int i) {
        this.tableOfContents = new com.tencent.tinker.android.dex.TableOfContents();
        this.strings = new com.tencent.tinker.android.dex.Dex.StringTable();
        this.typeIds = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorIndexTable();
        this.typeNames = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorTable();
        this.protoIds = new com.tencent.tinker.android.dex.Dex.ProtoIdTable();
        this.fieldIds = new com.tencent.tinker.android.dex.Dex.FieldIdTable();
        this.methodIds = new com.tencent.tinker.android.dex.Dex.MethodIdTable();
        this.classDefs = new com.tencent.tinker.android.dex.Dex.ClassDefTable();
        this.nextSectionStart = 0;
        this.signature = null;
        loadFrom(inputStream, i);
    }

    public Dex(java.nio.ByteBuffer byteBuffer) {
        this.tableOfContents = new com.tencent.tinker.android.dex.TableOfContents();
        this.strings = new com.tencent.tinker.android.dex.Dex.StringTable();
        this.typeIds = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorIndexTable();
        this.typeNames = new com.tencent.tinker.android.dex.Dex.TypeIndexToDescriptorTable();
        this.protoIds = new com.tencent.tinker.android.dex.Dex.ProtoIdTable();
        this.fieldIds = new com.tencent.tinker.android.dex.Dex.FieldIdTable();
        this.methodIds = new com.tencent.tinker.android.dex.Dex.MethodIdTable();
        this.classDefs = new com.tencent.tinker.android.dex.Dex.ClassDefTable();
        this.nextSectionStart = 0;
        this.signature = null;
        this.data = byteBuffer;
        byteBuffer.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        this.tableOfContents.readFrom(this);
    }

    public Dex(byte[] bArr) {
        this(java.nio.ByteBuffer.wrap(bArr));
    }

    private java.lang.String bytesToHexString(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length << 1);
        for (byte b : bArr) {
            sb.append(com.tencent.tinker.android.dx.util.Hex.u1(b));
        }
        return sb.toString();
    }

    public static void checkBounds(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new java.lang.IndexOutOfBoundsException("index:" + i + ", length=" + i2);
        }
    }

    private void loadFrom(java.io.InputStream inputStream) {
        loadFrom(inputStream, 0);
    }

    private void loadFrom(java.io.InputStream inputStream, int i) {
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(com.tencent.tinker.android.dex.util.FileUtils.readStream(inputStream, i));
        this.data = byteBufferWrap;
        byteBufferWrap.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        this.tableOfContents.readFrom(this);
    }

    public int annotationDirectoryOffsetFromClassDefIndex(int i) {
        checkBounds(i, this.tableOfContents.classDefs.size);
        return this.data.getInt((i * 32) + this.tableOfContents.classDefs.off + 4 + 4 + 4 + 4 + 4);
    }

    public com.tencent.tinker.android.dex.Dex.Section appendSection(int i, java.lang.String str) {
        int i2 = this.nextSectionStart + i;
        java.nio.ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        byteBufferDuplicate.position(this.nextSectionStart);
        byteBufferDuplicate.limit(i2);
        com.tencent.tinker.android.dex.Dex.Section section = new com.tencent.tinker.android.dex.Dex.Section(str, byteBufferDuplicate);
        this.nextSectionStart = i2;
        return section;
    }

    public java.lang.Iterable<com.tencent.tinker.android.dex.ClassDef> classDefIterable() {
        return new com.tencent.tinker.android.dex.Dex.ClassDefIterable();
    }

    public java.util.List<com.tencent.tinker.android.dex.ClassDef> classDefs() {
        return this.classDefs;
    }

    public int computeChecksum() {
        java.util.zip.Adler32 adler32 = new java.util.zip.Adler32();
        byte[] bArr = new byte[8192];
        java.nio.ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
        byteBufferDuplicate.position(12);
        while (byteBufferDuplicate.hasRemaining()) {
            int iMin = java.lang.Math.min(8192, byteBufferDuplicate.remaining());
            byteBufferDuplicate.get(bArr, 0, iMin);
            adler32.update(bArr, 0, iMin);
        }
        return (int) adler32.getValue();
    }

    public byte[] computeSignature(boolean z) throws java.security.NoSuchAlgorithmException {
        byte[] bArr = this.signature;
        if (bArr != null && !z) {
            return bArr;
        }
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA-1");
            byte[] bArr2 = new byte[8192];
            java.nio.ByteBuffer byteBufferDuplicate = this.data.duplicate();
            byteBufferDuplicate.limit(byteBufferDuplicate.capacity());
            byteBufferDuplicate.position(32);
            while (byteBufferDuplicate.hasRemaining()) {
                int iMin = java.lang.Math.min(8192, byteBufferDuplicate.remaining());
                byteBufferDuplicate.get(bArr2, 0, iMin);
                messageDigest.update(bArr2, 0, iMin);
            }
            byte[] bArrDigest = messageDigest.digest();
            this.signature = bArrDigest;
            return bArrDigest;
        } catch (java.security.NoSuchAlgorithmException unused) {
            throw new java.lang.AssertionError();
        }
    }

    public int declaringClassIndexFromMethodIndex(int i) {
        checkBounds(i, this.tableOfContents.methodIds.size);
        return this.data.getShort((i * 8) + this.tableOfContents.methodIds.off) & 65535;
    }

    public int descriptorIndexFromTypeIndex(int i) {
        checkBounds(i, this.tableOfContents.typeIds.size);
        return this.data.getInt((i * 4) + this.tableOfContents.typeIds.off);
    }

    public java.util.List<com.tencent.tinker.android.dex.FieldId> fieldIds() {
        return this.fieldIds;
    }

    public int findClassDefIndexFromTypeIndex(int i) {
        checkBounds(i, this.tableOfContents.typeIds.size);
        if (!this.tableOfContents.classDefs.exists()) {
            return -1;
        }
        for (int i2 = 0; i2 < this.tableOfContents.classDefs.size; i2++) {
            if (typeIndexFromClassDefIndex(i2) == i) {
                return i2;
            }
        }
        return -1;
    }

    public int findFieldIndex(com.tencent.tinker.android.dex.FieldId fieldId) {
        return java.util.Collections.binarySearch(this.fieldIds, fieldId);
    }

    public int findMethodIndex(com.tencent.tinker.android.dex.MethodId methodId) {
        return java.util.Collections.binarySearch(this.methodIds, methodId);
    }

    public int findStringIndex(java.lang.String str) {
        return java.util.Collections.binarySearch(this.strings, str);
    }

    public int findTypeIndex(java.lang.String str) {
        return java.util.Collections.binarySearch(this.typeNames, str);
    }

    public byte[] getBytes() {
        java.nio.ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byte[] bArr = new byte[byteBufferDuplicate.capacity()];
        byteBufferDuplicate.position(0);
        byteBufferDuplicate.get(bArr);
        return bArr;
    }

    public int getLength() {
        return this.data.capacity();
    }

    public int getNextSectionStart() {
        return this.nextSectionStart;
    }

    public com.tencent.tinker.android.dex.TableOfContents getTableOfContents() {
        return this.tableOfContents;
    }

    public short[] interfaceTypeIndicesFromClassDef(com.tencent.tinker.android.dex.ClassDef classDef) {
        int i = this.data.getInt(classDef.off + 4 + 4 + 4);
        if (i == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        int i2 = this.data.getInt(i);
        if (i2 <= 0) {
            throw new java.lang.AssertionError(e.a.c.a.a.K("Unexpected interfaces list size: ", i2));
        }
        int i3 = i + 4;
        short[] sArr = new short[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            sArr[i4] = this.data.getShort(i3);
            i3 += 2;
        }
        return sArr;
    }

    public short[] interfaceTypeIndicesFromClassDefIndex(int i) {
        checkBounds(i, this.tableOfContents.classDefs.size);
        int i2 = this.data.getInt((i * 32) + this.tableOfContents.classDefs.off + 4 + 4 + 4);
        if (i2 == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        int i3 = this.data.getInt(i2);
        if (i3 <= 0) {
            throw new java.lang.AssertionError(e.a.c.a.a.K("Unexpected interfaces list size: ", i3));
        }
        int i4 = i2 + 4;
        short[] sArr = new short[i3];
        for (int i5 = 0; i5 < i3; i5++) {
            sArr[i5] = this.data.getShort(i4);
            i4 += 2;
        }
        return sArr;
    }

    public java.util.List<com.tencent.tinker.android.dex.MethodId> methodIds() {
        return this.methodIds;
    }

    public int nameIndexFromFieldIndex(int i) {
        checkBounds(i, this.tableOfContents.fieldIds.size);
        return this.data.getInt((i * 8) + this.tableOfContents.fieldIds.off + 2 + 2);
    }

    public int nameIndexFromMethodIndex(int i) {
        checkBounds(i, this.tableOfContents.methodIds.size);
        return this.data.getInt((i * 8) + this.tableOfContents.methodIds.off + 2 + 2);
    }

    public com.tencent.tinker.android.dex.Dex.Section openSection(int i) {
        if (i < 0 || i >= this.data.capacity()) {
            java.lang.StringBuilder sbP = e.a.c.a.a.p("position=", i, " length=");
            sbP.append(this.data.capacity());
            throw new java.lang.IllegalArgumentException(sbP.toString());
        }
        java.nio.ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        byteBufferDuplicate.position(i);
        byteBufferDuplicate.limit(this.data.capacity());
        return new com.tencent.tinker.android.dex.Dex.Section("temp-section", byteBufferDuplicate);
    }

    public com.tencent.tinker.android.dex.Dex.Section openSection(com.tencent.tinker.android.dex.TableOfContents.Section section) {
        int i = section.off;
        if (i < 0 || i >= this.data.capacity()) {
            java.lang.StringBuilder sbP = e.a.c.a.a.p("position=", i, " length=");
            sbP.append(this.data.capacity());
            throw new java.lang.IllegalArgumentException(sbP.toString());
        }
        java.nio.ByteBuffer byteBufferDuplicate = this.data.duplicate();
        byteBufferDuplicate.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        byteBufferDuplicate.position(i);
        byteBufferDuplicate.limit(i + section.byteCount);
        return new com.tencent.tinker.android.dex.Dex.Section("section", byteBufferDuplicate);
    }

    public short[] parameterTypeIndicesFromMethodId(com.tencent.tinker.android.dex.MethodId methodId) {
        int i = methodId.protoIndex & 65535;
        checkBounds(i, this.tableOfContents.protoIds.size);
        int i2 = this.data.getInt((i * 12) + this.tableOfContents.protoIds.off + 4 + 4);
        if (i2 == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        int i3 = this.data.getInt(i2);
        if (i3 <= 0) {
            throw new java.lang.AssertionError(e.a.c.a.a.K("Unexpected parameter type list size: ", i3));
        }
        int i4 = i2 + 4;
        short[] sArr = new short[i3];
        for (int i5 = 0; i5 < i3; i5++) {
            sArr[i5] = this.data.getShort(i4);
            i4 += 2;
        }
        return sArr;
    }

    public short[] parameterTypeIndicesFromMethodIndex(int i) {
        checkBounds(i, this.tableOfContents.methodIds.size);
        int i2 = this.data.getShort((i * 8) + this.tableOfContents.methodIds.off + 2) & 65535;
        checkBounds(i2, this.tableOfContents.protoIds.size);
        int i3 = this.data.getInt((i2 * 12) + this.tableOfContents.protoIds.off + 4 + 4);
        if (i3 == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        int i4 = this.data.getInt(i3);
        if (i4 <= 0) {
            throw new java.lang.AssertionError(e.a.c.a.a.K("Unexpected parameter type list size: ", i4));
        }
        int i5 = i3 + 4;
        short[] sArr = new short[i4];
        for (int i6 = 0; i6 < i4; i6++) {
            sArr[i6] = this.data.getShort(i5);
            i5 += 2;
        }
        return sArr;
    }

    public java.util.List<com.tencent.tinker.android.dex.ProtoId> protoIds() {
        return this.protoIds;
    }

    public com.tencent.tinker.android.dex.ClassData readClassData(com.tencent.tinker.android.dex.ClassDef classDef) {
        int i = classDef.classDataOffset;
        if (i != 0) {
            return openSection(i).readClassData();
        }
        throw new java.lang.IllegalArgumentException("offset == 0");
    }

    public com.tencent.tinker.android.dex.Code readCode(com.tencent.tinker.android.dex.ClassData.Method method) {
        int i = method.codeOffset;
        if (i != 0) {
            return openSection(i).readCode();
        }
        throw new java.lang.IllegalArgumentException("offset == 0");
    }

    public int returnTypeIndexFromMethodIndex(int i) {
        checkBounds(i, this.tableOfContents.methodIds.size);
        int i2 = this.data.getShort((i * 8) + this.tableOfContents.methodIds.off + 2) & 65535;
        checkBounds(i2, this.tableOfContents.protoIds.size);
        return this.data.getInt((i2 * 12) + this.tableOfContents.protoIds.off + 4);
    }

    public java.util.List<java.lang.String> strings() {
        return this.strings;
    }

    public java.util.List<java.lang.Integer> typeIds() {
        return this.typeIds;
    }

    public int typeIndexFromClassDefIndex(int i) {
        checkBounds(i, this.tableOfContents.classDefs.size);
        return this.data.getInt((i * 32) + this.tableOfContents.classDefs.off);
    }

    public int typeIndexFromFieldIndex(int i) {
        checkBounds(i, this.tableOfContents.fieldIds.size);
        return this.data.getShort((i * 8) + this.tableOfContents.fieldIds.off + 2) & 65535;
    }

    public java.util.List<java.lang.String> typeNames() {
        return this.typeNames;
    }

    public void writeHashes() {
        openSection(12).write(computeSignature(true));
        openSection(8).writeInt(computeChecksum());
    }

    public void writeTo(java.io.File file) throws java.lang.Throwable {
        java.io.BufferedOutputStream bufferedOutputStream;
        java.io.BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                bufferedOutputStream = new java.io.BufferedOutputStream(new java.io.FileOutputStream(file));
            } catch (java.lang.Exception e2) {
                e = e2;
            }
        } catch (java.lang.Throwable th) {
            th = th;
        }
        try {
            writeTo(bufferedOutputStream);
            try {
                bufferedOutputStream.close();
            } catch (java.lang.Exception unused) {
            }
        } catch (java.lang.Exception e3) {
            e = e3;
            bufferedOutputStream2 = bufferedOutputStream;
            throw new com.tencent.tinker.android.dex.DexException(e);
        } catch (java.lang.Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            if (bufferedOutputStream2 != null) {
                try {
                    bufferedOutputStream2.close();
                } catch (java.lang.Exception unused2) {
                }
            }
            throw th;
        }
    }

    public void writeTo(java.io.OutputStream outputStream) throws java.io.IOException {
        outputStream.write(this.data.array());
        outputStream.flush();
    }
}
