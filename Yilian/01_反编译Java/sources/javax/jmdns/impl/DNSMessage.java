package javax.jmdns.impl;

/* loaded from: classes.dex */
public abstract class DNSMessage {
    public static final boolean MULTICAST = true;
    public static final boolean UNICAST = false;
    public int _flags;
    public int _id;
    public boolean _multicast;
    public final java.util.List<javax.jmdns.impl.DNSQuestion> _questions = java.util.Collections.synchronizedList(new java.util.LinkedList());
    public final java.util.List<javax.jmdns.impl.DNSRecord> _answers = java.util.Collections.synchronizedList(new java.util.LinkedList());
    public final java.util.List<javax.jmdns.impl.DNSRecord> _authoritativeAnswers = java.util.Collections.synchronizedList(new java.util.LinkedList());
    public final java.util.List<javax.jmdns.impl.DNSRecord> _additionals = java.util.Collections.synchronizedList(new java.util.LinkedList());

    public DNSMessage(int i, int i2, boolean z) {
        this._flags = i;
        this._id = i2;
        this._multicast = z;
    }

    public java.util.Collection<? extends javax.jmdns.impl.DNSRecord> getAdditionals() {
        return this._additionals;
    }

    public java.util.Collection<? extends javax.jmdns.impl.DNSRecord> getAllAnswers() {
        java.util.ArrayList arrayList = new java.util.ArrayList(this._additionals.size() + this._authoritativeAnswers.size() + this._answers.size());
        arrayList.addAll(this._answers);
        arrayList.addAll(this._authoritativeAnswers);
        arrayList.addAll(this._additionals);
        return arrayList;
    }

    public java.util.Collection<? extends javax.jmdns.impl.DNSRecord> getAnswers() {
        return this._answers;
    }

    public java.util.Collection<? extends javax.jmdns.impl.DNSRecord> getAuthorities() {
        return this._authoritativeAnswers;
    }

    public int getFlags() {
        return this._flags;
    }

    public int getId() {
        if (this._multicast) {
            return 0;
        }
        return this._id;
    }

    public int getNumberOfAdditionals() {
        return getAdditionals().size();
    }

    public int getNumberOfAnswers() {
        return getAnswers().size();
    }

    public int getNumberOfAuthorities() {
        return getAuthorities().size();
    }

    public int getNumberOfQuestions() {
        return getQuestions().size();
    }

    public java.util.Collection<? extends javax.jmdns.impl.DNSQuestion> getQuestions() {
        return this._questions;
    }

    public boolean isEmpty() {
        return getNumberOfAdditionals() + (getNumberOfAuthorities() + (getNumberOfAnswers() + getNumberOfQuestions())) == 0;
    }

    public boolean isMulticast() {
        return this._multicast;
    }

    public boolean isQuery() {
        return (this._flags & 32768) == 0;
    }

    public boolean isResponse() {
        return (this._flags & 32768) == 32768;
    }

    public boolean isTruncated() {
        return (this._flags & 512) != 0;
    }

    public java.lang.String print() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(200);
        stringBuffer.append(toString());
        stringBuffer.append("\n");
        for (javax.jmdns.impl.DNSQuestion dNSQuestion : this._questions) {
            stringBuffer.append("\tquestion:      ");
            stringBuffer.append(dNSQuestion);
            stringBuffer.append("\n");
        }
        for (javax.jmdns.impl.DNSRecord dNSRecord : this._answers) {
            stringBuffer.append("\tanswer:        ");
            stringBuffer.append(dNSRecord);
            stringBuffer.append("\n");
        }
        for (javax.jmdns.impl.DNSRecord dNSRecord2 : this._authoritativeAnswers) {
            stringBuffer.append("\tauthoritative: ");
            stringBuffer.append(dNSRecord2);
            stringBuffer.append("\n");
        }
        for (javax.jmdns.impl.DNSRecord dNSRecord3 : this._additionals) {
            stringBuffer.append("\tadditional:    ");
            stringBuffer.append(dNSRecord3);
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    public java.lang.String print(byte[] bArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(com.google.android.exoplayer2.audio.Sonic.AMDF_FREQUENCY);
        int length = bArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int iMin = java.lang.Math.min(32, length - i);
            if (i < 16) {
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
            if (i < 256) {
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
            if (i < 4096) {
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
            sb.append(java.lang.Integer.toHexString(i));
            sb.append(':');
            int i2 = 0;
            while (i2 < iMin) {
                if (i2 % 8 == 0) {
                    sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                }
                int i3 = i + i2;
                sb.append(java.lang.Integer.toHexString((bArr[i3] & 240) >> 4));
                sb.append(java.lang.Integer.toHexString((bArr[i3] & com.umeng.analytics.pro.bw.m) >> 0));
                i2++;
            }
            if (i2 < 32) {
                while (i2 < 32) {
                    if (i2 % 8 == 0) {
                        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                    }
                    sb.append("  ");
                    i2++;
                }
            }
            sb.append("    ");
            for (int i4 = 0; i4 < iMin; i4++) {
                if (i4 % 8 == 0) {
                    sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                }
                int i5 = bArr[i + i4] & 255;
                sb.append((i5 <= 32 || i5 >= 127) ? '.' : (char) i5);
            }
            sb.append("\n");
            i += 32;
            if (i >= 2048) {
                sb.append("....\n");
                break;
            }
        }
        return sb.toString();
    }

    public void setFlags(int i) {
        this._flags = i;
    }

    public void setId(int i) {
        this._id = i;
    }
}
