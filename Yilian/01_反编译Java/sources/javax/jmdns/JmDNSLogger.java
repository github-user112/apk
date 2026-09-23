package javax.jmdns;

/* loaded from: classes.dex */
public class JmDNSLogger {
    public static java.util.ArrayList<java.util.logging.Logger> loggers = new java.util.ArrayList<>();
    public static javax.jmdns.JmDNSLogger ecLogger = new javax.jmdns.JmDNSLogger();
    public static java.util.logging.Level logLevel = java.util.logging.Level.FINEST;

    public static javax.jmdns.JmDNSLogger getJmDNSLogger() {
        return ecLogger;
    }

    public static javax.jmdns.JmDNSLogger getJmDNSLogger(java.util.logging.Logger logger) {
        recordLogs(logger);
        return ecLogger;
    }

    public static synchronized void recordLogs(java.util.logging.Logger logger) {
        if (logger != null) {
            try {
                if (!loggers.contains(logger)) {
                    android.util.Log.d(javax.jmdns.impl.constants.DNSConstants.TAG, "JmDNSLogger recordLogs,logger.size=" + loggers.size() + ",logLevel=" + logLevel);
                    loggers.add(logger);
                    logger.setLevel(logLevel);
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static synchronized void setLevel(java.util.logging.Level level) {
        logLevel = level;
        android.util.Log.d(javax.jmdns.impl.constants.DNSConstants.TAG, "JmDNSLogger setLevel,logger.size=" + loggers.size() + ",setLevel=" + level.toString());
        java.util.Iterator<java.util.logging.Logger> it = loggers.iterator();
        while (it.hasNext()) {
            java.util.logging.Logger next = it.next();
            if (next != null) {
                next.setLevel(level);
            }
        }
    }

    public static synchronized void setLogStatus(boolean z) {
        android.util.Log.d(javax.jmdns.impl.constants.DNSConstants.TAG, "JmDNSLogger setLogStatus,logger.size=" + loggers.size() + ",open=" + z);
        java.util.Iterator<java.util.logging.Logger> it = loggers.iterator();
        while (it.hasNext()) {
            java.util.logging.Logger next = it.next();
            if (next != null) {
                next.setLevel(z ? java.util.logging.Level.FINEST : java.util.logging.Level.FINE);
            }
        }
    }
}
