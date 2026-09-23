package d.n.f;

/* loaded from: classes.dex */
public class a extends android.content.BroadcastReceiver {
    public static android.content.ComponentName a(android.content.Context context) {
        android.content.Intent intent = new android.content.Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        java.util.List<android.content.pm.ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers.size() == 1) {
            android.content.pm.ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
            return new android.content.ComponentName(activityInfo.packageName, activityInfo.name);
        }
        if (listQueryBroadcastReceivers.size() <= 1) {
            return null;
        }
        android.util.Log.w("MediaButtonReceiver", "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
        return null;
    }
}
