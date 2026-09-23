package d.g.g;

/* loaded from: classes.dex */
public class i extends d.g.g.j {
    @Override // d.g.g.j
    public android.graphics.Typeface a(android.content.Context context, d.g.f.b.d dVar, android.content.res.Resources resources, int i) throws java.io.IOException {
        try {
            d.g.f.b.e[] eVarArr = dVar.a;
            int length = eVarArr.length;
            android.graphics.fonts.FontFamily.Builder builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    break;
                }
                d.g.f.b.e eVar = eVarArr[i2];
                try {
                    android.graphics.fonts.Font.Builder weight = new android.graphics.fonts.Font.Builder(resources, eVar.f1944f).setWeight(eVar.b);
                    if (!eVar.f1941c) {
                        i3 = 0;
                    }
                    android.graphics.fonts.Font fontBuild = weight.setSlant(i3).setTtcIndex(eVar.f1943e).setFontVariationSettings(eVar.f1942d).build();
                    if (builder == null) {
                        builder = new android.graphics.fonts.FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (java.io.IOException unused) {
                }
                i2++;
            }
            if (builder == null) {
                return null;
            }
            return new android.graphics.Typeface.CustomFallbackBuilder(builder.build()).setStyle(new android.graphics.fonts.FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
        } catch (java.lang.Exception unused2) {
            return null;
        }
    }

    @Override // d.g.g.j
    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, d.g.j.h[] hVarArr, int i) throws java.io.IOException {
        android.os.ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        android.content.ContentResolver contentResolver = context.getContentResolver();
        try {
            int length = hVarArr.length;
            android.graphics.fonts.FontFamily.Builder builder = null;
            int i2 = 0;
            while (true) {
                int i3 = 1;
                if (i2 >= length) {
                    if (builder == null) {
                        return null;
                    }
                    return new android.graphics.Typeface.CustomFallbackBuilder(builder.build()).setStyle(new android.graphics.fonts.FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
                }
                d.g.j.h hVar = hVarArr[i2];
                try {
                    parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(hVar.a, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT, cancellationSignal);
                } catch (java.io.IOException unused) {
                }
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                    }
                    i2++;
                } else {
                    try {
                        android.graphics.fonts.Font.Builder weight = new android.graphics.fonts.Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(hVar.f1977c);
                        if (!hVar.f1978d) {
                            i3 = 0;
                        }
                        android.graphics.fonts.Font fontBuild = weight.setSlant(i3).setTtcIndex(hVar.b).build();
                        if (builder == null) {
                            builder = new android.graphics.fonts.FontFamily.Builder(fontBuild);
                        } else {
                            builder.addFont(fontBuild);
                        }
                    } catch (java.lang.Throwable th) {
                        try {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        } catch (java.lang.Throwable unused2) {
                        }
                        throw th;
                    }
                }
                parcelFileDescriptorOpenFileDescriptor.close();
                i2++;
            }
        } catch (java.lang.Exception unused3) {
            return null;
        }
    }

    @Override // d.g.g.j
    public android.graphics.Typeface c(android.content.Context context, java.io.InputStream inputStream) {
        throw new java.lang.RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // d.g.g.j
    public android.graphics.Typeface d(android.content.Context context, android.content.res.Resources resources, int i, java.lang.String str, int i2) throws java.io.IOException {
        try {
            android.graphics.fonts.Font fontBuild = new android.graphics.fonts.Font.Builder(resources, i).build();
            return new android.graphics.Typeface.CustomFallbackBuilder(new android.graphics.fonts.FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    @Override // d.g.g.j
    public d.g.j.h f(d.g.j.h[] hVarArr, int i) {
        throw new java.lang.RuntimeException("Do not use this function in API 29 or later.");
    }
}
