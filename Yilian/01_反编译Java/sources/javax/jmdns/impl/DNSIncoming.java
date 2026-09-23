package javax.jmdns.impl;

/* loaded from: classes.dex */
public final class DNSIncoming extends javax.jmdns.impl.DNSMessage {
    public static boolean USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET;
    public static final char[] _nibbleToHex;
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public final javax.jmdns.impl.DNSIncoming.MessageInputStream _messageInputStream;
    public final java.net.DatagramPacket _packet;
    public final long _receivedTime;
    public int _senderUDPPayload;

    /* renamed from: javax.jmdns.impl.DNSIncoming$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$javax$jmdns$impl$constants$DNSLabel;
        public static final /* synthetic */ int[] $SwitchMap$javax$jmdns$impl$constants$DNSOptionCode;
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
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType2 = javax.jmdns.impl.constants.DNSRecordType.TYPE_AAAA;
                iArr2[28] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType3 = javax.jmdns.impl.constants.DNSRecordType.TYPE_CNAME;
                iArr3[5] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType4 = javax.jmdns.impl.constants.DNSRecordType.TYPE_PTR;
                iArr4[12] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType5 = javax.jmdns.impl.constants.DNSRecordType.TYPE_TXT;
                iArr5[16] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType6 = javax.jmdns.impl.constants.DNSRecordType.TYPE_SRV;
                iArr6[33] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType7 = javax.jmdns.impl.constants.DNSRecordType.TYPE_HINFO;
                iArr7[13] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$javax$jmdns$impl$constants$DNSRecordType;
                javax.jmdns.impl.constants.DNSRecordType dNSRecordType8 = javax.jmdns.impl.constants.DNSRecordType.TYPE_OPT;
                iArr8[41] = 8;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            int[] iArr9 = new int[javax.jmdns.impl.constants.DNSOptionCode.values().length];
            $SwitchMap$javax$jmdns$impl$constants$DNSOptionCode = iArr9;
            try {
                javax.jmdns.impl.constants.DNSOptionCode dNSOptionCode = javax.jmdns.impl.constants.DNSOptionCode.Owner;
                iArr9[4] = 1;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = $SwitchMap$javax$jmdns$impl$constants$DNSOptionCode;
                javax.jmdns.impl.constants.DNSOptionCode dNSOptionCode2 = javax.jmdns.impl.constants.DNSOptionCode.LLQ;
                iArr10[1] = 2;
            } catch (java.lang.NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = $SwitchMap$javax$jmdns$impl$constants$DNSOptionCode;
                javax.jmdns.impl.constants.DNSOptionCode dNSOptionCode3 = javax.jmdns.impl.constants.DNSOptionCode.NSID;
                iArr11[3] = 3;
            } catch (java.lang.NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = $SwitchMap$javax$jmdns$impl$constants$DNSOptionCode;
                javax.jmdns.impl.constants.DNSOptionCode dNSOptionCode4 = javax.jmdns.impl.constants.DNSOptionCode.UL;
                iArr12[2] = 4;
            } catch (java.lang.NoSuchFieldError unused12) {
            }
            try {
                int[] iArr13 = $SwitchMap$javax$jmdns$impl$constants$DNSOptionCode;
                javax.jmdns.impl.constants.DNSOptionCode dNSOptionCode5 = javax.jmdns.impl.constants.DNSOptionCode.Unknown;
                iArr13[0] = 5;
            } catch (java.lang.NoSuchFieldError unused13) {
            }
            int[] iArr14 = new int[javax.jmdns.impl.constants.DNSLabel.values().length];
            $SwitchMap$javax$jmdns$impl$constants$DNSLabel = iArr14;
            try {
                javax.jmdns.impl.constants.DNSLabel dNSLabel = javax.jmdns.impl.constants.DNSLabel.Standard;
                iArr14[1] = 1;
            } catch (java.lang.NoSuchFieldError unused14) {
            }
            try {
                int[] iArr15 = $SwitchMap$javax$jmdns$impl$constants$DNSLabel;
                javax.jmdns.impl.constants.DNSLabel dNSLabel2 = javax.jmdns.impl.constants.DNSLabel.Compressed;
                iArr15[2] = 2;
            } catch (java.lang.NoSuchFieldError unused15) {
            }
            try {
                int[] iArr16 = $SwitchMap$javax$jmdns$impl$constants$DNSLabel;
                javax.jmdns.impl.constants.DNSLabel dNSLabel3 = javax.jmdns.impl.constants.DNSLabel.Extended;
                iArr16[3] = 3;
            } catch (java.lang.NoSuchFieldError unused16) {
            }
            try {
                int[] iArr17 = $SwitchMap$javax$jmdns$impl$constants$DNSLabel;
                javax.jmdns.impl.constants.DNSLabel dNSLabel4 = javax.jmdns.impl.constants.DNSLabel.Unknown;
                iArr17[0] = 4;
            } catch (java.lang.NoSuchFieldError unused17) {
            }
        }
    }

    public static class MessageInputStream extends java.io.ByteArrayInputStream {
        public static javax.jmdns.JmDNSLogger jmDNSLogger;
        public static java.util.logging.Logger logger1;
        public final java.util.Map<java.lang.Integer, java.lang.String> _names;

        static {
            java.util.logging.Logger logger = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSIncoming.MessageInputStream.class.getName());
            logger1 = logger;
            jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger);
        }

        public MessageInputStream(byte[] bArr, int i) {
            this(bArr, 0, i);
        }

        public MessageInputStream(byte[] bArr, int i, int i2) {
            super(bArr, i, i2);
            this._names = new java.util.HashMap();
        }

        public synchronized int peek() {
            int i;
            i = ((java.io.ByteArrayInputStream) this).pos;
            return i < ((java.io.ByteArrayInputStream) this).count ? ((java.io.ByteArrayInputStream) this).buf[i] & 255 : -1;
        }

        public int readByte() {
            return read();
        }

        public byte[] readBytes(int i) {
            byte[] bArr = new byte[i];
            read(bArr, 0, i);
            return bArr;
        }

        public int readInt() {
            return (readUnsignedShort() << 16) | readUnsignedShort();
        }

        public java.lang.String readName() {
            java.util.HashMap map = new java.util.HashMap();
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            boolean z = false;
            while (!z) {
                int i = read();
                if (i == 0) {
                    break;
                }
                int i2 = javax.jmdns.impl.DNSIncoming.AnonymousClass1.$SwitchMap$javax$jmdns$impl$constants$DNSLabel[javax.jmdns.impl.constants.DNSLabel.labelForByte(i).ordinal()];
                if (i2 == 1) {
                    int i3 = ((java.io.ByteArrayInputStream) this).pos - 1;
                    java.lang.String str = readUTF(i) + ".";
                    sb.append(str);
                    java.util.Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        ((java.lang.StringBuilder) it.next()).append(str);
                    }
                    map.put(java.lang.Integer.valueOf(i3), new java.lang.StringBuilder(str));
                } else if (i2 == 2) {
                    int iLabelValue = (javax.jmdns.impl.constants.DNSLabel.labelValue(i) << 8) | read();
                    java.lang.String str2 = this._names.get(java.lang.Integer.valueOf(iLabelValue));
                    if (str2 == null) {
                        java.util.logging.Logger logger = logger1;
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("bad domain name: possible circular name detected. Bad offset: 0x");
                        sbO.append(java.lang.Integer.toHexString(iLabelValue));
                        sbO.append(" at 0x");
                        sbO.append(java.lang.Integer.toHexString(((java.io.ByteArrayInputStream) this).pos - 2));
                        logger.severe(sbO.toString());
                        str2 = "";
                    }
                    sb.append(str2);
                    java.util.Iterator it2 = map.values().iterator();
                    while (it2.hasNext()) {
                        ((java.lang.StringBuilder) it2.next()).append(str2);
                    }
                    z = true;
                } else if (i2 != 3) {
                    java.util.logging.Logger logger2 = logger1;
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("unsupported dns label type: '");
                    sbO2.append(java.lang.Integer.toHexString(i & 192));
                    sbO2.append("'");
                    logger2.severe(sbO2.toString());
                } else {
                    logger1.severe("Extended label are not currently supported.");
                }
            }
            for (java.lang.Integer num : map.keySet()) {
                this._names.put(num, ((java.lang.StringBuilder) map.get(num)).toString());
            }
            return sb.toString();
        }

        public java.lang.String readNonNameString() {
            return readUTF(read());
        }

        public java.lang.String readUTF(int i) {
            int i2;
            int i3;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(i);
            int i4 = 0;
            while (i4 < i) {
                int i5 = read();
                switch (i5 >> 4) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        break;
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    default:
                        i2 = (i5 & 63) << 4;
                        i3 = read() & 15;
                        i5 = i2 | i3;
                        i4++;
                        break;
                    case 12:
                    case 13:
                        i2 = (i5 & 31) << 6;
                        i3 = read() & 63;
                        i5 = i2 | i3;
                        i4++;
                        break;
                    case 14:
                        i5 = ((i5 & 15) << 12) | ((read() & 63) << 6) | (read() & 63);
                        i4++;
                        i4++;
                        break;
                }
                sb.append((char) i5);
                i4++;
            }
            return sb.toString();
        }

        public int readUnsignedShort() {
            return (read() << 8) | read();
        }
    }

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.DNSIncoming.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
        USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET = true;
        _nibbleToHex = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public DNSIncoming(int i, int i2, boolean z, java.net.DatagramPacket datagramPacket, long j) {
        super(i, i2, z);
        this._packet = datagramPacket;
        this._messageInputStream = new javax.jmdns.impl.DNSIncoming.MessageInputStream(datagramPacket.getData(), datagramPacket.getLength());
        this._receivedTime = j;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DNSIncoming(java.net.DatagramPacket datagramPacket) throws java.io.IOException {
        super(0, 0, datagramPacket.getPort() == javax.jmdns.impl.constants.DNSConstants.MDNS_PORT);
        this._packet = datagramPacket;
        java.net.InetAddress address = datagramPacket.getAddress();
        javax.jmdns.impl.DNSIncoming.MessageInputStream messageInputStream = new javax.jmdns.impl.DNSIncoming.MessageInputStream(datagramPacket.getData(), datagramPacket.getLength());
        this._messageInputStream = messageInputStream;
        this._receivedTime = java.lang.System.currentTimeMillis();
        this._senderUDPPayload = javax.jmdns.impl.constants.DNSConstants.MAX_MSG_TYPICAL;
        try {
            setId(messageInputStream.readUnsignedShort());
            setFlags(messageInputStream.readUnsignedShort());
            int unsignedShort = messageInputStream.readUnsignedShort();
            int unsignedShort2 = messageInputStream.readUnsignedShort();
            int unsignedShort3 = messageInputStream.readUnsignedShort();
            int unsignedShort4 = messageInputStream.readUnsignedShort();
            if (unsignedShort > 0) {
                for (int i = 0; i < unsignedShort; i++) {
                    this._questions.add(readQuestion());
                }
            }
            if (unsignedShort2 > 0) {
                for (int i2 = 0; i2 < unsignedShort2; i2++) {
                    javax.jmdns.impl.DNSRecord answer = readAnswer(address);
                    if (answer != null) {
                        this._answers.add(answer);
                    }
                }
            }
            if (unsignedShort3 > 0) {
                for (int i3 = 0; i3 < unsignedShort3; i3++) {
                    javax.jmdns.impl.DNSRecord answer2 = readAnswer(address);
                    if (answer2 != null) {
                        this._authoritativeAnswers.add(answer2);
                    }
                }
            }
            if (unsignedShort4 > 0) {
                for (int i4 = 0; i4 < unsignedShort4; i4++) {
                    javax.jmdns.impl.DNSRecord answer3 = readAnswer(address);
                    if (answer3 != null) {
                        this._additionals.add(answer3);
                    }
                }
            }
        } catch (java.lang.Exception e2) {
            java.util.logging.Logger logger2 = logger;
            java.util.logging.Level level = java.util.logging.Level.WARNING;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("DNSIncoming() dump ");
            sbO.append(print(true));
            sbO.append("\n exception ");
            logger2.log(level, sbO.toString(), (java.lang.Throwable) e2);
            java.io.IOException iOException = new java.io.IOException("DNSIncoming corrupted message");
            iOException.initCause(e2);
            throw iOException;
        }
    }

    private java.lang.String _hexString(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            char[] cArr = _nibbleToHex;
            sb.append(cArr[i / 16]);
            sb.append(cArr[i % 16]);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0233  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private javax.jmdns.impl.DNSRecord readAnswer(java.net.InetAddress r19) {
        /*
            Method dump skipped, instructions count: 939
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.jmdns.impl.DNSIncoming.readAnswer(java.net.InetAddress):javax.jmdns.impl.DNSRecord");
    }

    private javax.jmdns.impl.DNSQuestion readQuestion() {
        java.lang.String name = this._messageInputStream.readName();
        javax.jmdns.impl.constants.DNSRecordType dNSRecordTypeTypeForIndex = javax.jmdns.impl.constants.DNSRecordType.typeForIndex(this._messageInputStream.readUnsignedShort());
        if (dNSRecordTypeTypeForIndex == javax.jmdns.impl.constants.DNSRecordType.TYPE_IGNORE) {
            java.util.logging.Logger logger2 = logger;
            java.util.logging.Level level = java.util.logging.Level.SEVERE;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Could not find record type: ");
            sbO.append(print(true));
            logger2.log(level, sbO.toString());
        }
        int unsignedShort = this._messageInputStream.readUnsignedShort();
        javax.jmdns.impl.constants.DNSRecordClass dNSRecordClassClassForIndex = javax.jmdns.impl.constants.DNSRecordClass.classForIndex(unsignedShort);
        return javax.jmdns.impl.DNSQuestion.newQuestion(name, dNSRecordTypeTypeForIndex, dNSRecordClassClassForIndex, dNSRecordClassClassForIndex.isUnique(unsignedShort));
    }

    public void append(javax.jmdns.impl.DNSIncoming dNSIncoming) {
        if (!isQuery() || !isTruncated() || !dNSIncoming.isQuery()) {
            throw new java.lang.IllegalArgumentException();
        }
        this._questions.addAll(dNSIncoming.getQuestions());
        this._answers.addAll(dNSIncoming.getAnswers());
        this._authoritativeAnswers.addAll(dNSIncoming.getAuthorities());
        this._additionals.addAll(dNSIncoming.getAdditionals());
    }

    public javax.jmdns.impl.DNSIncoming clone() {
        javax.jmdns.impl.DNSIncoming dNSIncoming = new javax.jmdns.impl.DNSIncoming(getFlags(), getId(), isMulticast(), this._packet, this._receivedTime);
        dNSIncoming._senderUDPPayload = this._senderUDPPayload;
        dNSIncoming._questions.addAll(this._questions);
        dNSIncoming._answers.addAll(this._answers);
        dNSIncoming._authoritativeAnswers.addAll(this._authoritativeAnswers);
        dNSIncoming._additionals.addAll(this._additionals);
        return dNSIncoming;
    }

    public int elapseSinceArrival() {
        return (int) (java.lang.System.currentTimeMillis() - this._receivedTime);
    }

    public int getSenderUDPPayload() {
        return this._senderUDPPayload;
    }

    public java.lang.String print(boolean z) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(print());
        if (z) {
            int length = this._packet.getLength();
            byte[] bArr = new byte[length];
            java.lang.System.arraycopy(this._packet.getData(), 0, bArr, 0, length);
            sb.append(print(bArr));
        }
        return sb.toString();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(isQuery() ? "dns[query," : "dns[response,");
        if (this._packet.getAddress() != null) {
            sb.append(this._packet.getAddress().getHostAddress());
        }
        sb.append(':');
        sb.append(this._packet.getPort());
        sb.append(", length=");
        sb.append(this._packet.getLength());
        sb.append(", id=0x");
        sb.append(java.lang.Integer.toHexString(getId()));
        if (getFlags() != 0) {
            sb.append(", flags=0x");
            sb.append(java.lang.Integer.toHexString(getFlags()));
            if ((getFlags() & 32768) != 0) {
                sb.append(":r");
            }
            if ((getFlags() & 1024) != 0) {
                sb.append(":aa");
            }
            if ((getFlags() & 512) != 0) {
                sb.append(":tc");
            }
        }
        if (getNumberOfQuestions() > 0) {
            sb.append(", questions=");
            sb.append(getNumberOfQuestions());
        }
        if (getNumberOfAnswers() > 0) {
            sb.append(", answers=");
            sb.append(getNumberOfAnswers());
        }
        if (getNumberOfAuthorities() > 0) {
            sb.append(", authorities=");
            sb.append(getNumberOfAuthorities());
        }
        if (getNumberOfAdditionals() > 0) {
            sb.append(", additionals=");
            sb.append(getNumberOfAdditionals());
        }
        if (getNumberOfQuestions() > 0) {
            sb.append("\nquestions:");
            for (javax.jmdns.impl.DNSQuestion dNSQuestion : this._questions) {
                sb.append("\n\t");
                sb.append(dNSQuestion);
            }
        }
        if (getNumberOfAnswers() > 0) {
            sb.append("\nanswers:");
            for (javax.jmdns.impl.DNSRecord dNSRecord : this._answers) {
                sb.append("\n\t");
                sb.append(dNSRecord);
            }
        }
        if (getNumberOfAuthorities() > 0) {
            sb.append("\nauthorities:");
            for (javax.jmdns.impl.DNSRecord dNSRecord2 : this._authoritativeAnswers) {
                sb.append("\n\t");
                sb.append(dNSRecord2);
            }
        }
        if (getNumberOfAdditionals() > 0) {
            sb.append("\nadditionals:");
            for (javax.jmdns.impl.DNSRecord dNSRecord3 : this._additionals) {
                sb.append("\n\t");
                sb.append(dNSRecord3);
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
