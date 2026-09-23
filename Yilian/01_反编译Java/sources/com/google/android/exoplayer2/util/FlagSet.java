package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class FlagSet {
    public final android.util.SparseBooleanArray flags;

    public static final class Builder {
        public boolean buildCalled;
        public final android.util.SparseBooleanArray flags = new android.util.SparseBooleanArray();

        public com.google.android.exoplayer2.util.FlagSet.Builder add(int i) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.flags.append(i, true);
            return this;
        }

        public com.google.android.exoplayer2.util.FlagSet.Builder addAll(com.google.android.exoplayer2.util.FlagSet flagSet) {
            for (int i = 0; i < flagSet.size(); i++) {
                add(flagSet.get(i));
            }
            return this;
        }

        public com.google.android.exoplayer2.util.FlagSet.Builder addAll(int... iArr) {
            for (int i : iArr) {
                add(i);
            }
            return this;
        }

        public com.google.android.exoplayer2.util.FlagSet.Builder addIf(int i, boolean z) {
            return z ? add(i) : this;
        }

        public com.google.android.exoplayer2.util.FlagSet build() {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new com.google.android.exoplayer2.util.FlagSet(this.flags);
        }

        public com.google.android.exoplayer2.util.FlagSet.Builder remove(int i) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.buildCalled);
            this.flags.delete(i);
            return this;
        }

        public com.google.android.exoplayer2.util.FlagSet.Builder removeAll(int... iArr) {
            for (int i : iArr) {
                remove(i);
            }
            return this;
        }

        public com.google.android.exoplayer2.util.FlagSet.Builder removeIf(int i, boolean z) {
            return z ? remove(i) : this;
        }
    }

    public FlagSet(android.util.SparseBooleanArray sparseBooleanArray) {
        this.flags = sparseBooleanArray;
    }

    public boolean contains(int i) {
        return this.flags.get(i);
    }

    public boolean containsAny(int... iArr) {
        for (int i : iArr) {
            if (contains(i)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof com.google.android.exoplayer2.util.FlagSet)) {
            return false;
        }
        com.google.android.exoplayer2.util.FlagSet flagSet = (com.google.android.exoplayer2.util.FlagSet) obj;
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 24) {
            return this.flags.equals(flagSet.flags);
        }
        if (size() != flagSet.size()) {
            return false;
        }
        for (int i = 0; i < size(); i++) {
            if (get(i) != flagSet.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i) {
        com.google.android.exoplayer2.util.Assertions.checkIndex(i, 0, size());
        return this.flags.keyAt(i);
    }

    public int hashCode() {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 24) {
            return this.flags.hashCode();
        }
        int size = size();
        for (int i = 0; i < size(); i++) {
            size = (size * 31) + get(i);
        }
        return size;
    }

    public int size() {
        return this.flags.size();
    }
}
