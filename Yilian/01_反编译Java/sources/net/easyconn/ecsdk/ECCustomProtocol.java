package net.easyconn.ecsdk;

/* loaded from: classes.dex */
public abstract class ECCustomProtocol {

    public static class ECCustomData {
        public int cmdType = 0;
        public int reqSeq = 0;
        public int rspSeq = 0;
        public byte[] data = null;

        public int getCmdType() {
            return this.cmdType;
        }

        public byte[] getData() {
            return this.data;
        }

        public int getReqSeq() {
            return this.reqSeq;
        }

        public int getRspSeq() {
            return this.rspSeq;
        }

        public void setCmdType(int i) {
            this.cmdType = i;
        }

        public void setData(byte[] bArr) {
            this.data = bArr;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            java.lang.StringBuilder sbO = e.a.c.a.a.o("cmdType=");
            sbO.append(this.cmdType);
            sb.append(sbO.toString());
            sb.append(", reqSeq=" + this.reqSeq);
            sb.append(", rspSeq=" + this.rspSeq);
            sb.append(", data=" + this.data);
            return sb.toString();
        }
    }

    public interface ICustomDataReceiver {
        void onReceive(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData);
    }

    public interface ICustomDataResponse {
        void onError(int i, int i2, java.lang.String str);

        void onReceive(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData);

        void onTimeout(int i);
    }

    public abstract int registerCustomDataReceiver(net.easyconn.ecsdk.ECCustomProtocol.ICustomDataReceiver iCustomDataReceiver);

    public abstract int replyCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData, int i);

    public abstract int sendCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData);

    public abstract int sendCustomData(net.easyconn.ecsdk.ECCustomProtocol.ECCustomData eCCustomData, int i, net.easyconn.ecsdk.ECCustomProtocol.ICustomDataResponse iCustomDataResponse);
}
