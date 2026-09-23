package com.google.android.exoplayer2.extractor.mkv;

/* loaded from: classes.dex */
public interface EbmlProcessor {
    public static final int ELEMENT_TYPE_BINARY = 4;
    public static final int ELEMENT_TYPE_FLOAT = 5;
    public static final int ELEMENT_TYPE_MASTER = 1;
    public static final int ELEMENT_TYPE_STRING = 3;
    public static final int ELEMENT_TYPE_UNKNOWN = 0;
    public static final int ELEMENT_TYPE_UNSIGNED_INT = 2;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface ElementType {
    }

    void binaryElement(int i, int i2, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput);

    void endMasterElement(int i);

    void floatElement(int i, double d2);

    int getElementType(int i);

    void integerElement(int i, long j);

    boolean isLevel1Element(int i);

    void startMasterElement(int i, long j, long j2);

    void stringElement(int i, java.lang.String str);
}
