package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public final class TrackSelectionOverrides implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_OVERRIDES = 0;
    public final e.c.b.b.t<com.google.android.exoplayer2.source.TrackGroup, com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride> overrides;
    public static final com.google.android.exoplayer2.trackselection.TrackSelectionOverrides EMPTY = new com.google.android.exoplayer2.trackselection.TrackSelectionOverrides(e.c.b.b.l0.f2709g);
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.trackselection.TrackSelectionOverrides> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.p2.g
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.a(bundle);
        }
    };

    public static final class Builder {
        public final java.util.HashMap<com.google.android.exoplayer2.source.TrackGroup, com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride> overrides;

        public Builder() {
            this.overrides = new java.util.HashMap<>();
        }

        public Builder(java.util.Map<com.google.android.exoplayer2.source.TrackGroup, com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride> map) {
            this.overrides = new java.util.HashMap<>(map);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.Builder addOverride(com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride trackSelectionOverride) {
            this.overrides.put(trackSelectionOverride.trackGroup, trackSelectionOverride);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides build() {
            return new com.google.android.exoplayer2.trackselection.TrackSelectionOverrides(this.overrides);
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.Builder clearOverride(com.google.android.exoplayer2.source.TrackGroup trackGroup) {
            this.overrides.remove(trackGroup);
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.Builder clearOverridesOfType(int i) {
            java.util.Iterator<com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride> it = this.overrides.values().iterator();
            while (it.hasNext()) {
                if (it.next().getTrackType() == i) {
                    it.remove();
                }
            }
            return this;
        }

        public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.Builder setOverrideForType(com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride trackSelectionOverride) {
            clearOverridesOfType(trackSelectionOverride.getTrackType());
            this.overrides.put(trackSelectionOverride.trackGroup, trackSelectionOverride);
            return this;
        }
    }

    public static final class TrackSelectionOverride implements com.google.android.exoplayer2.Bundleable {
        public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.p2.h
            @Override // com.google.android.exoplayer2.Bundleable.Creator
            public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
                return com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride.a(bundle);
            }
        };
        public static final int FIELD_TRACKS = 1;
        public static final int FIELD_TRACK_GROUP = 0;
        public final com.google.android.exoplayer2.source.TrackGroup trackGroup;
        public final e.c.b.b.s<java.lang.Integer> trackIndexes;

        public TrackSelectionOverride(com.google.android.exoplayer2.source.TrackGroup trackGroup) {
            this.trackGroup = trackGroup;
            d.s.y.l(4, "initialCapacity");
            java.lang.Object[] objArrCopyOf = new java.lang.Object[4];
            int i = 0;
            int i2 = 0;
            boolean z = false;
            while (i < trackGroup.length) {
                java.lang.Integer numValueOf = java.lang.Integer.valueOf(i);
                if (numValueOf == null) {
                    throw null;
                }
                int i3 = i2 + 1;
                if (objArrCopyOf.length < i3) {
                    objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, e.c.b.b.q.b.a(objArrCopyOf.length, i3));
                } else if (z) {
                    objArrCopyOf = (java.lang.Object[]) objArrCopyOf.clone();
                } else {
                    objArrCopyOf[i2] = numValueOf;
                    i++;
                    i2++;
                }
                z = false;
                objArrCopyOf[i2] = numValueOf;
                i++;
                i2++;
            }
            this.trackIndexes = e.c.b.b.s.i(objArrCopyOf, i2);
        }

        public TrackSelectionOverride(com.google.android.exoplayer2.source.TrackGroup trackGroup, java.util.List<java.lang.Integer> list) {
            if (!list.isEmpty() && (((java.lang.Integer) java.util.Collections.min(list)).intValue() < 0 || ((java.lang.Integer) java.util.Collections.max(list)).intValue() >= trackGroup.length)) {
                throw new java.lang.IndexOutOfBoundsException();
            }
            this.trackGroup = trackGroup;
            this.trackIndexes = e.c.b.b.s.l(list);
        }

        public static com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride a(android.os.Bundle bundle) {
            android.os.Bundle bundle2 = bundle.getBundle(keyForField(0));
            com.google.android.exoplayer2.util.Assertions.checkNotNull(bundle2);
            com.google.android.exoplayer2.source.TrackGroup trackGroup = (com.google.android.exoplayer2.source.TrackGroup) com.google.android.exoplayer2.source.TrackGroup.CREATOR.fromBundle(bundle2);
            int[] intArray = bundle.getIntArray(keyForField(1));
            if (intArray == null) {
                return new com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride(trackGroup);
            }
            return new com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride(trackGroup, intArray.length == 0 ? java.util.Collections.emptyList() : new e.c.b.d.a(intArray));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getTrackType() {
            return com.google.android.exoplayer2.util.MimeTypes.getTrackType(this.trackGroup.getFormat(0).sampleMimeType);
        }

        public static java.lang.String keyForField(int i) {
            return java.lang.Integer.toString(i, 36);
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride trackSelectionOverride = (com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride) obj;
            return this.trackGroup.equals(trackSelectionOverride.trackGroup) && this.trackIndexes.equals(trackSelectionOverride.trackIndexes);
        }

        public int hashCode() {
            return (this.trackIndexes.hashCode() * 31) + this.trackGroup.hashCode();
        }

        @Override // com.google.android.exoplayer2.Bundleable
        public android.os.Bundle toBundle() {
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putBundle(keyForField(0), this.trackGroup.toBundle());
            bundle.putIntArray(keyForField(1), d.s.y.a0(this.trackIndexes));
            return bundle;
        }
    }

    public TrackSelectionOverrides(java.util.Map<com.google.android.exoplayer2.source.TrackGroup, com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride> map) {
        this.overrides = e.c.b.b.t.a(map);
    }

    public static /* synthetic */ com.google.android.exoplayer2.trackselection.TrackSelectionOverrides a(android.os.Bundle bundle) {
        java.util.List listFromBundleNullableList = com.google.android.exoplayer2.util.BundleableUtil.fromBundleNullableList(com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride.CREATOR, bundle.getParcelableArrayList(keyForField(0)), e.c.b.b.s.p());
        e.c.b.b.t.a aVar = new e.c.b.b.t.a();
        for (int i = 0; i < listFromBundleNullableList.size(); i++) {
            com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride trackSelectionOverride = (com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride) listFromBundleNullableList.get(i);
            aVar.c(trackSelectionOverride.trackGroup, trackSelectionOverride);
        }
        return new com.google.android.exoplayer2.trackselection.TrackSelectionOverrides(aVar.a());
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public e.c.b.b.s<com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride> asList() {
        return e.c.b.b.s.l(this.overrides.values());
    }

    public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.Builder buildUpon() {
        return new com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.Builder(this.overrides);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.class != obj.getClass()) {
            return false;
        }
        return this.overrides.equals(((com.google.android.exoplayer2.trackselection.TrackSelectionOverrides) obj).overrides);
    }

    public com.google.android.exoplayer2.trackselection.TrackSelectionOverrides.TrackSelectionOverride getOverride(com.google.android.exoplayer2.source.TrackGroup trackGroup) {
        return this.overrides.get(trackGroup);
    }

    public int hashCode() {
        return this.overrides.hashCode();
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putParcelableArrayList(keyForField(0), com.google.android.exoplayer2.util.BundleableUtil.toBundleArrayList(this.overrides.values()));
        return bundle;
    }
}
