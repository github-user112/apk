package javax.jmdns.impl;

/* loaded from: classes.dex */
public final class DNSOutgoing extends javax.jmdns.impl.DNSMessage {
    public static final int HEADER_SIZE = 12;
    public static boolean USE_DOMAIN_NAME_COMPRESSION = true;
    public final javax.jmdns.impl.DNSOutgoing.MessageOutputStream _additionalsAnswersBytes;
    public final javax.jmdns.impl.DNSOutgoing.MessageOutputStream _answersBytes;
    public final javax.jmdns.impl.DNSOutgoing.MessageOutputStream _authoritativeAnswersBytes;
    public int _maxUDPPayload;
    public java.util.Map<java.lang.String, java.lang.Integer> _names;
    public final javax.jmdns.impl.DNSOutgoing.MessageOutputStream _questionsBytes;

    public static class MessageOutputStream extends java.io.ByteArrayOutputStream {
        public final int _offset;
        public final javax.jmdns.impl.DNSOutgoing _out;

        public MessageOutputStream(int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing) {
            this(i, dNSOutgoing, 0);
        }

        public MessageOutputStream(int i, javax.jmdns.impl.DNSOutgoing dNSOutgoing, int i2) {
            super(i);
            this._out = dNSOutgoing;
            this._offset = i2;
        }

        public void writeByte(int i) {
            write(i & 255);
        }

        public void writeBytes(java.lang.String str, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                writeByte(str.charAt(i + i3));
            }
        }

        @Override // java.io.ByteArrayOutputStream
        public void writeBytes(byte[] bArr) {
            if (bArr != null) {
                writeBytes(bArr, 0, bArr.length);
            }
        }

        public void writeBytes(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                writeByte(bArr[i + i3]);
            }
        }

        public void writeInt(int i) {
            writeShort(i >> 16);
            writeShort(i);
        }

        public void writeName(java.lang.String str) {
            writeName(str, true);
        }

        public void writeName(java.lang.String str, boolean z) {
            while (true) {
                int iIndexOf = str.indexOf(46);
                if (iIndexOf < 0) {
                    iIndexOf = str.length();
                }
                if (iIndexOf <= 0) {
                    writeByte(0);
                    return;
                }
                java.lang.String strSubstring = str.substring(0, iIndexOf);
                if (z && javax.jmdns.impl.DNSOutgoing.USE_DOMAIN_NAME_COMPRESSION) {
                    java.lang.Integer num = this._out._names.get(str);
                    if (num != null) {
                        int iIntValue = num.intValue();
                        writeByte((iIntValue >> 8) | 192);
                        writeByte(iIntValue & 255);
                        return;
                    }
                    this._out._names.put(str, java.lang.Integer.valueOf(size() + this._offset));
                }
                writeUTF(strSubstring, 0, strSubstring.length());
                str = str.substring(iIndexOf);
                if (str.startsWith(".")) {
                    str = str.substring(1);
                }
            }
        }

        public void writeQuestion(javax.jmdns.impl.DNSQuestion dNSQuestion) {
            writeName(dNSQuestion.getName());
            writeShort(dNSQuestion.getRecordType().indexValue());
            writeShort(dNSQuestion.getRecordClass().indexValue());
        }

        public void writeRecord(javax.jmdns.impl.DNSRecord dNSRecord, long j) {
            writeName(dNSRecord.getName());
            writeShort(dNSRecord.getRecordType().indexValue());
            writeShort(dNSRecord.getRecordClass().indexValue() | ((dNSRecord.isUnique() && this._out.isMulticast()) ? 32768 : 0));
            writeInt(j == 0 ? dNSRecord.getTTL() : dNSRecord.getRemainingTTL(j));
            javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(512, this._out, size() + this._offset + 2);
            dNSRecord.write(messageOutputStream);
            byte[] byteArray = messageOutputStream.toByteArray();
            writeShort(byteArray.length);
            write(byteArray, 0, byteArray.length);
        }

        public void writeShort(int i) {
            writeByte(i >> 8);
            writeByte(i);
        }

        public void writeUTF(java.lang.String str, int i, int i2) {
            int i3;
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                char cCharAt = str.charAt(i + i5);
                i4 = (cCharAt < 1 || cCharAt > 127) ? cCharAt > 2047 ? i4 + 3 : i4 + 2 : i4 + 1;
            }
            writeByte(i4);
            for (int i6 = 0; i6 < i2; i6++) {
                int iCharAt = str.charAt(i + i6);
                if (iCharAt < 1 || iCharAt > 127) {
                    if (iCharAt > 2047) {
                        writeByte(((iCharAt >> 12) & 15) | 224);
                        i3 = ((iCharAt >> 6) & 63) | 128;
                    } else {
                        i3 = ((iCharAt >> 6) & 31) | 192;
                    }
                    writeByte(i3);
                    iCharAt = ((iCharAt >> 0) & 63) | 128;
                }
                writeByte(iCharAt);
            }
        }
    }

    public DNSOutgoing(int i) {
        this(i, true, javax.jmdns.impl.constants.DNSConstants.MAX_MSG_TYPICAL);
    }

    public DNSOutgoing(int i, boolean z) {
        this(i, z, javax.jmdns.impl.constants.DNSConstants.MAX_MSG_TYPICAL);
    }

    public DNSOutgoing(int i, boolean z, int i2) {
        super(i, 0, z);
        this._names = new java.util.HashMap();
        this._maxUDPPayload = i2 > 0 ? i2 : javax.jmdns.impl.constants.DNSConstants.MAX_MSG_TYPICAL;
        this._questionsBytes = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(i2, this);
        this._answersBytes = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(i2, this);
        this._authoritativeAnswersBytes = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(i2, this);
        this._additionalsAnswersBytes = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(i2, this);
    }

    public void addAdditionalAnswer(javax.jmdns.impl.DNSIncoming dNSIncoming, javax.jmdns.impl.DNSRecord dNSRecord) throws java.io.IOException {
        javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(512, this);
        try {
            messageOutputStream.writeRecord(dNSRecord, 0L);
            byte[] byteArray = messageOutputStream.toByteArray();
            if (byteArray.length >= availableSpace()) {
                throw new java.io.IOException("message full");
            }
            this._additionals.add(dNSRecord);
            this._additionalsAnswersBytes.write(byteArray, 0, byteArray.length);
        } finally {
            messageOutputStream.close();
        }
    }

    public void addAnswer(javax.jmdns.impl.DNSIncoming dNSIncoming, javax.jmdns.impl.DNSRecord dNSRecord) {
        if (dNSIncoming == null || !dNSRecord.suppressedBy(dNSIncoming)) {
            addAnswer(dNSRecord, 0L);
        }
    }

    public void addAnswer(javax.jmdns.impl.DNSRecord dNSRecord, long j) throws java.io.IOException {
        if (dNSRecord != null) {
            if (j == 0 || !dNSRecord.isExpired(j)) {
                javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(512, this);
                try {
                    messageOutputStream.writeRecord(dNSRecord, j);
                    byte[] byteArray = messageOutputStream.toByteArray();
                    if (byteArray.length >= availableSpace()) {
                        throw new java.io.IOException("message full");
                    }
                    this._answers.add(dNSRecord);
                    this._answersBytes.write(byteArray, 0, byteArray.length);
                } finally {
                    messageOutputStream.close();
                }
            }
        }
    }

    public void addAuthorativeAnswer(javax.jmdns.impl.DNSRecord dNSRecord) throws java.io.IOException {
        javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(512, this);
        try {
            messageOutputStream.writeRecord(dNSRecord, 0L);
            byte[] byteArray = messageOutputStream.toByteArray();
            if (byteArray.length >= availableSpace()) {
                throw new java.io.IOException("message full");
            }
            this._authoritativeAnswers.add(dNSRecord);
            this._authoritativeAnswersBytes.write(byteArray, 0, byteArray.length);
        } finally {
            messageOutputStream.close();
        }
    }

    public void addQuestion(javax.jmdns.impl.DNSQuestion dNSQuestion) throws java.io.IOException {
        javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(512, this);
        try {
            messageOutputStream.writeQuestion(dNSQuestion);
            byte[] byteArray = messageOutputStream.toByteArray();
            if (byteArray.length >= availableSpace()) {
                throw new java.io.IOException("message full");
            }
            this._questions.add(dNSQuestion);
            this._questionsBytes.write(byteArray, 0, byteArray.length);
        } finally {
            messageOutputStream.close();
        }
    }

    public int availableSpace() {
        return ((((this._maxUDPPayload - 12) - this._questionsBytes.size()) - this._answersBytes.size()) - this._authoritativeAnswersBytes.size()) - this._additionalsAnswersBytes.size();
    }

    public byte[] data() {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        this._names.clear();
        javax.jmdns.impl.DNSOutgoing.MessageOutputStream messageOutputStream = new javax.jmdns.impl.DNSOutgoing.MessageOutputStream(this._maxUDPPayload, this);
        try {
            messageOutputStream.writeShort(this._multicast ? 0 : getId());
            messageOutputStream.writeShort(getFlags());
            messageOutputStream.writeShort(getNumberOfQuestions());
            messageOutputStream.writeShort(getNumberOfAnswers());
            messageOutputStream.writeShort(getNumberOfAuthorities());
            messageOutputStream.writeShort(getNumberOfAdditionals());
            java.util.Iterator<javax.jmdns.impl.DNSQuestion> it = this._questions.iterator();
            while (it.hasNext()) {
                messageOutputStream.writeQuestion(it.next());
            }
            java.util.Iterator<javax.jmdns.impl.DNSRecord> it2 = this._answers.iterator();
            while (it2.hasNext()) {
                messageOutputStream.writeRecord(it2.next(), jCurrentTimeMillis);
            }
            java.util.Iterator<javax.jmdns.impl.DNSRecord> it3 = this._authoritativeAnswers.iterator();
            while (it3.hasNext()) {
                messageOutputStream.writeRecord(it3.next(), jCurrentTimeMillis);
            }
            java.util.Iterator<javax.jmdns.impl.DNSRecord> it4 = this._additionals.iterator();
            while (it4.hasNext()) {
                messageOutputStream.writeRecord(it4.next(), jCurrentTimeMillis);
            }
            byte[] byteArray = messageOutputStream.toByteArray();
            try {
                messageOutputStream.close();
            } catch (java.io.IOException unused) {
            }
            return byteArray;
        } catch (java.lang.Throwable th) {
            try {
                messageOutputStream.close();
            } catch (java.io.IOException unused2) {
            }
            throw th;
        }
    }

    public int getMaxUDPPayload() {
        return this._maxUDPPayload;
    }

    @Override // javax.jmdns.impl.DNSMessage
    public boolean isQuery() {
        return (getFlags() & 32768) == 0;
    }

    public java.lang.String print(boolean z) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(print());
        if (z) {
            sb.append(print(data()));
        }
        return sb.toString();
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        stringBuffer.append(isQuery() ? "dns[query:" : "dns[response:");
        stringBuffer.append(" id=0x");
        stringBuffer.append(java.lang.Integer.toHexString(getId()));
        if (getFlags() != 0) {
            stringBuffer.append(", flags=0x");
            stringBuffer.append(java.lang.Integer.toHexString(getFlags()));
            if ((getFlags() & 32768) != 0) {
                stringBuffer.append(":r");
            }
            if ((getFlags() & 1024) != 0) {
                stringBuffer.append(":aa");
            }
            if ((getFlags() & 512) != 0) {
                stringBuffer.append(":tc");
            }
        }
        if (getNumberOfQuestions() > 0) {
            stringBuffer.append(", questions=");
            stringBuffer.append(getNumberOfQuestions());
        }
        if (getNumberOfAnswers() > 0) {
            stringBuffer.append(", answers=");
            stringBuffer.append(getNumberOfAnswers());
        }
        if (getNumberOfAuthorities() > 0) {
            stringBuffer.append(", authorities=");
            stringBuffer.append(getNumberOfAuthorities());
        }
        if (getNumberOfAdditionals() > 0) {
            stringBuffer.append(", additionals=");
            stringBuffer.append(getNumberOfAdditionals());
        }
        if (getNumberOfQuestions() > 0) {
            stringBuffer.append("\nquestions:");
            for (javax.jmdns.impl.DNSQuestion dNSQuestion : this._questions) {
                stringBuffer.append("\n\t");
                stringBuffer.append(dNSQuestion);
            }
        }
        if (getNumberOfAnswers() > 0) {
            stringBuffer.append("\nanswers:");
            for (javax.jmdns.impl.DNSRecord dNSRecord : this._answers) {
                stringBuffer.append("\n\t");
                stringBuffer.append(dNSRecord);
            }
        }
        if (getNumberOfAuthorities() > 0) {
            stringBuffer.append("\nauthorities:");
            for (javax.jmdns.impl.DNSRecord dNSRecord2 : this._authoritativeAnswers) {
                stringBuffer.append("\n\t");
                stringBuffer.append(dNSRecord2);
            }
        }
        if (getNumberOfAdditionals() > 0) {
            stringBuffer.append("\nadditionals:");
            for (javax.jmdns.impl.DNSRecord dNSRecord3 : this._additionals) {
                stringBuffer.append("\n\t");
                stringBuffer.append(dNSRecord3);
            }
        }
        stringBuffer.append("\nnames=");
        stringBuffer.append(this._names);
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
