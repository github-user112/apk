package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class MediaMetadata implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_ALBUM_ARTIST = 3;
    public static final int FIELD_ALBUM_TITLE = 2;
    public static final int FIELD_ARTIST = 1;
    public static final int FIELD_ARTWORK_DATA = 10;
    public static final int FIELD_ARTWORK_DATA_TYPE = 29;
    public static final int FIELD_ARTWORK_URI = 11;
    public static final int FIELD_COMPILATION = 28;
    public static final int FIELD_COMPOSER = 23;
    public static final int FIELD_CONDUCTOR = 24;
    public static final int FIELD_DESCRIPTION = 6;
    public static final int FIELD_DISC_NUMBER = 25;
    public static final int FIELD_DISPLAY_TITLE = 4;
    public static final int FIELD_EXTRAS = 1000;
    public static final int FIELD_FOLDER_TYPE = 14;
    public static final int FIELD_GENRE = 27;
    public static final int FIELD_IS_PLAYABLE = 15;
    public static final int FIELD_MEDIA_URI = 7;
    public static final int FIELD_OVERALL_RATING = 9;
    public static final int FIELD_RECORDING_DAY = 18;
    public static final int FIELD_RECORDING_MONTH = 17;
    public static final int FIELD_RECORDING_YEAR = 16;
    public static final int FIELD_RELEASE_DAY = 21;
    public static final int FIELD_RELEASE_MONTH = 20;
    public static final int FIELD_RELEASE_YEAR = 19;
    public static final int FIELD_SUBTITLE = 5;
    public static final int FIELD_TITLE = 0;
    public static final int FIELD_TOTAL_DISC_COUNT = 26;
    public static final int FIELD_TOTAL_TRACK_COUNT = 13;
    public static final int FIELD_TRACK_NUMBER = 12;
    public static final int FIELD_USER_RATING = 8;
    public static final int FIELD_WRITER = 22;
    public static final int FOLDER_TYPE_ALBUMS = 2;
    public static final int FOLDER_TYPE_ARTISTS = 3;
    public static final int FOLDER_TYPE_GENRES = 4;
    public static final int FOLDER_TYPE_MIXED = 0;
    public static final int FOLDER_TYPE_NONE = -1;
    public static final int FOLDER_TYPE_PLAYLISTS = 5;
    public static final int FOLDER_TYPE_TITLES = 1;
    public static final int FOLDER_TYPE_YEARS = 6;
    public static final int PICTURE_TYPE_ARTIST_PERFORMER = 8;
    public static final int PICTURE_TYPE_A_BRIGHT_COLORED_FISH = 17;
    public static final int PICTURE_TYPE_BACK_COVER = 4;
    public static final int PICTURE_TYPE_BAND_ARTIST_LOGO = 19;
    public static final int PICTURE_TYPE_BAND_ORCHESTRA = 10;
    public static final int PICTURE_TYPE_COMPOSER = 11;
    public static final int PICTURE_TYPE_CONDUCTOR = 9;
    public static final int PICTURE_TYPE_DURING_PERFORMANCE = 15;
    public static final int PICTURE_TYPE_DURING_RECORDING = 14;
    public static final int PICTURE_TYPE_FILE_ICON = 1;
    public static final int PICTURE_TYPE_FILE_ICON_OTHER = 2;
    public static final int PICTURE_TYPE_FRONT_COVER = 3;
    public static final int PICTURE_TYPE_ILLUSTRATION = 18;
    public static final int PICTURE_TYPE_LEAD_ARTIST_PERFORMER = 7;
    public static final int PICTURE_TYPE_LEAFLET_PAGE = 5;
    public static final int PICTURE_TYPE_LYRICIST = 12;
    public static final int PICTURE_TYPE_MEDIA = 6;
    public static final int PICTURE_TYPE_MOVIE_VIDEO_SCREEN_CAPTURE = 16;
    public static final int PICTURE_TYPE_OTHER = 0;
    public static final int PICTURE_TYPE_PUBLISHER_STUDIO_LOGO = 20;
    public static final int PICTURE_TYPE_RECORDING_LOCATION = 13;
    public final java.lang.CharSequence albumArtist;
    public final java.lang.CharSequence albumTitle;
    public final java.lang.CharSequence artist;
    public final byte[] artworkData;
    public final java.lang.Integer artworkDataType;
    public final android.net.Uri artworkUri;
    public final java.lang.CharSequence compilation;
    public final java.lang.CharSequence composer;
    public final java.lang.CharSequence conductor;
    public final java.lang.CharSequence description;
    public final java.lang.Integer discNumber;
    public final java.lang.CharSequence displayTitle;
    public final android.os.Bundle extras;
    public final java.lang.Integer folderType;
    public final java.lang.CharSequence genre;
    public final java.lang.Boolean isPlayable;
    public final android.net.Uri mediaUri;
    public final com.google.android.exoplayer2.Rating overallRating;
    public final java.lang.Integer recordingDay;
    public final java.lang.Integer recordingMonth;
    public final java.lang.Integer recordingYear;
    public final java.lang.Integer releaseDay;
    public final java.lang.Integer releaseMonth;
    public final java.lang.Integer releaseYear;
    public final java.lang.CharSequence subtitle;
    public final java.lang.CharSequence title;
    public final java.lang.Integer totalDiscCount;
    public final java.lang.Integer totalTrackCount;
    public final java.lang.Integer trackNumber;
    public final com.google.android.exoplayer2.Rating userRating;
    public final java.lang.CharSequence writer;

    @java.lang.Deprecated
    public final java.lang.Integer year;
    public static final com.google.android.exoplayer2.MediaMetadata EMPTY = new com.google.android.exoplayer2.MediaMetadata.Builder().build();
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.MediaMetadata> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.f
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.MediaMetadata.fromBundle(bundle);
        }
    };

    public static final class Builder {
        public java.lang.CharSequence albumArtist;
        public java.lang.CharSequence albumTitle;
        public java.lang.CharSequence artist;
        public byte[] artworkData;
        public java.lang.Integer artworkDataType;
        public android.net.Uri artworkUri;
        public java.lang.CharSequence compilation;
        public java.lang.CharSequence composer;
        public java.lang.CharSequence conductor;
        public java.lang.CharSequence description;
        public java.lang.Integer discNumber;
        public java.lang.CharSequence displayTitle;
        public android.os.Bundle extras;
        public java.lang.Integer folderType;
        public java.lang.CharSequence genre;
        public java.lang.Boolean isPlayable;
        public android.net.Uri mediaUri;
        public com.google.android.exoplayer2.Rating overallRating;
        public java.lang.Integer recordingDay;
        public java.lang.Integer recordingMonth;
        public java.lang.Integer recordingYear;
        public java.lang.Integer releaseDay;
        public java.lang.Integer releaseMonth;
        public java.lang.Integer releaseYear;
        public java.lang.CharSequence subtitle;
        public java.lang.CharSequence title;
        public java.lang.Integer totalDiscCount;
        public java.lang.Integer totalTrackCount;
        public java.lang.Integer trackNumber;
        public com.google.android.exoplayer2.Rating userRating;
        public java.lang.CharSequence writer;

        public Builder() {
        }

        public Builder(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
            this.title = mediaMetadata.title;
            this.artist = mediaMetadata.artist;
            this.albumTitle = mediaMetadata.albumTitle;
            this.albumArtist = mediaMetadata.albumArtist;
            this.displayTitle = mediaMetadata.displayTitle;
            this.subtitle = mediaMetadata.subtitle;
            this.description = mediaMetadata.description;
            this.mediaUri = mediaMetadata.mediaUri;
            this.userRating = mediaMetadata.userRating;
            this.overallRating = mediaMetadata.overallRating;
            this.artworkData = mediaMetadata.artworkData;
            this.artworkDataType = mediaMetadata.artworkDataType;
            this.artworkUri = mediaMetadata.artworkUri;
            this.trackNumber = mediaMetadata.trackNumber;
            this.totalTrackCount = mediaMetadata.totalTrackCount;
            this.folderType = mediaMetadata.folderType;
            this.isPlayable = mediaMetadata.isPlayable;
            this.recordingYear = mediaMetadata.recordingYear;
            this.recordingMonth = mediaMetadata.recordingMonth;
            this.recordingDay = mediaMetadata.recordingDay;
            this.releaseYear = mediaMetadata.releaseYear;
            this.releaseMonth = mediaMetadata.releaseMonth;
            this.releaseDay = mediaMetadata.releaseDay;
            this.writer = mediaMetadata.writer;
            this.composer = mediaMetadata.composer;
            this.conductor = mediaMetadata.conductor;
            this.discNumber = mediaMetadata.discNumber;
            this.totalDiscCount = mediaMetadata.totalDiscCount;
            this.genre = mediaMetadata.genre;
            this.compilation = mediaMetadata.compilation;
            this.extras = mediaMetadata.extras;
        }

        public com.google.android.exoplayer2.MediaMetadata build() {
            return new com.google.android.exoplayer2.MediaMetadata(this);
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder maybeSetArtworkData(byte[] bArr, int i) {
            if (this.artworkData == null || com.google.android.exoplayer2.util.Util.areEqual(java.lang.Integer.valueOf(i), 3) || !com.google.android.exoplayer2.util.Util.areEqual(this.artworkDataType, 3)) {
                this.artworkData = (byte[]) bArr.clone();
                this.artworkDataType = java.lang.Integer.valueOf(i);
            }
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder populate(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
            if (mediaMetadata == null) {
                return this;
            }
            java.lang.CharSequence charSequence = mediaMetadata.title;
            if (charSequence != null) {
                setTitle(charSequence);
            }
            java.lang.CharSequence charSequence2 = mediaMetadata.artist;
            if (charSequence2 != null) {
                setArtist(charSequence2);
            }
            java.lang.CharSequence charSequence3 = mediaMetadata.albumTitle;
            if (charSequence3 != null) {
                setAlbumTitle(charSequence3);
            }
            java.lang.CharSequence charSequence4 = mediaMetadata.albumArtist;
            if (charSequence4 != null) {
                setAlbumArtist(charSequence4);
            }
            java.lang.CharSequence charSequence5 = mediaMetadata.displayTitle;
            if (charSequence5 != null) {
                setDisplayTitle(charSequence5);
            }
            java.lang.CharSequence charSequence6 = mediaMetadata.subtitle;
            if (charSequence6 != null) {
                setSubtitle(charSequence6);
            }
            java.lang.CharSequence charSequence7 = mediaMetadata.description;
            if (charSequence7 != null) {
                setDescription(charSequence7);
            }
            android.net.Uri uri = mediaMetadata.mediaUri;
            if (uri != null) {
                setMediaUri(uri);
            }
            com.google.android.exoplayer2.Rating rating = mediaMetadata.userRating;
            if (rating != null) {
                setUserRating(rating);
            }
            com.google.android.exoplayer2.Rating rating2 = mediaMetadata.overallRating;
            if (rating2 != null) {
                setOverallRating(rating2);
            }
            byte[] bArr = mediaMetadata.artworkData;
            if (bArr != null) {
                setArtworkData(bArr, mediaMetadata.artworkDataType);
            }
            android.net.Uri uri2 = mediaMetadata.artworkUri;
            if (uri2 != null) {
                setArtworkUri(uri2);
            }
            java.lang.Integer num = mediaMetadata.trackNumber;
            if (num != null) {
                setTrackNumber(num);
            }
            java.lang.Integer num2 = mediaMetadata.totalTrackCount;
            if (num2 != null) {
                setTotalTrackCount(num2);
            }
            java.lang.Integer num3 = mediaMetadata.folderType;
            if (num3 != null) {
                setFolderType(num3);
            }
            java.lang.Boolean bool = mediaMetadata.isPlayable;
            if (bool != null) {
                setIsPlayable(bool);
            }
            java.lang.Integer num4 = mediaMetadata.year;
            if (num4 != null) {
                setRecordingYear(num4);
            }
            java.lang.Integer num5 = mediaMetadata.recordingYear;
            if (num5 != null) {
                setRecordingYear(num5);
            }
            java.lang.Integer num6 = mediaMetadata.recordingMonth;
            if (num6 != null) {
                setRecordingMonth(num6);
            }
            java.lang.Integer num7 = mediaMetadata.recordingDay;
            if (num7 != null) {
                setRecordingDay(num7);
            }
            java.lang.Integer num8 = mediaMetadata.releaseYear;
            if (num8 != null) {
                setReleaseYear(num8);
            }
            java.lang.Integer num9 = mediaMetadata.releaseMonth;
            if (num9 != null) {
                setReleaseMonth(num9);
            }
            java.lang.Integer num10 = mediaMetadata.releaseDay;
            if (num10 != null) {
                setReleaseDay(num10);
            }
            java.lang.CharSequence charSequence8 = mediaMetadata.writer;
            if (charSequence8 != null) {
                setWriter(charSequence8);
            }
            java.lang.CharSequence charSequence9 = mediaMetadata.composer;
            if (charSequence9 != null) {
                setComposer(charSequence9);
            }
            java.lang.CharSequence charSequence10 = mediaMetadata.conductor;
            if (charSequence10 != null) {
                setConductor(charSequence10);
            }
            java.lang.Integer num11 = mediaMetadata.discNumber;
            if (num11 != null) {
                setDiscNumber(num11);
            }
            java.lang.Integer num12 = mediaMetadata.totalDiscCount;
            if (num12 != null) {
                setTotalDiscCount(num12);
            }
            java.lang.CharSequence charSequence11 = mediaMetadata.genre;
            if (charSequence11 != null) {
                setGenre(charSequence11);
            }
            java.lang.CharSequence charSequence12 = mediaMetadata.compilation;
            if (charSequence12 != null) {
                setCompilation(charSequence12);
            }
            android.os.Bundle bundle = mediaMetadata.extras;
            if (bundle != null) {
                setExtras(bundle);
            }
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder populateFromMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
            for (int i = 0; i < metadata.length(); i++) {
                metadata.get(i).populateMediaMetadata(this);
            }
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder populateFromMetadata(java.util.List<com.google.android.exoplayer2.metadata.Metadata> list) {
            for (int i = 0; i < list.size(); i++) {
                com.google.android.exoplayer2.metadata.Metadata metadata = list.get(i);
                for (int i2 = 0; i2 < metadata.length(); i2++) {
                    metadata.get(i2).populateMediaMetadata(this);
                }
            }
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setAlbumArtist(java.lang.CharSequence charSequence) {
            this.albumArtist = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setAlbumTitle(java.lang.CharSequence charSequence) {
            this.albumTitle = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setArtist(java.lang.CharSequence charSequence) {
            this.artist = charSequence;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaMetadata.Builder setArtworkData(byte[] bArr) {
            return setArtworkData(bArr, null);
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setArtworkData(byte[] bArr, java.lang.Integer num) {
            this.artworkData = bArr == null ? null : (byte[]) bArr.clone();
            this.artworkDataType = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setArtworkUri(android.net.Uri uri) {
            this.artworkUri = uri;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setCompilation(java.lang.CharSequence charSequence) {
            this.compilation = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setComposer(java.lang.CharSequence charSequence) {
            this.composer = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setConductor(java.lang.CharSequence charSequence) {
            this.conductor = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setDescription(java.lang.CharSequence charSequence) {
            this.description = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setDiscNumber(java.lang.Integer num) {
            this.discNumber = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setDisplayTitle(java.lang.CharSequence charSequence) {
            this.displayTitle = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setExtras(android.os.Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setFolderType(java.lang.Integer num) {
            this.folderType = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setGenre(java.lang.CharSequence charSequence) {
            this.genre = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setIsPlayable(java.lang.Boolean bool) {
            this.isPlayable = bool;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setMediaUri(android.net.Uri uri) {
            this.mediaUri = uri;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setOverallRating(com.google.android.exoplayer2.Rating rating) {
            this.overallRating = rating;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setRecordingDay(java.lang.Integer num) {
            this.recordingDay = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setRecordingMonth(java.lang.Integer num) {
            this.recordingMonth = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setRecordingYear(java.lang.Integer num) {
            this.recordingYear = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setReleaseDay(java.lang.Integer num) {
            this.releaseDay = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setReleaseMonth(java.lang.Integer num) {
            this.releaseMonth = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setReleaseYear(java.lang.Integer num) {
            this.releaseYear = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setSubtitle(java.lang.CharSequence charSequence) {
            this.subtitle = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setTitle(java.lang.CharSequence charSequence) {
            this.title = charSequence;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setTotalDiscCount(java.lang.Integer num) {
            this.totalDiscCount = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setTotalTrackCount(java.lang.Integer num) {
            this.totalTrackCount = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setTrackNumber(java.lang.Integer num) {
            this.trackNumber = num;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setUserRating(com.google.android.exoplayer2.Rating rating) {
            this.userRating = rating;
            return this;
        }

        public com.google.android.exoplayer2.MediaMetadata.Builder setWriter(java.lang.CharSequence charSequence) {
            this.writer = charSequence;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.MediaMetadata.Builder setYear(java.lang.Integer num) {
            return setRecordingYear(num);
        }
    }

    @java.lang.annotation.Target({java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.PARAMETER, java.lang.annotation.ElementType.LOCAL_VARIABLE, java.lang.annotation.ElementType.TYPE_USE})
    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface FolderType {
    }

    @java.lang.annotation.Target({java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.PARAMETER, java.lang.annotation.ElementType.LOCAL_VARIABLE, java.lang.annotation.ElementType.TYPE_USE})
    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface PictureType {
    }

    public MediaMetadata(com.google.android.exoplayer2.MediaMetadata.Builder builder) {
        this.title = builder.title;
        this.artist = builder.artist;
        this.albumTitle = builder.albumTitle;
        this.albumArtist = builder.albumArtist;
        this.displayTitle = builder.displayTitle;
        this.subtitle = builder.subtitle;
        this.description = builder.description;
        this.mediaUri = builder.mediaUri;
        this.userRating = builder.userRating;
        this.overallRating = builder.overallRating;
        this.artworkData = builder.artworkData;
        this.artworkDataType = builder.artworkDataType;
        this.artworkUri = builder.artworkUri;
        this.trackNumber = builder.trackNumber;
        this.totalTrackCount = builder.totalTrackCount;
        this.folderType = builder.folderType;
        this.isPlayable = builder.isPlayable;
        this.year = builder.recordingYear;
        this.recordingYear = builder.recordingYear;
        this.recordingMonth = builder.recordingMonth;
        this.recordingDay = builder.recordingDay;
        this.releaseYear = builder.releaseYear;
        this.releaseMonth = builder.releaseMonth;
        this.releaseDay = builder.releaseDay;
        this.writer = builder.writer;
        this.composer = builder.composer;
        this.conductor = builder.conductor;
        this.discNumber = builder.discNumber;
        this.totalDiscCount = builder.totalDiscCount;
        this.genre = builder.genre;
        this.compilation = builder.compilation;
        this.extras = builder.extras;
    }

    public static com.google.android.exoplayer2.MediaMetadata fromBundle(android.os.Bundle bundle) {
        android.os.Bundle bundle2;
        android.os.Bundle bundle3;
        com.google.android.exoplayer2.MediaMetadata.Builder builder = new com.google.android.exoplayer2.MediaMetadata.Builder();
        builder.setTitle(bundle.getCharSequence(keyForField(0))).setArtist(bundle.getCharSequence(keyForField(1))).setAlbumTitle(bundle.getCharSequence(keyForField(2))).setAlbumArtist(bundle.getCharSequence(keyForField(3))).setDisplayTitle(bundle.getCharSequence(keyForField(4))).setSubtitle(bundle.getCharSequence(keyForField(5))).setDescription(bundle.getCharSequence(keyForField(6))).setMediaUri((android.net.Uri) bundle.getParcelable(keyForField(7))).setArtworkData(bundle.getByteArray(keyForField(10)), bundle.containsKey(keyForField(29)) ? java.lang.Integer.valueOf(bundle.getInt(keyForField(29))) : null).setArtworkUri((android.net.Uri) bundle.getParcelable(keyForField(11))).setWriter(bundle.getCharSequence(keyForField(22))).setComposer(bundle.getCharSequence(keyForField(23))).setConductor(bundle.getCharSequence(keyForField(24))).setGenre(bundle.getCharSequence(keyForField(27))).setCompilation(bundle.getCharSequence(keyForField(28))).setExtras(bundle.getBundle(keyForField(1000)));
        if (bundle.containsKey(keyForField(8)) && (bundle3 = bundle.getBundle(keyForField(8))) != null) {
            builder.setUserRating((com.google.android.exoplayer2.Rating) com.google.android.exoplayer2.Rating.CREATOR.fromBundle(bundle3));
        }
        if (bundle.containsKey(keyForField(9)) && (bundle2 = bundle.getBundle(keyForField(9))) != null) {
            builder.setOverallRating((com.google.android.exoplayer2.Rating) com.google.android.exoplayer2.Rating.CREATOR.fromBundle(bundle2));
        }
        if (bundle.containsKey(keyForField(12))) {
            builder.setTrackNumber(java.lang.Integer.valueOf(bundle.getInt(keyForField(12))));
        }
        if (bundle.containsKey(keyForField(13))) {
            builder.setTotalTrackCount(java.lang.Integer.valueOf(bundle.getInt(keyForField(13))));
        }
        if (bundle.containsKey(keyForField(14))) {
            builder.setFolderType(java.lang.Integer.valueOf(bundle.getInt(keyForField(14))));
        }
        if (bundle.containsKey(keyForField(15))) {
            builder.setIsPlayable(java.lang.Boolean.valueOf(bundle.getBoolean(keyForField(15))));
        }
        if (bundle.containsKey(keyForField(16))) {
            builder.setRecordingYear(java.lang.Integer.valueOf(bundle.getInt(keyForField(16))));
        }
        if (bundle.containsKey(keyForField(17))) {
            builder.setRecordingMonth(java.lang.Integer.valueOf(bundle.getInt(keyForField(17))));
        }
        if (bundle.containsKey(keyForField(18))) {
            builder.setRecordingDay(java.lang.Integer.valueOf(bundle.getInt(keyForField(18))));
        }
        if (bundle.containsKey(keyForField(19))) {
            builder.setReleaseYear(java.lang.Integer.valueOf(bundle.getInt(keyForField(19))));
        }
        if (bundle.containsKey(keyForField(20))) {
            builder.setReleaseMonth(java.lang.Integer.valueOf(bundle.getInt(keyForField(20))));
        }
        if (bundle.containsKey(keyForField(21))) {
            builder.setReleaseDay(java.lang.Integer.valueOf(bundle.getInt(keyForField(21))));
        }
        if (bundle.containsKey(keyForField(25))) {
            builder.setDiscNumber(java.lang.Integer.valueOf(bundle.getInt(keyForField(25))));
        }
        if (bundle.containsKey(keyForField(26))) {
            builder.setTotalDiscCount(java.lang.Integer.valueOf(bundle.getInt(keyForField(26))));
        }
        return builder.build();
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public com.google.android.exoplayer2.MediaMetadata.Builder buildUpon() {
        return new com.google.android.exoplayer2.MediaMetadata.Builder();
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.MediaMetadata.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.MediaMetadata mediaMetadata = (com.google.android.exoplayer2.MediaMetadata) obj;
        return com.google.android.exoplayer2.util.Util.areEqual(this.title, mediaMetadata.title) && com.google.android.exoplayer2.util.Util.areEqual(this.artist, mediaMetadata.artist) && com.google.android.exoplayer2.util.Util.areEqual(this.albumTitle, mediaMetadata.albumTitle) && com.google.android.exoplayer2.util.Util.areEqual(this.albumArtist, mediaMetadata.albumArtist) && com.google.android.exoplayer2.util.Util.areEqual(this.displayTitle, mediaMetadata.displayTitle) && com.google.android.exoplayer2.util.Util.areEqual(this.subtitle, mediaMetadata.subtitle) && com.google.android.exoplayer2.util.Util.areEqual(this.description, mediaMetadata.description) && com.google.android.exoplayer2.util.Util.areEqual(this.mediaUri, mediaMetadata.mediaUri) && com.google.android.exoplayer2.util.Util.areEqual(this.userRating, mediaMetadata.userRating) && com.google.android.exoplayer2.util.Util.areEqual(this.overallRating, mediaMetadata.overallRating) && java.util.Arrays.equals(this.artworkData, mediaMetadata.artworkData) && com.google.android.exoplayer2.util.Util.areEqual(this.artworkDataType, mediaMetadata.artworkDataType) && com.google.android.exoplayer2.util.Util.areEqual(this.artworkUri, mediaMetadata.artworkUri) && com.google.android.exoplayer2.util.Util.areEqual(this.trackNumber, mediaMetadata.trackNumber) && com.google.android.exoplayer2.util.Util.areEqual(this.totalTrackCount, mediaMetadata.totalTrackCount) && com.google.android.exoplayer2.util.Util.areEqual(this.folderType, mediaMetadata.folderType) && com.google.android.exoplayer2.util.Util.areEqual(this.isPlayable, mediaMetadata.isPlayable) && com.google.android.exoplayer2.util.Util.areEqual(this.recordingYear, mediaMetadata.recordingYear) && com.google.android.exoplayer2.util.Util.areEqual(this.recordingMonth, mediaMetadata.recordingMonth) && com.google.android.exoplayer2.util.Util.areEqual(this.recordingDay, mediaMetadata.recordingDay) && com.google.android.exoplayer2.util.Util.areEqual(this.releaseYear, mediaMetadata.releaseYear) && com.google.android.exoplayer2.util.Util.areEqual(this.releaseMonth, mediaMetadata.releaseMonth) && com.google.android.exoplayer2.util.Util.areEqual(this.releaseDay, mediaMetadata.releaseDay) && com.google.android.exoplayer2.util.Util.areEqual(this.writer, mediaMetadata.writer) && com.google.android.exoplayer2.util.Util.areEqual(this.composer, mediaMetadata.composer) && com.google.android.exoplayer2.util.Util.areEqual(this.conductor, mediaMetadata.conductor) && com.google.android.exoplayer2.util.Util.areEqual(this.discNumber, mediaMetadata.discNumber) && com.google.android.exoplayer2.util.Util.areEqual(this.totalDiscCount, mediaMetadata.totalDiscCount) && com.google.android.exoplayer2.util.Util.areEqual(this.genre, mediaMetadata.genre) && com.google.android.exoplayer2.util.Util.areEqual(this.compilation, mediaMetadata.compilation);
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{this.title, this.artist, this.albumTitle, this.albumArtist, this.displayTitle, this.subtitle, this.description, this.mediaUri, this.userRating, this.overallRating, java.lang.Integer.valueOf(java.util.Arrays.hashCode(this.artworkData)), this.artworkDataType, this.artworkUri, this.trackNumber, this.totalTrackCount, this.folderType, this.isPlayable, this.recordingYear, this.recordingMonth, this.recordingDay, this.releaseYear, this.releaseMonth, this.releaseDay, this.writer, this.composer, this.conductor, this.discNumber, this.totalDiscCount, this.genre, this.compilation});
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putCharSequence(keyForField(0), this.title);
        bundle.putCharSequence(keyForField(1), this.artist);
        bundle.putCharSequence(keyForField(2), this.albumTitle);
        bundle.putCharSequence(keyForField(3), this.albumArtist);
        bundle.putCharSequence(keyForField(4), this.displayTitle);
        bundle.putCharSequence(keyForField(5), this.subtitle);
        bundle.putCharSequence(keyForField(6), this.description);
        bundle.putParcelable(keyForField(7), this.mediaUri);
        bundle.putByteArray(keyForField(10), this.artworkData);
        bundle.putParcelable(keyForField(11), this.artworkUri);
        bundle.putCharSequence(keyForField(22), this.writer);
        bundle.putCharSequence(keyForField(23), this.composer);
        bundle.putCharSequence(keyForField(24), this.conductor);
        bundle.putCharSequence(keyForField(27), this.genre);
        bundle.putCharSequence(keyForField(28), this.compilation);
        if (this.userRating != null) {
            bundle.putBundle(keyForField(8), this.userRating.toBundle());
        }
        if (this.overallRating != null) {
            bundle.putBundle(keyForField(9), this.overallRating.toBundle());
        }
        if (this.trackNumber != null) {
            bundle.putInt(keyForField(12), this.trackNumber.intValue());
        }
        if (this.totalTrackCount != null) {
            bundle.putInt(keyForField(13), this.totalTrackCount.intValue());
        }
        if (this.folderType != null) {
            bundle.putInt(keyForField(14), this.folderType.intValue());
        }
        if (this.isPlayable != null) {
            bundle.putBoolean(keyForField(15), this.isPlayable.booleanValue());
        }
        if (this.recordingYear != null) {
            bundle.putInt(keyForField(16), this.recordingYear.intValue());
        }
        if (this.recordingMonth != null) {
            bundle.putInt(keyForField(17), this.recordingMonth.intValue());
        }
        if (this.recordingDay != null) {
            bundle.putInt(keyForField(18), this.recordingDay.intValue());
        }
        if (this.releaseYear != null) {
            bundle.putInt(keyForField(19), this.releaseYear.intValue());
        }
        if (this.releaseMonth != null) {
            bundle.putInt(keyForField(20), this.releaseMonth.intValue());
        }
        if (this.releaseDay != null) {
            bundle.putInt(keyForField(21), this.releaseDay.intValue());
        }
        if (this.discNumber != null) {
            bundle.putInt(keyForField(25), this.discNumber.intValue());
        }
        if (this.totalDiscCount != null) {
            bundle.putInt(keyForField(26), this.totalDiscCount.intValue());
        }
        if (this.artworkDataType != null) {
            bundle.putInt(keyForField(29), this.artworkDataType.intValue());
        }
        if (this.extras != null) {
            bundle.putBundle(keyForField(1000), this.extras);
        }
        return bundle;
    }
}
