package javax.jmdns.impl;

/* loaded from: classes.dex */
public interface NameRegister {

    public static class Factory {
        public static volatile javax.jmdns.impl.NameRegister _register;

        public static javax.jmdns.impl.NameRegister getRegistry() {
            if (_register == null) {
                _register = new javax.jmdns.impl.NameRegister.UniqueNamePerInterface();
            }
            return _register;
        }

        public static void setRegistry(javax.jmdns.impl.NameRegister nameRegister) {
            if (_register != null) {
                throw new java.lang.IllegalStateException("The register can only be set once.");
            }
            if (nameRegister != null) {
                _register = nameRegister;
            }
        }
    }

    public enum NameType {
        HOST,
        SERVICE
    }

    public static class UniqueNameAcrossInterface implements javax.jmdns.impl.NameRegister {
        @Override // javax.jmdns.impl.NameRegister
        public boolean checkName(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType) {
            return false;
        }

        @Override // javax.jmdns.impl.NameRegister
        public java.lang.String incrementHostName(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType) {
            return null;
        }

        @Override // javax.jmdns.impl.NameRegister
        public void register(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType) {
        }
    }

    public static class UniqueNamePerInterface implements javax.jmdns.impl.NameRegister {
        @Override // javax.jmdns.impl.NameRegister
        public boolean checkName(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType) {
            return false;
        }

        @Override // javax.jmdns.impl.NameRegister
        public java.lang.String incrementHostName(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType) {
            return null;
        }

        @Override // javax.jmdns.impl.NameRegister
        public void register(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType) {
        }
    }

    boolean checkName(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType);

    java.lang.String incrementHostName(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType);

    void register(java.net.InetAddress inetAddress, java.lang.String str, javax.jmdns.impl.NameRegister.NameType nameType);
}
