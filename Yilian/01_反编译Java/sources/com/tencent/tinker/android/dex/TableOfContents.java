package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class TableOfContents {
    public static final short SECTION_TYPE_ANNOTATIONS = 8196;
    public static final short SECTION_TYPE_ANNOTATIONSDIRECTORIES = 8198;
    public static final short SECTION_TYPE_ANNOTATIONSETREFLISTS = 4098;
    public static final short SECTION_TYPE_ANNOTATIONSETS = 4099;
    public static final short SECTION_TYPE_CLASSDATA = 8192;
    public static final short SECTION_TYPE_CLASSDEFS = 6;
    public static final short SECTION_TYPE_CODES = 8193;
    public static final short SECTION_TYPE_DEBUGINFOS = 8195;
    public static final short SECTION_TYPE_ENCODEDARRAYS = 8197;
    public static final short SECTION_TYPE_FIELDIDS = 4;
    public static final short SECTION_TYPE_HEADER = 0;
    public static final short SECTION_TYPE_MAPLIST = 4096;
    public static final short SECTION_TYPE_METHODIDS = 5;
    public static final short SECTION_TYPE_PROTOIDS = 3;
    public static final short SECTION_TYPE_STRINGDATAS = 8194;
    public static final short SECTION_TYPE_STRINGIDS = 1;
    public static final short SECTION_TYPE_TYPEIDS = 2;
    public static final short SECTION_TYPE_TYPELISTS = 4097;
    public final com.tencent.tinker.android.dex.TableOfContents.Section annotationsDirectories;
    public int checksum;
    public int dataOff;
    public int dataSize;
    public int fileSize;
    public int linkOff;
    public int linkSize;
    public final com.tencent.tinker.android.dex.TableOfContents.Section[] sections;
    public byte[] signature;
    public final com.tencent.tinker.android.dex.TableOfContents.Section header = new com.tencent.tinker.android.dex.TableOfContents.Section(0, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section stringIds = new com.tencent.tinker.android.dex.TableOfContents.Section(1, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section typeIds = new com.tencent.tinker.android.dex.TableOfContents.Section(2, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section protoIds = new com.tencent.tinker.android.dex.TableOfContents.Section(3, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section fieldIds = new com.tencent.tinker.android.dex.TableOfContents.Section(4, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section methodIds = new com.tencent.tinker.android.dex.TableOfContents.Section(5, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section classDefs = new com.tencent.tinker.android.dex.TableOfContents.Section(6, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section mapList = new com.tencent.tinker.android.dex.TableOfContents.Section(4096, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section typeLists = new com.tencent.tinker.android.dex.TableOfContents.Section(4097, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section annotationSetRefLists = new com.tencent.tinker.android.dex.TableOfContents.Section(4098, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section annotationSets = new com.tencent.tinker.android.dex.TableOfContents.Section(4099, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section classDatas = new com.tencent.tinker.android.dex.TableOfContents.Section(8192, false);
    public final com.tencent.tinker.android.dex.TableOfContents.Section codes = new com.tencent.tinker.android.dex.TableOfContents.Section(8193, true);
    public final com.tencent.tinker.android.dex.TableOfContents.Section stringDatas = new com.tencent.tinker.android.dex.TableOfContents.Section(8194, false);
    public final com.tencent.tinker.android.dex.TableOfContents.Section debugInfos = new com.tencent.tinker.android.dex.TableOfContents.Section(com.umeng.analytics.pro.n.a.r, false);
    public final com.tencent.tinker.android.dex.TableOfContents.Section annotations = new com.tencent.tinker.android.dex.TableOfContents.Section(com.umeng.analytics.pro.n.a.s, false);
    public final com.tencent.tinker.android.dex.TableOfContents.Section encodedArrays = new com.tencent.tinker.android.dex.TableOfContents.Section(com.umeng.analytics.pro.n.a.t, false);

    public static class Section implements java.lang.Comparable<com.tencent.tinker.android.dex.TableOfContents.Section> {
        public static final int UNDEF_INDEX = -1;
        public static final int UNDEF_OFFSET = -1;
        public int byteCount;
        public boolean isElementFourByteAligned;
        public int off;
        public int size;
        public final short type;

        public static abstract class Item<T> implements java.lang.Comparable<T> {
            public int off;

            public Item(int i) {
                this.off = i;
            }

            public abstract int byteCountInDex();

            /* JADX WARN: Multi-variable type inference failed */
            public boolean equals(java.lang.Object obj) {
                return compareTo(obj) == 0;
            }

            public int hashCode() {
                return super.hashCode();
            }
        }

        public Section(int i, boolean z) {
            this.size = 0;
            this.off = -1;
            this.byteCount = 0;
            this.type = (short) i;
            this.isElementFourByteAligned = z;
            if (i == 0) {
                this.off = 0;
                this.size = 1;
                this.byteCount = 112;
            } else if (i == 4096) {
                this.size = 1;
            }
        }

        private int remapTypeOrderId(int i) {
            switch (i) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                    return 6;
                default:
                    switch (i) {
                        case 4096:
                            return 17;
                        case 4097:
                            return 8;
                        case 4098:
                            return 11;
                        case 4099:
                            return 10;
                        default:
                            switch (i) {
                                case 8192:
                                    return 15;
                                case 8193:
                                    return 14;
                                case 8194:
                                    return 7;
                                case com.umeng.analytics.pro.n.a.r /* 8195 */:
                                    return 13;
                                case com.umeng.analytics.pro.n.a.s /* 8196 */:
                                    return 9;
                                case com.umeng.analytics.pro.n.a.t /* 8197 */:
                                    return 16;
                                case 8198:
                                    return 12;
                                default:
                                    throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("unknown section type: ", i));
                            }
                    }
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(com.tencent.tinker.android.dex.TableOfContents.Section section) {
            int i = this.off;
            int i2 = section.off;
            if (i != i2) {
                return i < i2 ? -1 : 1;
            }
            int iRemapTypeOrderId = remapTypeOrderId(this.type);
            int iRemapTypeOrderId2 = remapTypeOrderId(section.type);
            if (iRemapTypeOrderId != iRemapTypeOrderId2) {
                return iRemapTypeOrderId < iRemapTypeOrderId2 ? -1 : 1;
            }
            return 0;
        }

        public boolean exists() {
            return this.size > 0;
        }

        public java.lang.String toString() {
            return java.lang.String.format("Section[type=%#x,off=%#x,size=%#x]", java.lang.Short.valueOf(this.type), java.lang.Integer.valueOf(this.off), java.lang.Integer.valueOf(this.size));
        }
    }

    public TableOfContents() {
        com.tencent.tinker.android.dex.TableOfContents.Section section = new com.tencent.tinker.android.dex.TableOfContents.Section(8198, true);
        this.annotationsDirectories = section;
        this.sections = new com.tencent.tinker.android.dex.TableOfContents.Section[]{this.header, this.stringIds, this.typeIds, this.protoIds, this.fieldIds, this.methodIds, this.classDefs, this.mapList, this.typeLists, this.annotationSetRefLists, this.annotationSets, this.classDatas, this.codes, this.stringDatas, this.debugInfos, this.annotations, this.encodedArrays, section};
        this.signature = new byte[20];
    }

    private com.tencent.tinker.android.dex.TableOfContents.Section getSection(short s) {
        for (com.tencent.tinker.android.dex.TableOfContents.Section section : this.sections) {
            if (section.type == s) {
                return section;
            }
        }
        throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("No such map item: ", s));
    }

    private void readHeader(com.tencent.tinker.android.dex.Dex.Section section) {
        byte[] byteArray = section.readByteArray(8);
        if (com.tencent.tinker.android.dex.DexFormat.magicToApi(byteArray) != 13) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected magic: ");
            sbO.append(java.util.Arrays.toString(byteArray));
            throw new com.tencent.tinker.android.dex.DexException(sbO.toString());
        }
        this.checksum = section.readInt();
        this.signature = section.readByteArray(20);
        this.fileSize = section.readInt();
        int i = section.readInt();
        if (i != 112) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Unexpected header: 0x");
            sbO2.append(java.lang.Integer.toHexString(i));
            throw new com.tencent.tinker.android.dex.DexException(sbO2.toString());
        }
        int i2 = section.readInt();
        if (i2 != 305419896) {
            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Unexpected endian tag: 0x");
            sbO3.append(java.lang.Integer.toHexString(i2));
            throw new com.tencent.tinker.android.dex.DexException(sbO3.toString());
        }
        this.linkSize = section.readInt();
        this.linkOff = section.readInt();
        this.mapList.off = section.readInt();
        if (this.mapList.off == 0) {
            throw new com.tencent.tinker.android.dex.DexException("Cannot merge dex files that do not contain a map");
        }
        this.stringIds.size = section.readInt();
        this.stringIds.off = section.readInt();
        this.typeIds.size = section.readInt();
        this.typeIds.off = section.readInt();
        this.protoIds.size = section.readInt();
        this.protoIds.off = section.readInt();
        this.fieldIds.size = section.readInt();
        this.fieldIds.off = section.readInt();
        this.methodIds.size = section.readInt();
        this.methodIds.off = section.readInt();
        this.classDefs.size = section.readInt();
        this.classDefs.off = section.readInt();
        this.dataSize = section.readInt();
        this.dataOff = section.readInt();
    }

    private void readMap(com.tencent.tinker.android.dex.Dex.Section section) {
        int i;
        int i2 = section.readInt();
        com.tencent.tinker.android.dex.TableOfContents.Section section2 = null;
        int i3 = 0;
        while (i3 < i2) {
            short s = section.readShort();
            section.readShort();
            com.tencent.tinker.android.dex.TableOfContents.Section section3 = getSection(s);
            int i4 = section.readInt();
            int i5 = section.readInt();
            int i6 = section3.size;
            if ((i6 != 0 && i6 != i4) || ((i = section3.off) != -1 && i != i5)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected map value for 0x");
                sbO.append(java.lang.Integer.toHexString(s));
                throw new com.tencent.tinker.android.dex.DexException(sbO.toString());
            }
            section3.size = i4;
            section3.off = i5;
            if (section2 != null && section2.off > i5) {
                throw new com.tencent.tinker.android.dex.DexException("Map is unsorted at " + section2 + ", " + section3);
            }
            i3++;
            section2 = section3;
        }
        this.header.off = 0;
        java.util.Arrays.sort(this.sections);
        int i7 = 1;
        while (true) {
            com.tencent.tinker.android.dex.TableOfContents.Section[] sectionArr = this.sections;
            if (i7 >= sectionArr.length) {
                return;
            }
            if (sectionArr[i7].off == -1) {
                sectionArr[i7].off = sectionArr[i7 - 1].off;
            }
            i7++;
        }
    }

    public void computeSizesFromOffsets() {
        int i = this.fileSize;
        for (int length = this.sections.length - 1; length >= 0; length--) {
            com.tencent.tinker.android.dex.TableOfContents.Section section = this.sections[length];
            int i2 = section.off;
            if (i2 != -1) {
                if (i2 > i) {
                    throw new com.tencent.tinker.android.dex.DexException("Map is unsorted at " + section);
                }
                section.byteCount = i - i2;
                i = i2;
            }
        }
        int i3 = this.header.byteCount + this.stringIds.byteCount + this.typeIds.byteCount + this.protoIds.byteCount + this.fieldIds.byteCount + this.methodIds.byteCount + this.classDefs.byteCount;
        this.dataOff = i3;
        this.dataSize = this.fileSize - i3;
    }

    public com.tencent.tinker.android.dex.TableOfContents.Section getSectionByType(int i) {
        switch (i) {
            case 0:
                return this.header;
            case 1:
                return this.stringIds;
            case 2:
                return this.typeIds;
            case 3:
                return this.protoIds;
            case 4:
                return this.fieldIds;
            case 5:
                return this.methodIds;
            case 6:
                return this.classDefs;
            default:
                switch (i) {
                    case 4096:
                        return this.mapList;
                    case 4097:
                        return this.typeLists;
                    case 4098:
                        return this.annotationSetRefLists;
                    case 4099:
                        return this.annotationSets;
                    default:
                        switch (i) {
                            case 8192:
                                return this.classDatas;
                            case 8193:
                                return this.codes;
                            case 8194:
                                return this.stringDatas;
                            case com.umeng.analytics.pro.n.a.r /* 8195 */:
                                return this.debugInfos;
                            case com.umeng.analytics.pro.n.a.s /* 8196 */:
                                return this.annotations;
                            case com.umeng.analytics.pro.n.a.t /* 8197 */:
                                return this.encodedArrays;
                            case 8198:
                                return this.annotationsDirectories;
                            default:
                                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("unknown section type: ", i));
                        }
                }
        }
    }

    public void readFrom(com.tencent.tinker.android.dex.Dex dex) {
        readHeader(dex.openSection(this.header));
        readMap(dex.openSection(this.mapList.off));
        computeSizesFromOffsets();
    }

    public void writeHeader(com.tencent.tinker.android.dex.Dex.Section section) {
        section.write(com.tencent.tinker.android.dex.DexFormat.apiToMagic(13).getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
        section.writeInt(this.checksum);
        section.write(this.signature);
        section.writeInt(this.fileSize);
        section.writeInt(112);
        section.writeInt(com.tencent.tinker.android.dex.DexFormat.ENDIAN_TAG);
        section.writeInt(this.linkSize);
        section.writeInt(this.linkOff);
        section.writeInt(this.mapList.off);
        section.writeInt(this.stringIds.size);
        section.writeInt(this.stringIds.exists() ? this.stringIds.off : 0);
        section.writeInt(this.typeIds.size);
        section.writeInt(this.typeIds.exists() ? this.typeIds.off : 0);
        section.writeInt(this.protoIds.size);
        section.writeInt(this.protoIds.exists() ? this.protoIds.off : 0);
        section.writeInt(this.fieldIds.size);
        section.writeInt(this.fieldIds.exists() ? this.fieldIds.off : 0);
        section.writeInt(this.methodIds.size);
        section.writeInt(this.methodIds.exists() ? this.methodIds.off : 0);
        section.writeInt(this.classDefs.size);
        section.writeInt(this.classDefs.exists() ? this.classDefs.off : 0);
        section.writeInt(this.dataSize);
        section.writeInt(this.dataOff);
    }

    public void writeMap(com.tencent.tinker.android.dex.Dex.Section section) {
        int i = 0;
        for (com.tencent.tinker.android.dex.TableOfContents.Section section2 : this.sections) {
            if (section2.exists()) {
                i++;
            }
        }
        section.writeInt(i);
        for (com.tencent.tinker.android.dex.TableOfContents.Section section3 : this.sections) {
            if (section3.exists()) {
                section.writeShort(section3.type);
                section.writeShort((short) 0);
                section.writeInt(section3.size);
                section.writeInt(section3.off);
            }
        }
    }
}
