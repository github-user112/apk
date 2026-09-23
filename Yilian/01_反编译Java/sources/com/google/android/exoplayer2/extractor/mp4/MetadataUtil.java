package com.google.android.exoplayer2.extractor.mp4;

/* loaded from: classes.dex */
public final class MetadataUtil {
    public static final int PICTURE_TYPE_FRONT_COVER = 3;
    public static final int SHORT_TYPE_ALBUM = 6384738;
    public static final int SHORT_TYPE_ARTIST = 4280916;
    public static final int SHORT_TYPE_COMMENT = 6516084;
    public static final int SHORT_TYPE_COMPOSER_1 = 6516589;
    public static final int SHORT_TYPE_COMPOSER_2 = 7828084;
    public static final int SHORT_TYPE_ENCODER = 7630703;
    public static final int SHORT_TYPE_GENRE = 6776174;
    public static final int SHORT_TYPE_LYRICS = 7108978;
    public static final int SHORT_TYPE_NAME_1 = 7233901;
    public static final int SHORT_TYPE_NAME_2 = 7631467;
    public static final int SHORT_TYPE_YEAR = 6578553;
    public static final java.lang.String[] STANDARD_GENRES = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Afro-Punk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop", "Abstract", "Art Rock", "Baroque", "Bhangra", "Big beat", "Breakbeat", "Chillout", "Downtempo", "Dub", "EBM", "Eclectic", "Electro", "Electroclash", "Emo", "Experimental", "Garage", "Global", "IDM", "Illbient", "Industro-Goth", "Jam Band", "Krautrock", "Leftfield", "Lounge", "Math Rock", "New Romantic", "Nu-Breakz", "Post-Punk", "Post-Rock", "Psytrance", "Shoegaze", "Space Rock", "Trop Rock", "World Music", "Neoclassical", "Audiobook", "Audio theatre", "Neue Deutsche Welle", "Podcast", "Indie-Rock", "G-Funk", "Dubstep", "Garage Rock", "Psybient"};
    public static final java.lang.String TAG = "MetadataUtil";
    public static final int TYPE_ALBUM_ARTIST = 1631670868;
    public static final int TYPE_COMPILATION = 1668311404;
    public static final int TYPE_COVER_ART = 1668249202;
    public static final int TYPE_DISK_NUMBER = 1684632427;
    public static final int TYPE_GAPLESS_ALBUM = 1885823344;
    public static final int TYPE_GENRE = 1735291493;
    public static final int TYPE_GROUPING = 6779504;
    public static final int TYPE_INTERNAL = 757935405;
    public static final int TYPE_RATING = 1920233063;
    public static final int TYPE_SORT_ALBUM = 1936679276;
    public static final int TYPE_SORT_ALBUM_ARTIST = 1936679265;
    public static final int TYPE_SORT_ARTIST = 1936679282;
    public static final int TYPE_SORT_COMPOSER = 1936679791;
    public static final int TYPE_SORT_TRACK_NAME = 1936682605;
    public static final int TYPE_TEMPO = 1953329263;
    public static final int TYPE_TOP_BYTE_COPYRIGHT = 169;
    public static final int TYPE_TOP_BYTE_REPLACEMENT = 253;
    public static final int TYPE_TRACK_NUMBER = 1953655662;
    public static final int TYPE_TV_SHOW = 1953919848;
    public static final int TYPE_TV_SORT_SHOW = 1936683886;

    public static com.google.android.exoplayer2.metadata.id3.CommentFrame parseCommentAttribute(int i, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            java.lang.String nullTerminatedString = parsableByteArray.readNullTerminatedString(i2 - 16);
            return new com.google.android.exoplayer2.metadata.id3.CommentFrame(com.google.android.exoplayer2.C.LANGUAGE_UNDETERMINED, nullTerminatedString, nullTerminatedString);
        }
        java.lang.String strValueOf = java.lang.String.valueOf(com.google.android.exoplayer2.extractor.mp4.Atom.getAtomTypeString(i));
        com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Failed to parse comment attribute: ".concat(strValueOf) : new java.lang.String("Failed to parse comment attribute: "));
        return null;
    }

    public static com.google.android.exoplayer2.metadata.id3.ApicFrame parseCoverArt(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        java.lang.String strF;
        int i = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            int fullAtomFlags = com.google.android.exoplayer2.extractor.mp4.Atom.parseFullAtomFlags(parsableByteArray.readInt());
            java.lang.String str = fullAtomFlags == 13 ? com.google.android.exoplayer2.util.MimeTypes.IMAGE_JPEG : fullAtomFlags == 14 ? "image/png" : null;
            if (str != null) {
                parsableByteArray.skipBytes(4);
                int i2 = i - 16;
                byte[] bArr = new byte[i2];
                parsableByteArray.readBytes(bArr, 0, i2);
                return new com.google.android.exoplayer2.metadata.id3.ApicFrame(str, null, 3, bArr);
            }
            strF = e.a.c.a.a.F(41, "Unrecognized cover art flags: ", fullAtomFlags);
        } else {
            strF = "Failed to parse cover art attribute";
        }
        com.google.android.exoplayer2.util.Log.w(TAG, strF);
        return null;
    }

    public static com.google.android.exoplayer2.metadata.Metadata.Entry parseIlstElement(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i = parsableByteArray.readInt() + parsableByteArray.getPosition();
        int i2 = parsableByteArray.readInt();
        int i3 = (i2 >> 24) & 255;
        try {
            if (i3 == 169 || i3 == 253) {
                int i4 = 16777215 & i2;
                if (i4 == 6516084) {
                    return parseCommentAttribute(i2, parsableByteArray);
                }
                if (i4 == 7233901 || i4 == 7631467) {
                    return parseTextAttribute(i2, "TIT2", parsableByteArray);
                }
                if (i4 == 6516589 || i4 == 7828084) {
                    return parseTextAttribute(i2, "TCOM", parsableByteArray);
                }
                if (i4 == 6578553) {
                    return parseTextAttribute(i2, "TDRC", parsableByteArray);
                }
                if (i4 == 4280916) {
                    return parseTextAttribute(i2, "TPE1", parsableByteArray);
                }
                if (i4 == 7630703) {
                    return parseTextAttribute(i2, "TSSE", parsableByteArray);
                }
                if (i4 == 6384738) {
                    return parseTextAttribute(i2, "TALB", parsableByteArray);
                }
                if (i4 == 7108978) {
                    return parseTextAttribute(i2, "USLT", parsableByteArray);
                }
                if (i4 == 6776174) {
                    return parseTextAttribute(i2, "TCON", parsableByteArray);
                }
                if (i4 == 6779504) {
                    return parseTextAttribute(i2, "TIT1", parsableByteArray);
                }
            } else {
                if (i2 == 1735291493) {
                    return parseStandardGenreAttribute(parsableByteArray);
                }
                if (i2 == 1684632427) {
                    return parseIndexAndCountAttribute(i2, "TPOS", parsableByteArray);
                }
                if (i2 == 1953655662) {
                    return parseIndexAndCountAttribute(i2, "TRCK", parsableByteArray);
                }
                if (i2 == 1953329263) {
                    return parseUint8Attribute(i2, "TBPM", parsableByteArray, true, false);
                }
                if (i2 == 1668311404) {
                    return parseUint8Attribute(i2, "TCMP", parsableByteArray, true, true);
                }
                if (i2 == 1668249202) {
                    return parseCoverArt(parsableByteArray);
                }
                if (i2 == 1631670868) {
                    return parseTextAttribute(i2, "TPE2", parsableByteArray);
                }
                if (i2 == 1936682605) {
                    return parseTextAttribute(i2, "TSOT", parsableByteArray);
                }
                if (i2 == 1936679276) {
                    return parseTextAttribute(i2, "TSO2", parsableByteArray);
                }
                if (i2 == 1936679282) {
                    return parseTextAttribute(i2, "TSOA", parsableByteArray);
                }
                if (i2 == 1936679265) {
                    return parseTextAttribute(i2, "TSOP", parsableByteArray);
                }
                if (i2 == 1936679791) {
                    return parseTextAttribute(i2, "TSOC", parsableByteArray);
                }
                if (i2 == 1920233063) {
                    return parseUint8Attribute(i2, "ITUNESADVISORY", parsableByteArray, false, false);
                }
                if (i2 == 1885823344) {
                    return parseUint8Attribute(i2, "ITUNESGAPLESS", parsableByteArray, false, true);
                }
                if (i2 == 1936683886) {
                    return parseTextAttribute(i2, "TVSHOWSORT", parsableByteArray);
                }
                if (i2 == 1953919848) {
                    return parseTextAttribute(i2, "TVSHOW", parsableByteArray);
                }
                if (i2 == 757935405) {
                    return parseInternalAttribute(parsableByteArray, i);
                }
            }
            java.lang.String strValueOf = java.lang.String.valueOf(com.google.android.exoplayer2.extractor.mp4.Atom.getAtomTypeString(i2));
            com.google.android.exoplayer2.util.Log.d(TAG, strValueOf.length() != 0 ? "Skipped unknown metadata entry: ".concat(strValueOf) : new java.lang.String("Skipped unknown metadata entry: "));
            return null;
        } finally {
            parsableByteArray.setPosition(i);
        }
    }

    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame parseIndexAndCountAttribute(int i, java.lang.String str, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385 && i2 >= 22) {
            parsableByteArray.skipBytes(10);
            int unsignedShort = parsableByteArray.readUnsignedShort();
            if (unsignedShort > 0) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(11);
                sb.append(unsignedShort);
                java.lang.String string = sb.toString();
                int unsignedShort2 = parsableByteArray.readUnsignedShort();
                if (unsignedShort2 > 0) {
                    java.lang.String strValueOf = java.lang.String.valueOf(string);
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder(strValueOf.length() + 12);
                    sb2.append(strValueOf);
                    sb2.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
                    sb2.append(unsignedShort2);
                    string = sb2.toString();
                }
                return new com.google.android.exoplayer2.metadata.id3.TextInformationFrame(str, null, string);
            }
        }
        java.lang.String strValueOf2 = java.lang.String.valueOf(com.google.android.exoplayer2.extractor.mp4.Atom.getAtomTypeString(i));
        com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Failed to parse index/count attribute: ".concat(strValueOf2) : new java.lang.String("Failed to parse index/count attribute: "));
        return null;
    }

    public static com.google.android.exoplayer2.metadata.id3.Id3Frame parseInternalAttribute(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        java.lang.String nullTerminatedString = null;
        java.lang.String nullTerminatedString2 = null;
        int i2 = -1;
        int i3 = -1;
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int i4 = parsableByteArray.readInt();
            int i5 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            if (i5 == 1835360622) {
                nullTerminatedString = parsableByteArray.readNullTerminatedString(i4 - 12);
            } else if (i5 == 1851878757) {
                nullTerminatedString2 = parsableByteArray.readNullTerminatedString(i4 - 12);
            } else {
                if (i5 == 1684108385) {
                    i2 = position;
                    i3 = i4;
                }
                parsableByteArray.skipBytes(i4 - 12);
            }
        }
        if (nullTerminatedString == null || nullTerminatedString2 == null || i2 == -1) {
            return null;
        }
        parsableByteArray.setPosition(i2);
        parsableByteArray.skipBytes(16);
        return new com.google.android.exoplayer2.metadata.id3.InternalFrame(nullTerminatedString, nullTerminatedString2, parsableByteArray.readNullTerminatedString(i3 - 16));
    }

    public static com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry parseMdtaMetadataEntryFromIlst(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, java.lang.String str) {
        while (true) {
            int position = parsableByteArray.getPosition();
            if (position >= i) {
                return null;
            }
            int i2 = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1684108385) {
                int i3 = parsableByteArray.readInt();
                int i4 = parsableByteArray.readInt();
                int i5 = i2 - 16;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                return new com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry(str, bArr, i4, i3);
            }
            parsableByteArray.setPosition(position + i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame parseStandardGenreAttribute(com.google.android.exoplayer2.util.ParsableByteArray r3) {
        /*
            int r3 = parseUint8AttributeValue(r3)
            r0 = 0
            if (r3 <= 0) goto L11
            java.lang.String[] r1 = com.google.android.exoplayer2.extractor.mp4.MetadataUtil.STANDARD_GENRES
            int r2 = r1.length
            if (r3 > r2) goto L11
            int r3 = r3 + (-1)
            r3 = r1[r3]
            goto L12
        L11:
            r3 = r0
        L12:
            if (r3 == 0) goto L1c
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L1c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            com.google.android.exoplayer2.util.Log.w(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.MetadataUtil.parseStandardGenreAttribute(com.google.android.exoplayer2.util.ParsableByteArray):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame parseTextAttribute(int i, java.lang.String str, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i2 = parsableByteArray.readInt();
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return new com.google.android.exoplayer2.metadata.id3.TextInformationFrame(str, null, parsableByteArray.readNullTerminatedString(i2 - 16));
        }
        java.lang.String strValueOf = java.lang.String.valueOf(com.google.android.exoplayer2.extractor.mp4.Atom.getAtomTypeString(i));
        com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Failed to parse text attribute: ".concat(strValueOf) : new java.lang.String("Failed to parse text attribute: "));
        return null;
    }

    public static com.google.android.exoplayer2.metadata.id3.Id3Frame parseUint8Attribute(int i, java.lang.String str, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int uint8AttributeValue = parseUint8AttributeValue(parsableByteArray);
        if (z2) {
            uint8AttributeValue = java.lang.Math.min(1, uint8AttributeValue);
        }
        if (uint8AttributeValue >= 0) {
            return z ? new com.google.android.exoplayer2.metadata.id3.TextInformationFrame(str, null, java.lang.Integer.toString(uint8AttributeValue)) : new com.google.android.exoplayer2.metadata.id3.CommentFrame(com.google.android.exoplayer2.C.LANGUAGE_UNDETERMINED, str, java.lang.Integer.toString(uint8AttributeValue));
        }
        java.lang.String strValueOf = java.lang.String.valueOf(com.google.android.exoplayer2.extractor.mp4.Atom.getAtomTypeString(i));
        com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Failed to parse uint8 attribute: ".concat(strValueOf) : new java.lang.String("Failed to parse uint8 attribute: "));
        return null;
    }

    public static int parseUint8AttributeValue(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() == 1684108385) {
            parsableByteArray.skipBytes(8);
            return parsableByteArray.readUnsignedByte();
        }
        com.google.android.exoplayer2.util.Log.w(TAG, "Failed to parse uint8 attribute value");
        return -1;
    }

    public static void setFormatGaplessInfo(int i, com.google.android.exoplayer2.extractor.GaplessInfoHolder gaplessInfoHolder, com.google.android.exoplayer2.Format.Builder builder) {
        if (i == 1 && gaplessInfoHolder.hasGaplessInfo()) {
            builder.setEncoderDelay(gaplessInfoHolder.encoderDelay).setEncoderPadding(gaplessInfoHolder.encoderPadding);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void setFormatMetadata(int r5, com.google.android.exoplayer2.metadata.Metadata r6, com.google.android.exoplayer2.metadata.Metadata r7, com.google.android.exoplayer2.Format.Builder r8, com.google.android.exoplayer2.metadata.Metadata... r9) {
        /*
            com.google.android.exoplayer2.metadata.Metadata r0 = new com.google.android.exoplayer2.metadata.Metadata
            r1 = 0
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r2 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r1]
            r0.<init>(r2)
            r2 = 1
            if (r5 != r2) goto Le
            if (r6 == 0) goto L3c
            goto L3d
        Le:
            r6 = 2
            if (r5 != r6) goto L3c
            if (r7 == 0) goto L3c
            r5 = 0
        L14:
            int r6 = r7.length()
            if (r5 >= r6) goto L3c
            com.google.android.exoplayer2.metadata.Metadata$Entry r6 = r7.get(r5)
            boolean r3 = r6 instanceof com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry r6 = (com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry) r6
            java.lang.String r3 = r6.key
            java.lang.String r4 = "com.android.capture.fps"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L39
            com.google.android.exoplayer2.metadata.Metadata r5 = new com.google.android.exoplayer2.metadata.Metadata
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r7 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r2]
            r7[r1] = r6
            r5.<init>(r7)
            r6 = r5
            goto L3d
        L39:
            int r5 = r5 + 1
            goto L14
        L3c:
            r6 = r0
        L3d:
            int r5 = r9.length
        L3e:
            if (r1 >= r5) goto L49
            r7 = r9[r1]
            com.google.android.exoplayer2.metadata.Metadata r6 = r6.copyWithAppendedEntriesFrom(r7)
            int r1 = r1 + 1
            goto L3e
        L49:
            int r5 = r6.length()
            if (r5 <= 0) goto L52
            r8.setMetadata(r6)
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.MetadataUtil.setFormatMetadata(int, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.metadata.Metadata, com.google.android.exoplayer2.Format$Builder, com.google.android.exoplayer2.metadata.Metadata[]):void");
    }
}
