package com.huawei.hms.mlsdk.common;

/* loaded from: classes.dex */
public abstract class MLAnalyzer<T> {
    public java.util.List<com.huawei.hms.mlsdk.common.AnalyzerMonitor> monitors = new java.util.ArrayList();
    public final java.lang.Object syncAnalyzer = new java.lang.Object();
    public com.huawei.hms.mlsdk.common.MLAnalyzer.MLTransactor<T> transactor;

    public interface MLTransactor<T> {
        void destroy();

        void transactResult(com.huawei.hms.mlsdk.common.MLAnalyzer.Result<T> result);
    }

    public static class Result<T> {
        public android.util.SparseArray<T> analyseList;
        public com.huawei.hms.mlsdk.common.MLFrame.Property frameProperty;
        public boolean isAnalyzerAvailable;

        public Result(android.util.SparseArray<T> sparseArray, com.huawei.hms.mlsdk.common.MLFrame.Property property, boolean z) {
            this.analyseList = sparseArray;
            this.frameProperty = property;
            this.isAnalyzerAvailable = z;
        }

        public android.util.SparseArray<T> getAnalyseList() {
            return this.analyseList;
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Property getFrameProperty() {
            return this.frameProperty;
        }

        public boolean isAnalyzerAvaliable() {
            return this.isAnalyzerAvailable;
        }
    }

    public abstract android.util.SparseArray<T> analyseFrame(com.huawei.hms.mlsdk.common.MLFrame mLFrame);

    public void destroy() {
        synchronized (this.syncAnalyzer) {
            if (this.transactor != null) {
                this.transactor.destroy();
                this.transactor = null;
            }
        }
    }

    public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext getFramePropertyExt(com.huawei.hms.mlsdk.common.MLFrame mLFrame) {
        if (mLFrame == null || mLFrame.acquireProperty() == null) {
            return null;
        }
        return mLFrame.acquireProperty().getExt();
    }

    public boolean hasMonitorRegistered() {
        return !this.monitors.isEmpty();
    }

    public boolean isAvailable() {
        return true;
    }

    public void obtainPicture(com.huawei.hms.mlsdk.common.MLFrame mLFrame) {
        synchronized (this.syncAnalyzer) {
            if (this.transactor == null) {
                throw new java.lang.IllegalStateException("Transactor must be specified first to receive detection results.");
            }
            com.huawei.hms.mlsdk.common.MLFrame.Property property = new com.huawei.hms.mlsdk.common.MLFrame.Property(mLFrame.acquireProperty());
            property.resetWidthAndHeight();
            this.transactor.transactResult(new com.huawei.hms.mlsdk.common.MLAnalyzer.Result<>(analyseFrame(mLFrame), property, isAvailable()));
        }
    }

    public void postMonitorEvent(com.huawei.hms.mlsdk.common.internal.client.event.MonitorEvent monitorEvent) {
        for (com.huawei.hms.mlsdk.common.AnalyzerMonitor analyzerMonitor : this.monitors) {
            if (analyzerMonitor != null) {
                analyzerMonitor.receive(monitorEvent);
            }
        }
    }

    public void registerMonitor(com.huawei.hms.mlsdk.common.AnalyzerMonitor analyzerMonitor) {
        this.monitors.add(analyzerMonitor);
    }

    public void setTransactor(com.huawei.hms.mlsdk.common.MLAnalyzer.MLTransactor<T> mLTransactor) {
        synchronized (this.syncAnalyzer) {
            this.transactor = mLTransactor;
        }
    }

    public boolean traceItem(int i) {
        return true;
    }

    public void unregisterMonitor(com.huawei.hms.mlsdk.common.AnalyzerMonitor analyzerMonitor) {
        this.monitors.remove(analyzerMonitor);
    }
}
