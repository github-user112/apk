package javax.jmdns.impl;

/* loaded from: classes.dex */
public class SocketListener extends java.lang.Thread {
    public static javax.jmdns.JmDNSLogger jmDNSLogger;
    public static java.util.logging.Logger logger;
    public final javax.jmdns.impl.JmDNSImpl _jmDNSImpl;

    static {
        java.util.logging.Logger logger2 = java.util.logging.Logger.getLogger(javax.jmdns.impl.SocketListener.class.getName());
        logger = logger2;
        jmDNSLogger = javax.jmdns.JmDNSLogger.getJmDNSLogger(logger2);
    }

    public SocketListener(javax.jmdns.impl.JmDNSImpl jmDNSImpl) {
        super(e.a.c.a.a.j(e.a.c.a.a.o("SocketListener("), jmDNSImpl != null ? jmDNSImpl.getName() : "", ")"));
        setDaemon(true);
        this._jmDNSImpl = jmDNSImpl;
    }

    public javax.jmdns.impl.JmDNSImpl getDns() {
        return this._jmDNSImpl;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            java.net.DatagramPacket datagramPacket = new java.net.DatagramPacket(new byte[javax.jmdns.impl.constants.DNSConstants.MAX_MSG_ABSOLUTE], javax.jmdns.impl.constants.DNSConstants.MAX_MSG_ABSOLUTE);
            while (!this._jmDNSImpl.isCanceling() && !this._jmDNSImpl.isCanceled()) {
                datagramPacket.setLength(javax.jmdns.impl.constants.DNSConstants.MAX_MSG_ABSOLUTE);
                this._jmDNSImpl.getSocket().receive(datagramPacket);
                if (this._jmDNSImpl.isCanceling() || this._jmDNSImpl.isCanceled() || this._jmDNSImpl.isClosing() || this._jmDNSImpl.isClosed()) {
                    break;
                }
                try {
                    if (!this._jmDNSImpl.getLocalHost().shouldIgnorePacket(datagramPacket)) {
                        javax.jmdns.impl.DNSIncoming dNSIncoming = new javax.jmdns.impl.DNSIncoming(datagramPacket);
                        if (logger.isLoggable(java.util.logging.Level.FINEST)) {
                            logger.finest(getName() + ".run() JmDNS in:" + dNSIncoming.print(true));
                        }
                        if (dNSIncoming.isQuery()) {
                            int port = datagramPacket.getPort();
                            int i = javax.jmdns.impl.constants.DNSConstants.MDNS_PORT;
                            if (port != i) {
                                this._jmDNSImpl.handleQuery(dNSIncoming, datagramPacket.getAddress(), datagramPacket.getPort());
                            }
                            javax.jmdns.impl.JmDNSImpl jmDNSImpl = this._jmDNSImpl;
                            jmDNSImpl.handleQuery(dNSIncoming, jmDNSImpl.getGroup(), i);
                        } else {
                            this._jmDNSImpl.handleResponse(dNSIncoming);
                        }
                    }
                } catch (java.io.IOException e2) {
                    logger.log(java.util.logging.Level.WARNING, getName() + ".run() exception ", (java.lang.Throwable) e2);
                }
            }
        } catch (java.io.IOException e3) {
            if (!this._jmDNSImpl.isCanceling() && !this._jmDNSImpl.isCanceled() && !this._jmDNSImpl.isClosing() && !this._jmDNSImpl.isClosed()) {
                logger.log(java.util.logging.Level.WARNING, getName() + ".run() exception ", (java.lang.Throwable) e3);
                this._jmDNSImpl.recover();
            }
        }
        if (logger.isLoggable(java.util.logging.Level.FINEST)) {
            logger.finest(getName() + ".run() exiting.");
        }
    }
}
