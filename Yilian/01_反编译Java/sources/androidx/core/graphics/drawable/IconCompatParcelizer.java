package androidx.core.graphics.drawable;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static androidx.core.graphics.drawable.IconCompat read(d.u.a aVar) {
        android.os.Parcelable parcelable;
        androidx.core.graphics.drawable.IconCompat iconCompat = new androidx.core.graphics.drawable.IconCompat();
        iconCompat.a = aVar.i(iconCompat.a, 1);
        byte[] bArr = iconCompat.f101c;
        if (aVar.h(2)) {
            d.u.b bVar = (d.u.b) aVar;
            int i = bVar.f2336e.readInt();
            if (i < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i];
                bVar.f2336e.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f101c = bArr;
        iconCompat.f102d = aVar.j(iconCompat.f102d, 3);
        iconCompat.f103e = aVar.i(iconCompat.f103e, 4);
        iconCompat.f104f = aVar.i(iconCompat.f104f, 5);
        iconCompat.f105g = (android.content.res.ColorStateList) aVar.j(iconCompat.f105g, 6);
        java.lang.String string = iconCompat.i;
        if (aVar.h(7)) {
            string = ((d.u.b) aVar).f2336e.readString();
        }
        iconCompat.i = string;
        java.lang.String string2 = iconCompat.j;
        if (aVar.h(8)) {
            string2 = ((d.u.b) aVar).f2336e.readString();
        }
        iconCompat.j = string2;
        iconCompat.h = android.graphics.PorterDuff.Mode.valueOf(iconCompat.i);
        switch (iconCompat.a) {
            case -1:
                parcelable = iconCompat.f102d;
                if (parcelable == null) {
                    throw new java.lang.IllegalArgumentException("Invalid icon");
                }
                iconCompat.b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                parcelable = iconCompat.f102d;
                if (parcelable != null) {
                    iconCompat.b = parcelable;
                } else {
                    byte[] bArr3 = iconCompat.f101c;
                    iconCompat.b = bArr3;
                    iconCompat.a = 3;
                    iconCompat.f103e = 0;
                    iconCompat.f104f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                java.lang.String str = new java.lang.String(iconCompat.f101c, java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF16_NAME));
                iconCompat.b = str;
                if (iconCompat.a == 2 && iconCompat.j == null) {
                    iconCompat.j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.f101c;
                return iconCompat;
        }
    }

    public static void write(androidx.core.graphics.drawable.IconCompat iconCompat, d.u.a aVar) {
        if (aVar == null) {
            throw null;
        }
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.a) {
            case -1:
            case 1:
            case 5:
                iconCompat.f102d = (android.os.Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.f101c = ((java.lang.String) iconCompat.b).getBytes(java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF16_NAME));
                break;
            case 3:
                iconCompat.f101c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.f101c = iconCompat.b.toString().getBytes(java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF16_NAME));
                break;
        }
        int i = iconCompat.a;
        if (-1 != i) {
            aVar.m(i, 1);
        }
        byte[] bArr = iconCompat.f101c;
        if (bArr != null) {
            aVar.l(2);
            d.u.b bVar = (d.u.b) aVar;
            bVar.f2336e.writeInt(bArr.length);
            bVar.f2336e.writeByteArray(bArr);
        }
        android.os.Parcelable parcelable = iconCompat.f102d;
        if (parcelable != null) {
            aVar.l(3);
            ((d.u.b) aVar).f2336e.writeParcelable(parcelable, 0);
        }
        int i2 = iconCompat.f103e;
        if (i2 != 0) {
            aVar.m(i2, 4);
        }
        int i3 = iconCompat.f104f;
        if (i3 != 0) {
            aVar.m(i3, 5);
        }
        android.content.res.ColorStateList colorStateList = iconCompat.f105g;
        if (colorStateList != null) {
            aVar.l(6);
            ((d.u.b) aVar).f2336e.writeParcelable(colorStateList, 0);
        }
        java.lang.String str = iconCompat.i;
        if (str != null) {
            aVar.l(7);
            ((d.u.b) aVar).f2336e.writeString(str);
        }
        java.lang.String str2 = iconCompat.j;
        if (str2 != null) {
            aVar.l(8);
            ((d.u.b) aVar).f2336e.writeString(str2);
        }
    }
}
