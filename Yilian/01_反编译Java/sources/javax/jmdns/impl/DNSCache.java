package javax.jmdns.impl;

/* loaded from: classes.dex */
public class DNSCache extends java.util.AbstractMap<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> {
    public static final javax.jmdns.impl.DNSCache EmptyCache = new javax.jmdns.impl.DNSCache._EmptyCache();
    public transient java.util.Set<java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>>> _entrySet;

    public static class _CacheEntry implements java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> {
        public java.lang.String _key;
        public java.util.List<? extends javax.jmdns.impl.DNSEntry> _value;

        public _CacheEntry(java.lang.String str, java.util.List<? extends javax.jmdns.impl.DNSEntry> list) {
            this._key = str != null ? str.trim().toLowerCase() : null;
            this._value = list;
        }

        public _CacheEntry(java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> entry) {
            if (entry instanceof javax.jmdns.impl.DNSCache._CacheEntry) {
                javax.jmdns.impl.DNSCache._CacheEntry _cacheentry = (javax.jmdns.impl.DNSCache._CacheEntry) entry;
                this._key = _cacheentry.getKey();
                this._value = _cacheentry.getValue();
            }
        }

        @Override // java.util.Map.Entry
        public boolean equals(java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            return getKey().equals(entry.getKey()) && getValue().equals(entry.getValue());
        }

        @Override // java.util.Map.Entry
        public java.lang.String getKey() {
            java.lang.String str = this._key;
            return str != null ? str : "";
        }

        @Override // java.util.Map.Entry
        public java.util.List<? extends javax.jmdns.impl.DNSEntry> getValue() {
            return this._value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            java.lang.String str = this._key;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public boolean isEmpty() {
            return getValue().isEmpty();
        }

        @Override // java.util.Map.Entry
        public java.util.List<? extends javax.jmdns.impl.DNSEntry> setValue(java.util.List<? extends javax.jmdns.impl.DNSEntry> list) {
            java.util.List<? extends javax.jmdns.impl.DNSEntry> list2 = this._value;
            this._value = list;
            return list2;
        }

        public synchronized java.lang.String toString() {
            java.lang.StringBuffer stringBuffer;
            stringBuffer = new java.lang.StringBuffer(200);
            stringBuffer.append("\n\t\tname '");
            stringBuffer.append(this._key);
            stringBuffer.append("' ");
            java.util.List<? extends javax.jmdns.impl.DNSEntry> list = this._value;
            if (list == null || list.isEmpty()) {
                stringBuffer.append(" no entries");
            } else {
                for (javax.jmdns.impl.DNSEntry dNSEntry : this._value) {
                    stringBuffer.append("\n\t\t\t");
                    stringBuffer.append(dNSEntry.toString());
                }
            }
            return stringBuffer.toString();
        }
    }

    public static final class _EmptyCache extends javax.jmdns.impl.DNSCache {
        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(java.lang.Object obj) {
            return false;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsValue(java.lang.Object obj) {
            return false;
        }

        @Override // javax.jmdns.impl.DNSCache, java.util.AbstractMap, java.util.Map
        public java.util.Set<java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>>> entrySet() {
            return java.util.Collections.emptySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(java.lang.Object obj) {
            return (obj instanceof java.util.Map) && ((java.util.Map) obj).size() == 0;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.util.List<javax.jmdns.impl.DNSEntry> get(java.lang.Object obj) {
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return 0;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return true;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.util.Set<java.lang.String> keySet() {
            return java.util.Collections.emptySet();
        }

        @Override // javax.jmdns.impl.DNSCache, java.util.AbstractMap, java.util.Map
        public java.util.List<? extends javax.jmdns.impl.DNSEntry> put(java.lang.String str, java.util.List<? extends javax.jmdns.impl.DNSEntry> list) {
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return 0;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.util.Collection<java.util.List<? extends javax.jmdns.impl.DNSEntry>> values() {
            return java.util.Collections.emptySet();
        }
    }

    public DNSCache() {
        this(1024);
    }

    public DNSCache(int i) {
        this._entrySet = null;
        this._entrySet = new java.util.HashSet(i);
    }

    public DNSCache(javax.jmdns.impl.DNSCache dNSCache) {
        this(dNSCache != null ? dNSCache.size() : 1024);
        if (dNSCache != null) {
            putAll(dNSCache);
        }
    }

    private java.util.Collection<? extends javax.jmdns.impl.DNSEntry> _getDNSEntryList(java.lang.String str) {
        return get(str != null ? str.toLowerCase() : null);
    }

    public synchronized boolean addDNSEntry(javax.jmdns.impl.DNSEntry dNSEntry) {
        boolean z;
        z = false;
        if (dNSEntry != null) {
            java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> entry = getEntry(dNSEntry.getKey());
            java.util.ArrayList arrayList = entry != null ? new java.util.ArrayList(entry.getValue()) : new java.util.ArrayList();
            arrayList.add(dNSEntry);
            if (entry != null) {
                entry.setValue(arrayList);
            } else {
                entrySet().add(new javax.jmdns.impl.DNSCache._CacheEntry(dNSEntry.getKey(), arrayList));
            }
            z = true;
        }
        return z;
    }

    public synchronized java.util.Collection<javax.jmdns.impl.DNSEntry> allValues() {
        java.util.ArrayList arrayList;
        arrayList = new java.util.ArrayList();
        for (java.util.List<? extends javax.jmdns.impl.DNSEntry> list : values()) {
            if (list != null) {
                arrayList.addAll(list);
            }
        }
        return arrayList;
    }

    @Override // java.util.AbstractMap
    public java.lang.Object clone() {
        return new javax.jmdns.impl.DNSCache(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.Set<java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>>> entrySet() {
        if (this._entrySet == null) {
            this._entrySet = new java.util.HashSet();
        }
        return this._entrySet;
    }

    public synchronized javax.jmdns.impl.DNSEntry getDNSEntry(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass) {
        javax.jmdns.impl.DNSEntry dNSEntry;
        dNSEntry = null;
        java.util.Collection<? extends javax.jmdns.impl.DNSEntry> collection_getDNSEntryList = _getDNSEntryList(str);
        if (collection_getDNSEntryList != null) {
            for (javax.jmdns.impl.DNSEntry dNSEntry2 : collection_getDNSEntryList) {
                if (dNSEntry2.getRecordType().equals(dNSRecordType) && (javax.jmdns.impl.constants.DNSRecordClass.CLASS_ANY == dNSRecordClass || dNSEntry2.getRecordClass().equals(dNSRecordClass))) {
                    dNSEntry = dNSEntry2;
                    break;
                }
            }
        }
        return dNSEntry;
    }

    public synchronized javax.jmdns.impl.DNSEntry getDNSEntry(javax.jmdns.impl.DNSEntry dNSEntry) {
        javax.jmdns.impl.DNSEntry dNSEntry2;
        dNSEntry2 = null;
        if (dNSEntry != null) {
            java.util.Collection<? extends javax.jmdns.impl.DNSEntry> collection_getDNSEntryList = _getDNSEntryList(dNSEntry.getKey());
            if (collection_getDNSEntryList != null) {
                java.util.Iterator<? extends javax.jmdns.impl.DNSEntry> it = collection_getDNSEntryList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    javax.jmdns.impl.DNSEntry next = it.next();
                    if (next.isSameEntry(dNSEntry)) {
                        dNSEntry2 = next;
                        break;
                    }
                }
            }
        }
        return dNSEntry2;
    }

    public synchronized java.util.Collection<? extends javax.jmdns.impl.DNSEntry> getDNSEntryList(java.lang.String str) {
        java.util.Collection<? extends javax.jmdns.impl.DNSEntry> collection_getDNSEntryList;
        collection_getDNSEntryList = _getDNSEntryList(str);
        return collection_getDNSEntryList != null ? new java.util.ArrayList<>(collection_getDNSEntryList) : java.util.Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Collection<? extends javax.jmdns.impl.DNSEntry>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList] */
    public synchronized java.util.Collection<? extends javax.jmdns.impl.DNSEntry> getDNSEntryList(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass) {
        ?? EmptyList;
        java.util.Collection<? extends javax.jmdns.impl.DNSEntry> collection_getDNSEntryList = _getDNSEntryList(str);
        if (collection_getDNSEntryList != null) {
            EmptyList = new java.util.ArrayList(collection_getDNSEntryList);
            java.util.Iterator it = EmptyList.iterator();
            while (it.hasNext()) {
                javax.jmdns.impl.DNSEntry dNSEntry = (javax.jmdns.impl.DNSEntry) it.next();
                if (!dNSEntry.getRecordType().equals(dNSRecordType) || (javax.jmdns.impl.constants.DNSRecordClass.CLASS_ANY != dNSRecordClass && !dNSEntry.getRecordClass().equals(dNSRecordClass))) {
                    it.remove();
                }
            }
        } else {
            EmptyList = java.util.Collections.emptyList();
        }
        return EmptyList;
    }

    public java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> getEntry(java.lang.String str) {
        java.lang.String lowerCase = str != null ? str.trim().toLowerCase() : null;
        for (java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> entry : entrySet()) {
            java.lang.String key = entry.getKey();
            if (lowerCase != null) {
                if (lowerCase.equals(key)) {
                    return entry;
                }
            } else if (key == null) {
                return entry;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public java.util.List<? extends javax.jmdns.impl.DNSEntry> put(java.lang.String str, java.util.List<? extends javax.jmdns.impl.DNSEntry> list) {
        java.util.List<? extends javax.jmdns.impl.DNSEntry> value;
        synchronized (this) {
            java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> entry = getEntry(str);
            if (entry != null) {
                value = entry.setValue(list);
            } else {
                entrySet().add(new javax.jmdns.impl.DNSCache._CacheEntry(str, list));
                value = null;
            }
        }
        return value;
    }

    public synchronized boolean removeDNSEntry(javax.jmdns.impl.DNSEntry dNSEntry) {
        boolean zRemove;
        zRemove = false;
        if (dNSEntry != null) {
            java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> entry = getEntry(dNSEntry.getKey());
            if (entry != null) {
                zRemove = entry.getValue().remove(dNSEntry);
                if (entry.getValue().isEmpty()) {
                    entrySet().remove(entry);
                }
            }
        }
        return zRemove;
    }

    public synchronized boolean replaceDNSEntry(javax.jmdns.impl.DNSEntry dNSEntry, javax.jmdns.impl.DNSEntry dNSEntry2) {
        boolean z;
        z = false;
        if (dNSEntry != null && dNSEntry2 != null) {
            if (dNSEntry.getKey().equals(dNSEntry2.getKey())) {
                java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> entry = getEntry(dNSEntry.getKey());
                java.util.ArrayList arrayList = entry != null ? new java.util.ArrayList(entry.getValue()) : new java.util.ArrayList();
                arrayList.remove(dNSEntry2);
                arrayList.add(dNSEntry);
                if (entry != null) {
                    entry.setValue(arrayList);
                } else {
                    entrySet().add(new javax.jmdns.impl.DNSCache._CacheEntry(dNSEntry.getKey(), arrayList));
                }
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractMap
    public synchronized java.lang.String toString() {
        java.lang.StringBuffer stringBuffer;
        stringBuffer = new java.lang.StringBuffer(2000);
        stringBuffer.append("\t---- cache ----");
        for (java.util.Map.Entry<java.lang.String, java.util.List<? extends javax.jmdns.impl.DNSEntry>> entry : entrySet()) {
            stringBuffer.append("\n\t\t");
            stringBuffer.append(entry.toString());
        }
        return stringBuffer.toString();
    }
}
