package javax.jmdns.impl;

/* loaded from: classes.dex */
public class DNSQuestion extends javax.jmdns.impl.DNSEntry {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;

    /* renamed from: javax.jmdns.impl.DNSQuestion$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;

        static {
            int[] iArr = new int[javax.jmdns.impl.constants.DNSRecordType.values().length];
            $SwitchMap$javax$jmdns$impl$constants$DNSRecordType = iArr;
            try {
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType = javax.jmdns.impl.constants.DNSRecordType.TYPE_A;
                iArr[1] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType2 = javax.jmdns.impl.constants.DNSRecordType.TYPE_A6;
                iArr2[38] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType3 = javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA;
                iArr3[28] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType4 = javax.jmdns.impl.constants.DNSRecordType.TYPE_ANY;
                iArr4[58] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType5 = javax.jmdns.impl.constants.DNSRecordType.TYPE_HINFO;
                iArr5[13] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType6 = javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR;
                iArr6[12] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType7 = javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV;
                iArr7[33] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType8 = javax.jmdns.impl.constants.DNSRecordType.TYPE_TXT;
                iArr8[16] = 8;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
        }
    }

    public static class AllRecords extends javax.jmdns.impl.DNSQuestion {
        public AllRecords(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
            super(str, dNSRecordType, dNSRecordClass, z);
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public void addAnswers(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set) {
            java.lang.String lowerCase = getName().toLowerCase();
            if (jmDNSImpl.getLocalHost().getName().equalsIgnoreCase(lowerCase)) {
                set.addAll(jmDNSImpl.getLocalHost().answers(isUnique(), javax.jmdns.impl.constants.DNSConstants.DNS_TTL));
            } else if (jmDNSImpl.getServiceTypes().containsKey(lowerCase)) {
                new javax.jmdns.impl.DNSQuestion.Pointer(getName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR, getRecordClass(), isUnique()).addAnswers(jmDNSImpl, set);
            } else {
                addAnswersForServiceInfo(jmDNSImpl, set, (javax.jmdns.impl.ServiceInfoImpl) jmDNSImpl.getServices().get(lowerCase));
            }
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public boolean iAmTheOnlyOne(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            java.lang.String lowerCase = getName().toLowerCase();
            return jmDNSImpl.getLocalHost().getName().equals(lowerCase) || jmDNSImpl.getServices().keySet().contains(lowerCase);
        }

        @Override // javax.jmdns.impl.DNSEntry
        public boolean isSameType(javax.jmdns.impl.DNSEntry dNSEntry) {
            return dNSEntry != null;
        }
    }

    public static class DNS4Address extends javax.jmdns.impl.DNSQuestion {
        public DNS4Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
            super(str, dNSRecordType, dNSRecordClass, z);
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public void addAnswers(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set) {
            javax.jmdns.impl.DNSRecord.Address dNSAddressRecord = jmDNSImpl.getLocalHost().getDNSAddressRecord(getRecordType(), true, javax.jmdns.impl.constants.DNSConstants.DNS_TTL);
            if (dNSAddressRecord != null) {
                set.add(dNSAddressRecord);
            }
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public boolean iAmTheOnlyOne(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            java.lang.String lowerCase = getName().toLowerCase();
            return jmDNSImpl.getLocalHost().getName().equals(lowerCase) || jmDNSImpl.getServices().keySet().contains(lowerCase);
        }
    }

    public static class DNS6Address extends javax.jmdns.impl.DNSQuestion {
        public DNS6Address(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
            super(str, dNSRecordType, dNSRecordClass, z);
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public void addAnswers(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set) {
            javax.jmdns.impl.DNSRecord.Address dNSAddressRecord = jmDNSImpl.getLocalHost().getDNSAddressRecord(getRecordType(), true, javax.jmdns.impl.constants.DNSConstants.DNS_TTL);
            if (dNSAddressRecord != null) {
                set.add(dNSAddressRecord);
            }
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public boolean iAmTheOnlyOne(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            java.lang.String lowerCase = getName().toLowerCase();
            return jmDNSImpl.getLocalHost().getName().equals(lowerCase) || jmDNSImpl.getServices().keySet().contains(lowerCase);
        }
    }

    public static class HostInformation extends javax.jmdns.impl.DNSQuestion {
        public HostInformation(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
            super(str, dNSRecordType, dNSRecordClass, z);
        }
    }

    public static class Pointer extends javax.jmdns.impl.DNSQuestion {
        public Pointer(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
            super(str, dNSRecordType, dNSRecordClass, z);
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public void addAnswers(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set) {
            java.util.Iterator<javax.jmdns.ServiceInfo> it = jmDNSImpl.getServices().values().iterator();
            while (it.hasNext()) {
                addAnswersForServiceInfo(jmDNSImpl, set, (javax.jmdns.impl.ServiceInfoImpl) it.next());
            }
            if (isServicesDiscoveryMetaQuery()) {
                java.util.Iterator<java.lang.String> it2 = jmDNSImpl.getServiceTypes().keySet().iterator();
                while (it2.hasNext()) {
                    set.add(new javax.jmdns.impl.DNSRecord.Pointer("_services._dns-sd._udp.local.", javax.jmdns.impl.constants.DNSRecordClass.CLASS_IN, false, javax.jmdns.impl.constants.DNSConstants.DNS_TTL, jmDNSImpl.getServiceTypes().get(it2.next()).getType()));
                }
                return;
            }
            if (!isReverseLookup()) {
                isDomainDiscoveryQuery();
                return;
            }
            java.lang.String str = getQualifiedNameMap().get(javax.jmdns.ServiceInfo.Fields.Instance);
            if (str == null || str.length() <= 0) {
                return;
            }
            java.net.InetAddress inetAddress = jmDNSImpl.getLocalHost().getInetAddress();
            if (str.equalsIgnoreCase(inetAddress != null ? inetAddress.getHostAddress() : "")) {
                if (isV4ReverseLookup()) {
                    set.add(jmDNSImpl.getLocalHost().getDNSReverseAddressRecord(javax.jmdns.impl.constants.DNSRecordType.TYPE_A, false, javax.jmdns.impl.constants.DNSConstants.DNS_TTL));
                }
                if (isV6ReverseLookup()) {
                    set.add(jmDNSImpl.getLocalHost().getDNSReverseAddressRecord(javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA, false, javax.jmdns.impl.constants.DNSConstants.DNS_TTL));
                }
            }
        }
    }

    public static class Service extends javax.jmdns.impl.DNSQuestion {
        public Service(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
            super(str, dNSRecordType, dNSRecordClass, z);
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public void addAnswers(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set) {
            java.lang.String lowerCase = getName().toLowerCase();
            if (jmDNSImpl.getLocalHost().getName().equalsIgnoreCase(lowerCase)) {
                set.addAll(jmDNSImpl.getLocalHost().answers(isUnique(), javax.jmdns.impl.constants.DNSConstants.DNS_TTL));
            } else if (jmDNSImpl.getServiceTypes().containsKey(lowerCase)) {
                new javax.jmdns.impl.DNSQuestion.Pointer(getName(), javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR, getRecordClass(), isUnique()).addAnswers(jmDNSImpl, set);
            } else {
                addAnswersForServiceInfo(jmDNSImpl, set, (javax.jmdns.impl.ServiceInfoImpl) jmDNSImpl.getServices().get(lowerCase));
            }
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public boolean iAmTheOnlyOne(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            java.lang.String lowerCase = getName().toLowerCase();
            return jmDNSImpl.getLocalHost().getName().equals(lowerCase) || jmDNSImpl.getServices().keySet().contains(lowerCase);
        }
    }

    public static class Text extends javax.jmdns.impl.DNSQuestion {
        public Text(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
            super(str, dNSRecordType, dNSRecordClass, z);
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public void addAnswers(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set) {
            addAnswersForServiceInfo(jmDNSImpl, set, (javax.jmdns.impl.ServiceInfoImpl) jmDNSImpl.getServices().get(getName().toLowerCase()));
        }

        @Override // javax.jmdns.impl.DNSQuestion
        public boolean iAmTheOnlyOne(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
            java.lang.String lowerCase = getName().toLowerCase();
            return jmDNSImpl.getLocalHost().getName().equals(lowerCase) || jmDNSImpl.getServices().keySet().contains(lowerCase);
        }
    }

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSQuestion.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public DNSQuestion(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
        super(str, dNSRecordType, dNSRecordClass, z);
    }

    public static javax.jmdns.impl.DNSQuestion newQuestion(java.lang.String str, javax.jmdns.impl.constants.DNSRecordType dNSRecordType, javax.jmdns.impl.constants.DNSRecordClass dNSRecordClass, boolean z) {
        int iOrdinal = dNSRecordType.ordinal();
        return iOrdinal != 1 ? iOrdinal != 16 ? iOrdinal != 28 ? iOrdinal != 33 ? iOrdinal != 38 ? iOrdinal != 58 ? iOrdinal != 12 ? iOrdinal != 13 ? new javax.jmdns.impl.DNSQuestion(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.HostInformation(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.Pointer(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.AllRecords(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.DNS6Address(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.Service(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.DNS6Address(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.Text(str, dNSRecordType, dNSRecordClass, z) : new javax.jmdns.impl.DNSQuestion.DNS4Address(str, dNSRecordType, dNSRecordClass, z);
    }

    public void addAnswers(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set) {
    }

    public void addAnswersForServiceInfo(javax.jmdns.impl.JmDNSImpl jmDNSImpl, java.util.Set<javax.jmdns.impl.DNSRecord> set, javax.jmdns.impl.ServiceInfoImpl serviceInfoImpl) {
        if (serviceInfoImpl == null || !serviceInfoImpl.isAnnounced()) {
            return;
        }
        if (getName().equalsIgnoreCase(serviceInfoImpl.getQualifiedName()) || getName().equalsIgnoreCase(serviceInfoImpl.getType())) {
            set.addAll(jmDNSImpl.getLocalHost().answers(true, javax.jmdns.impl.constants.DNSConstants.DNS_TTL));
            set.addAll(serviceInfoImpl.answers(true, javax.jmdns.impl.constants.DNSConstants.DNS_TTL, jmDNSImpl.getLocalHost()));
        }
        if (logger.isLoggable(java.util.logging.Level.FINER)) {
            logger.finer(jmDNSImpl.getName() + " DNSQuestion(" + getName() + ").addAnswersForServiceInfo(): info: " + serviceInfoImpl + "\n" + set);
        }
    }

    public boolean answeredBy(javax.jmdns.impl.DNSEntry dNSEntry) {
        return isSameRecordClass(dNSEntry) && isSameType(dNSEntry) && getName().equals(dNSEntry.getName());
    }

    public boolean iAmTheOnlyOne(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        return false;
    }

    @Override // javax.jmdns.impl.DNSEntry
    public boolean isExpired(long j) {
        return false;
    }

    @Override // javax.jmdns.impl.DNSEntry
    public boolean isStale(long j) {
        return false;
    }

    @Override // javax.jmdns.impl.DNSEntry
    public void toString(java.lang.StringBuilder sb) {
    }
}
