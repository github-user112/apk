package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class UdpDataSource extends com.google.android.exoplayer2.upstream.BaseDataSource {
    public static final int DEFAULT_MAX_PACKET_SIZE = 2000;
    public static final int DEFAULT_SOCKET_TIMEOUT_MILLIS = 8000;
    public static final int UDP_PORT_UNSET = -1;
    public java.net.InetAddress address;
    public java.net.MulticastSocket multicastSocket;
    public boolean opened;
    public final java.net.DatagramPacket packet;
    public final byte[] packetBuffer;
    public int packetRemaining;
    public java.net.DatagramSocket socket;
    public final int socketTimeoutMillis;
    public android.net.Uri uri;

    public static final class UdpDataSourceException extends com.google.android.exoplayer2.upstream.DataSourceException {
        public UdpDataSourceException(java.lang.Throwable th, int i) {
            super(th, i);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    public UdpDataSource(int i) {
        this(i, 8000);
    }

    public UdpDataSource(int i, int i2) {
        super(true);
        this.socketTimeoutMillis = i2;
        this.packetBuffer = new byte[i];
        this.packet = new java.net.DatagramPacket(this.packetBuffer, 0, i);
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public void close() throws java.io.IOException {
        this.uri = null;
        java.net.MulticastSocket multicastSocket = this.multicastSocket;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((java.net.InetAddress) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.address));
            } catch (java.io.IOException unused) {
            }
            this.multicastSocket = null;
        }
        java.net.DatagramSocket datagramSocket = this.socket;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.socket = null;
        }
        this.address = null;
        this.packetRemaining = 0;
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
    }

    public int getLocalPort() {
        java.net.DatagramSocket datagramSocket = this.socket;
        if (datagramSocket == null) {
            return -1;
        }
        return datagramSocket.getLocalPort();
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public android.net.Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.DataSource
    public long open(com.google.android.exoplayer2.upstream.DataSpec dataSpec) throws java.io.IOException {
        android.net.Uri uri = dataSpec.uri;
        this.uri = uri;
        java.lang.String str = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(uri.getHost());
        int port = this.uri.getPort();
        transferInitializing(dataSpec);
        try {
            this.address = java.net.InetAddress.getByName(str);
            java.net.InetSocketAddress inetSocketAddress = new java.net.InetSocketAddress(this.address, port);
            if (this.address.isMulticastAddress()) {
                java.net.MulticastSocket multicastSocket = new java.net.MulticastSocket(inetSocketAddress);
                this.multicastSocket = multicastSocket;
                multicastSocket.joinGroup(this.address);
                this.socket = this.multicastSocket;
            } else {
                this.socket = new java.net.DatagramSocket(inetSocketAddress);
            }
            this.socket.setSoTimeout(this.socketTimeoutMillis);
            this.opened = true;
            transferStarted(dataSpec);
            return -1L;
        } catch (java.io.IOException e2) {
            throw new com.google.android.exoplayer2.upstream.UdpDataSource.UdpDataSourceException(e2, 2001);
        } catch (java.lang.SecurityException e3) {
            throw new com.google.android.exoplayer2.upstream.UdpDataSource.UdpDataSourceException(e3, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_IO_NO_PERMISSION);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.DataReader
    public int read(byte[] bArr, int i, int i2) throws java.io.IOException {
        if (i2 == 0) {
            return 0;
        }
        if (this.packetRemaining == 0) {
            try {
                ((java.net.DatagramSocket) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.socket)).receive(this.packet);
                int length = this.packet.getLength();
                this.packetRemaining = length;
                bytesTransferred(length);
            } catch (java.net.SocketTimeoutException e2) {
                throw new com.google.android.exoplayer2.upstream.UdpDataSource.UdpDataSourceException(e2, 2002);
            } catch (java.io.IOException e3) {
                throw new com.google.android.exoplayer2.upstream.UdpDataSource.UdpDataSourceException(e3, 2001);
            }
        }
        int length2 = this.packet.getLength();
        int i3 = this.packetRemaining;
        int iMin = java.lang.Math.min(i3, i2);
        java.lang.System.arraycopy(this.packetBuffer, length2 - i3, bArr, i, iMin);
        this.packetRemaining -= iMin;
        return iMin;
    }
}
