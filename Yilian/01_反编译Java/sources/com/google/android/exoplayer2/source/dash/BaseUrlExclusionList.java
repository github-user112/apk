package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public final class BaseUrlExclusionList {
    public final java.util.Map<java.lang.Integer, java.lang.Long> excludedPriorities;
    public final java.util.Map<java.lang.String, java.lang.Long> excludedServiceLocations;
    public final java.util.Random random;
    public final java.util.Map<java.util.List<android.util.Pair<java.lang.String, java.lang.Integer>>, com.google.android.exoplayer2.source.dash.manifest.BaseUrl> selectionsTaken;

    public BaseUrlExclusionList() {
        this(new java.util.Random());
    }

    public BaseUrlExclusionList(java.util.Random random) {
        this.selectionsTaken = new java.util.HashMap();
        this.random = random;
        this.excludedServiceLocations = new java.util.HashMap();
        this.excludedPriorities = new java.util.HashMap();
    }

    public static <T> void addExclusion(T t, long j, java.util.Map<T, java.lang.Long> map) {
        if (map.containsKey(t)) {
            j = java.lang.Math.max(j, ((java.lang.Long) com.google.android.exoplayer2.util.Util.castNonNull(map.get(t))).longValue());
        }
        map.put(t, java.lang.Long.valueOf(j));
    }

    private java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> applyExclusions(java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list) {
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        removeExpiredExclusions(jElapsedRealtime, this.excludedServiceLocations);
        removeExpiredExclusions(jElapsedRealtime, this.excludedPriorities);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl = list.get(i);
            if (!this.excludedServiceLocations.containsKey(baseUrl.serviceLocation) && !this.excludedPriorities.containsKey(java.lang.Integer.valueOf(baseUrl.priority))) {
                arrayList.add(baseUrl);
            }
        }
        return arrayList;
    }

    public static int compareBaseUrl(com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl, com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl2) {
        int iA = defpackage.a.a(baseUrl.priority, baseUrl2.priority);
        return iA != 0 ? iA : baseUrl.serviceLocation.compareTo(baseUrl2.serviceLocation);
    }

    public static int getPriorityCount(java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list) {
        java.util.HashSet hashSet = new java.util.HashSet();
        for (int i = 0; i < list.size(); i++) {
            hashSet.add(java.lang.Integer.valueOf(list.get(i).priority));
        }
        return hashSet.size();
    }

    public static <T> void removeExpiredExclusions(long j, java.util.Map<T, java.lang.Long> map) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.util.Map.Entry<T, java.lang.Long> entry : map.entrySet()) {
            if (entry.getValue().longValue() <= j) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            map.remove(arrayList.get(i));
        }
    }

    private com.google.android.exoplayer2.source.dash.manifest.BaseUrl selectWeighted(java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            i += list.get(i2).weight;
        }
        int iNextInt = this.random.nextInt(i);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl = list.get(i4);
            i3 += baseUrl.weight;
            if (iNextInt < i3) {
                return baseUrl;
            }
        }
        return (com.google.android.exoplayer2.source.dash.manifest.BaseUrl) e.c.b.a.f.l(list);
    }

    public void exclude(com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl, long j) {
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime() + j;
        addExclusion(baseUrl.serviceLocation, jElapsedRealtime, this.excludedServiceLocations);
        addExclusion(java.lang.Integer.valueOf(baseUrl.priority), jElapsedRealtime, this.excludedPriorities);
    }

    public int getPriorityCountAfterExclusion(java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list) {
        java.util.HashSet hashSet = new java.util.HashSet();
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> listApplyExclusions = applyExclusions(list);
        for (int i = 0; i < listApplyExclusions.size(); i++) {
            hashSet.add(java.lang.Integer.valueOf(listApplyExclusions.get(i).priority));
        }
        return hashSet.size();
    }

    public void reset() {
        this.excludedServiceLocations.clear();
        this.excludedPriorities.clear();
        this.selectionsTaken.clear();
    }

    public com.google.android.exoplayer2.source.dash.manifest.BaseUrl selectBaseUrl(java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list) {
        java.lang.Object objK;
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> listApplyExclusions = applyExclusions(list);
        if (listApplyExclusions.size() >= 2) {
            java.util.Collections.sort(listApplyExclusions, new java.util.Comparator() { // from class: e.c.a.a.n2.f0.d
                @Override // java.util.Comparator
                public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                    return com.google.android.exoplayer2.source.dash.BaseUrlExclusionList.compareBaseUrl((com.google.android.exoplayer2.source.dash.manifest.BaseUrl) obj, (com.google.android.exoplayer2.source.dash.manifest.BaseUrl) obj2);
                }
            });
            java.util.ArrayList arrayList = new java.util.ArrayList();
            int i = listApplyExclusions.get(0).priority;
            int i2 = 0;
            while (true) {
                if (i2 >= listApplyExclusions.size()) {
                    break;
                }
                com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl = listApplyExclusions.get(i2);
                if (i == baseUrl.priority) {
                    arrayList.add(new android.util.Pair(baseUrl.serviceLocation, java.lang.Integer.valueOf(baseUrl.weight)));
                    i2++;
                } else if (arrayList.size() == 1) {
                    objK = listApplyExclusions.get(0);
                }
            }
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl2 = this.selectionsTaken.get(arrayList);
            if (baseUrl2 != null) {
                return baseUrl2;
            }
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrlSelectWeighted = selectWeighted(listApplyExclusions.subList(0, arrayList.size()));
            this.selectionsTaken.put(arrayList, baseUrlSelectWeighted);
            return baseUrlSelectWeighted;
        }
        objK = e.c.b.a.f.k(listApplyExclusions, null);
        return (com.google.android.exoplayer2.source.dash.manifest.BaseUrl) objK;
    }
}
