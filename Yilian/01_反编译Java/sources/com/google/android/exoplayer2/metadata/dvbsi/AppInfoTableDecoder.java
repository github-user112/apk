package com.google.android.exoplayer2.metadata.dvbsi;

/* loaded from: classes.dex */
public final class AppInfoTableDecoder extends com.google.android.exoplayer2.metadata.SimpleMetadataDecoder {
    public static final int APPLICATION_INFORMATION_TABLE_ID = 116;
    public static final int DESCRIPTOR_SIMPLE_APPLICATION_LOCATION = 21;
    public static final int DESCRIPTOR_TRANSPORT_PROTOCOL = 2;
    public static final int TRANSPORT_PROTOCOL_HTTP = 3;

    public static com.google.android.exoplayer2.metadata.Metadata parseAit(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) {
        parsableBitArray.skipBits(12);
        int bytePosition = (parsableBitArray.getBytePosition() + parsableBitArray.readBits(12)) - 4;
        parsableBitArray.skipBits(44);
        parsableBitArray.skipBytes(parsableBitArray.readBits(12));
        parsableBitArray.skipBits(16);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (true) {
            java.lang.String bytesAsString = null;
            if (parsableBitArray.getBytePosition() >= bytePosition) {
                break;
            }
            parsableBitArray.skipBits(48);
            int bits = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(4);
            int bytePosition2 = parsableBitArray.getBytePosition() + parsableBitArray.readBits(12);
            java.lang.String bytesAsString2 = null;
            while (parsableBitArray.getBytePosition() < bytePosition2) {
                int bits2 = parsableBitArray.readBits(8);
                int bits3 = parsableBitArray.readBits(8);
                int bytePosition3 = parsableBitArray.getBytePosition() + bits3;
                if (bits2 == 2) {
                    int bits4 = parsableBitArray.readBits(16);
                    parsableBitArray.skipBits(8);
                    if (bits4 == 3) {
                        while (parsableBitArray.getBytePosition() < bytePosition3) {
                            bytesAsString = parsableBitArray.readBytesAsString(parsableBitArray.readBits(8), e.c.b.a.c.a);
                            int bits5 = parsableBitArray.readBits(8);
                            for (int i = 0; i < bits5; i++) {
                                parsableBitArray.skipBytes(parsableBitArray.readBits(8));
                            }
                        }
                    }
                } else if (bits2 == 21) {
                    bytesAsString2 = parsableBitArray.readBytesAsString(bits3, e.c.b.a.c.a);
                }
                parsableBitArray.setPosition(bytePosition3 * 8);
            }
            parsableBitArray.setPosition(bytePosition2 * 8);
            if (bytesAsString != null && bytesAsString2 != null) {
                arrayList.add(new com.google.android.exoplayer2.metadata.dvbsi.AppInfoTable(bits, bytesAsString2.length() != 0 ? bytesAsString.concat(bytesAsString2) : new java.lang.String(bytesAsString)));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.google.android.exoplayer2.metadata.Metadata(arrayList);
    }

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    public com.google.android.exoplayer2.metadata.Metadata decode(com.google.android.exoplayer2.metadata.MetadataInputBuffer metadataInputBuffer, java.nio.ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return parseAit(new com.google.android.exoplayer2.util.ParsableBitArray(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
