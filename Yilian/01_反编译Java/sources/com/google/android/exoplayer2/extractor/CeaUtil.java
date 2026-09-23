package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class CeaUtil {
    public static final int COUNTRY_CODE = 181;
    public static final int PAYLOAD_TYPE_CC = 4;
    public static final int PROVIDER_CODE_ATSC = 49;
    public static final int PROVIDER_CODE_DIRECTV = 47;
    public static final java.lang.String TAG = "CeaUtil";
    public static final int USER_DATA_IDENTIFIER_GA94 = 1195456820;
    public static final int USER_DATA_TYPE_CODE_MPEG_CC = 3;

    public static void consume(long j, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.extractor.TrackOutput[] trackOutputArr) {
        while (true) {
            if (parsableByteArray.bytesLeft() <= 1) {
                return;
            }
            int non255TerminatedValue = readNon255TerminatedValue(parsableByteArray);
            int non255TerminatedValue2 = readNon255TerminatedValue(parsableByteArray);
            int position = parsableByteArray.getPosition() + non255TerminatedValue2;
            if (non255TerminatedValue2 == -1 || non255TerminatedValue2 > parsableByteArray.bytesLeft()) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Skipping remainder of malformed SEI NAL unit.");
                position = parsableByteArray.limit();
            } else if (non255TerminatedValue == 4 && non255TerminatedValue2 >= 8) {
                int unsignedByte = parsableByteArray.readUnsignedByte();
                int unsignedShort = parsableByteArray.readUnsignedShort();
                int i = unsignedShort == 49 ? parsableByteArray.readInt() : 0;
                int unsignedByte2 = parsableByteArray.readUnsignedByte();
                if (unsignedShort == 47) {
                    parsableByteArray.skipBytes(1);
                }
                boolean z = unsignedByte == 181 && (unsignedShort == 49 || unsignedShort == 47) && unsignedByte2 == 3;
                if (unsignedShort == 49) {
                    z &= i == 1195456820;
                }
                if (z) {
                    consumeCcData(j, parsableByteArray, trackOutputArr);
                }
            }
            parsableByteArray.setPosition(position);
        }
    }

    public static void consumeCcData(long j, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, com.google.android.exoplayer2.extractor.TrackOutput[] trackOutputArr) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(1);
            int i = (unsignedByte & 31) * 3;
            int position = parsableByteArray.getPosition();
            for (com.google.android.exoplayer2.extractor.TrackOutput trackOutput : trackOutputArr) {
                parsableByteArray.setPosition(position);
                trackOutput.sampleData(parsableByteArray, i);
                if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
                    trackOutput.sampleMetadata(j, 1, i, 0, null);
                }
            }
        }
    }

    public static int readNon255TerminatedValue(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i = 0;
        while (parsableByteArray.bytesLeft() != 0) {
            int unsignedByte = parsableByteArray.readUnsignedByte();
            i += unsignedByte;
            if (unsignedByte != 255) {
                return i;
            }
        }
        return -1;
    }
}
