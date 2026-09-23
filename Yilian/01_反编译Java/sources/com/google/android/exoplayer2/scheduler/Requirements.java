package com.google.android.exoplayer2.scheduler;

/* loaded from: classes.dex */
public final class Requirements implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.google.android.exoplayer2.scheduler.Requirements> CREATOR = new android.os.Parcelable.Creator<com.google.android.exoplayer2.scheduler.Requirements>() { // from class: com.google.android.exoplayer2.scheduler.Requirements.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.scheduler.Requirements createFromParcel(android.os.Parcel parcel) {
            return new com.google.android.exoplayer2.scheduler.Requirements(parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.google.android.exoplayer2.scheduler.Requirements[] newArray(int i) {
            return new com.google.android.exoplayer2.scheduler.Requirements[i];
        }
    };
    public static final int DEVICE_CHARGING = 8;
    public static final int DEVICE_IDLE = 4;
    public static final int DEVICE_STORAGE_NOT_LOW = 16;
    public static final int NETWORK = 1;
    public static final int NETWORK_UNMETERED = 2;
    public final int requirements;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface RequirementFlags {
    }

    public Requirements(int i) {
        this.requirements = (i & 2) != 0 ? i | 1 : i;
    }

    private int getNotMetNetworkRequirements(android.content.Context context) {
        if (!isNetworkRequired()) {
            return 0;
        }
        android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) com.google.android.exoplayer2.util.Assertions.checkNotNull(context.getSystemService("connectivity"));
        android.net.NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo != null && activeNetworkInfo.isConnected() && isInternetConnectivityValidated(connectivityManager)) ? (isUnmeteredNetworkRequired() && connectivityManager.isActiveNetworkMetered()) ? 2 : 0 : this.requirements & 3;
    }

    private boolean isDeviceCharging(android.content.Context context) {
        android.content.Intent intentRegisterReceiver = context.registerReceiver(null, new android.content.IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            return false;
        }
        int intExtra = intentRegisterReceiver.getIntExtra(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS, -1);
        return intExtra == 2 || intExtra == 5;
    }

    private boolean isDeviceIdle(android.content.Context context) {
        android.os.PowerManager powerManager = (android.os.PowerManager) com.google.android.exoplayer2.util.Assertions.checkNotNull(context.getSystemService("power"));
        int i = com.google.android.exoplayer2.util.Util.SDK_INT;
        if (i >= 23) {
            return powerManager.isDeviceIdleMode();
        }
        if (i >= 20) {
            if (!powerManager.isInteractive()) {
                return true;
            }
        } else if (!powerManager.isScreenOn()) {
            return true;
        }
        return false;
    }

    public static boolean isInternetConnectivityValidated(android.net.ConnectivityManager connectivityManager) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 24) {
            return true;
        }
        android.net.Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            android.net.NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities != null) {
                if (networkCapabilities.hasCapability(16)) {
                    return true;
                }
            }
            return false;
        } catch (java.lang.SecurityException unused) {
            return true;
        }
    }

    private boolean isStorageNotLow(android.content.Context context) {
        return context.registerReceiver(null, new android.content.IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null;
    }

    public boolean checkRequirements(android.content.Context context) {
        return getNotMetRequirements(context) == 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && com.google.android.exoplayer2.scheduler.Requirements.class == obj.getClass() && this.requirements == ((com.google.android.exoplayer2.scheduler.Requirements) obj).requirements;
    }

    public com.google.android.exoplayer2.scheduler.Requirements filterRequirements(int i) {
        int i2 = this.requirements;
        int i3 = i & i2;
        return i3 == i2 ? this : new com.google.android.exoplayer2.scheduler.Requirements(i3);
    }

    public int getNotMetRequirements(android.content.Context context) {
        int notMetNetworkRequirements = getNotMetNetworkRequirements(context);
        if (isChargingRequired() && !isDeviceCharging(context)) {
            notMetNetworkRequirements |= 8;
        }
        if (isIdleRequired() && !isDeviceIdle(context)) {
            notMetNetworkRequirements |= 4;
        }
        return (!isStorageNotLowRequired() || isStorageNotLow(context)) ? notMetNetworkRequirements : notMetNetworkRequirements | 16;
    }

    public int getRequirements() {
        return this.requirements;
    }

    public int hashCode() {
        return this.requirements;
    }

    public boolean isChargingRequired() {
        return (this.requirements & 8) != 0;
    }

    public boolean isIdleRequired() {
        return (this.requirements & 4) != 0;
    }

    public boolean isNetworkRequired() {
        return (this.requirements & 1) != 0;
    }

    public boolean isStorageNotLowRequired() {
        return (this.requirements & 16) != 0;
    }

    public boolean isUnmeteredNetworkRequired() {
        return (this.requirements & 2) != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i) {
        parcel.writeInt(this.requirements);
    }
}
