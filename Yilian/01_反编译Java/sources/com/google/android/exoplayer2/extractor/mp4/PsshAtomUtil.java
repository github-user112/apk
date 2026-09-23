package com.google.android.exoplayer2.extractor.mp4;

/* loaded from: classes.dex */
public final class PsshAtomUtil {
    public static final java.lang.String TAG = "PsshAtomUtil";

    public static class PsshAtom {
        public final byte[] schemeData;
        public final java.util.UUID uuid;
        public final int version;

        public PsshAtom(java.util.UUID uuid, int i, byte[] bArr) {
            this.uuid = uuid;
            this.version = i;
            this.schemeData = bArr;
        }
    }

    public static byte[] buildPsshAtom(java.util.UUID uuid, byte[] bArr) {
        return buildPsshAtom(uuid, null, bArr);
    }

    public static byte[] buildPsshAtom(java.util.UUID uuid, java.util.UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(com.google.android.exoplayer2.extractor.mp4.Atom.TYPE_pssh);
        byteBufferAllocate.putInt(uuidArr != null ? 16777216 : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (java.util.UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    public static boolean isPsshAtom(byte[] bArr) {
        return parsePsshAtom(bArr) != null;
    }

    public static com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.PsshAtom parsePsshAtom(byte[] bArr) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(bArr);
        if (parsableByteArray.limit() < 32) {
            return null;
        }
        parsableByteArray.setPosition(0);
        if (parsableByteArray.readInt() != parsableByteArray.bytesLeft() + 4 || parsableByteArray.readInt() != 1886614376) {
            return null;
        }
        int fullAtomVersion = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomVersion(parsableByteArray.readInt());
        if (fullAtomVersion > 1) {
            e.a.c.a.a.t(37, "Unsupported pssh version: ", fullAtomVersion, TAG);
            return null;
        }
        java.util.UUID uuid = new java.util.UUID(parsableByteArray.readLong(), parsableByteArray.readLong());
        if (fullAtomVersion == 1) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedIntToInt() * 16);
        }
        int unsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (unsignedIntToInt != parsableByteArray.bytesLeft()) {
            return null;
        }
        byte[] bArr2 = new byte[unsignedIntToInt];
        parsableByteArray.readBytes(bArr2, 0, unsignedIntToInt);
        return new com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.PsshAtom(uuid, fullAtomVersion, bArr2);
    }

    public static byte[] parseSchemeSpecificData(byte[] bArr, java.util.UUID uuid) {
        com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.PsshAtom psshAtom = parsePsshAtom(bArr);
        if (psshAtom == null) {
            return null;
        }
        if (uuid.equals(psshAtom.uuid)) {
            return psshAtom.schemeData;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(uuid);
        java.lang.String strValueOf2 = java.lang.String.valueOf(psshAtom.uuid);
        java.lang.StringBuilder sbL = e.a.c.a.a.l(strValueOf2.length() + strValueOf.length() + 33, "UUID mismatch. Expected: ", strValueOf, ", got: ", strValueOf2);
        sbL.append(".");
        com.google.android.exoplayer2.util.Log.w(TAG, sbL.toString());
        return null;
    }

    public static java.util.UUID parseUuid(byte[] bArr) {
        com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.PsshAtom psshAtom = parsePsshAtom(bArr);
        if (psshAtom == null) {
            return null;
        }
        return psshAtom.uuid;
    }

    public static int parseVersion(byte[] bArr) {
        com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.PsshAtom psshAtom = parsePsshAtom(bArr);
        if (psshAtom == null) {
            return -1;
        }
        return psshAtom.version;
    }
}
