package com.google.android.exoplayer2.metadata.emsg;

/* loaded from: classes.dex */
public final class EventMessageEncoder {
    public final java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(512);
    public final java.io.DataOutputStream dataOutputStream = new java.io.DataOutputStream(this.byteArrayOutputStream);

    public static void writeNullTerminatedString(java.io.DataOutputStream dataOutputStream, java.lang.String str) throws java.io.IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] encode(com.google.android.exoplayer2.metadata.emsg.EventMessage eventMessage) throws java.io.IOException {
        this.byteArrayOutputStream.reset();
        try {
            writeNullTerminatedString(this.dataOutputStream, eventMessage.schemeIdUri);
            writeNullTerminatedString(this.dataOutputStream, eventMessage.value != null ? eventMessage.value : "");
            this.dataOutputStream.writeLong(eventMessage.durationMs);
            this.dataOutputStream.writeLong(eventMessage.id);
            this.dataOutputStream.write(eventMessage.messageData);
            this.dataOutputStream.flush();
            return this.byteArrayOutputStream.toByteArray();
        } catch (java.io.IOException e2) {
            throw new java.lang.RuntimeException(e2);
        }
    }
}
