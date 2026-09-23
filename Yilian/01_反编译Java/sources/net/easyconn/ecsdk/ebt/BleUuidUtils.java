package net.easyconn.ecsdk.ebt;

/* loaded from: classes.dex */
public final class BleUuidUtils {
    public static final java.lang.String UUID_LONG_STYLE_POSTFIX = "-0000-1000-8000-00805F9B34FB";
    public static final java.lang.String UUID_LONG_STYLE_PREFIX = "0000";

    public static java.util.UUID fromShortValue(int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o(UUID_LONG_STYLE_PREFIX);
        sbO.append(java.lang.String.format("%04X", java.lang.Integer.valueOf(i & 65535)));
        sbO.append(UUID_LONG_STYLE_POSTFIX);
        return java.util.UUID.fromString(sbO.toString());
    }

    public static java.util.UUID fromString(java.lang.String str) {
        try {
            return java.util.UUID.fromString(str);
        } catch (java.lang.IllegalArgumentException unused) {
            return java.util.UUID.fromString(UUID_LONG_STYLE_PREFIX + str + UUID_LONG_STYLE_POSTFIX);
        }
    }

    public static boolean isShortUuid(java.util.UUID uuid) {
        return (uuid.getMostSignificantBits() & (-281470681743361L)) == 0 && uuid.getLeastSignificantBits() == 0;
    }

    public static boolean matches(java.util.UUID uuid, java.util.UUID uuid2) {
        return (isShortUuid(uuid) || isShortUuid(uuid2)) ? (uuid.getMostSignificantBits() & 281470681743360L) == (uuid2.getMostSignificantBits() & 281470681743360L) : uuid.equals(uuid2);
    }

    public static android.os.ParcelUuid parcelFromShortValue(int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o(UUID_LONG_STYLE_PREFIX);
        sbO.append(java.lang.String.format("%04X", java.lang.Integer.valueOf(i & 65535)));
        sbO.append(UUID_LONG_STYLE_POSTFIX);
        return android.os.ParcelUuid.fromString(sbO.toString());
    }

    public static int toShortValue(java.util.UUID uuid) {
        return (int) ((uuid.getMostSignificantBits() >> 32) & 65535);
    }
}
