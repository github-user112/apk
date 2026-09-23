package d.g.e;

/* loaded from: classes.dex */
public class j {
    public final android.app.Notification.Builder a;
    public final d.g.e.h b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.RemoteViews f1934c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.RemoteViews f1935d;

    /* renamed from: e, reason: collision with root package name */
    public final java.util.List<android.os.Bundle> f1936e = new java.util.ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final android.os.Bundle f1937f = new android.os.Bundle();

    /* renamed from: g, reason: collision with root package name */
    public int f1938g;
    public android.widget.RemoteViews h;

    public j(d.g.e.h hVar) {
        java.util.List<java.lang.String> listB;
        this.b = hVar;
        android.app.Notification.Builder builder = android.os.Build.VERSION.SDK_INT >= 26 ? new android.app.Notification.Builder(hVar.a, hVar.t) : new android.app.Notification.Builder(hVar.a);
        this.a = builder;
        android.app.Notification notification = hVar.x;
        builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(hVar.f1931e).setContentText(hVar.f1932f).setContentInfo(null).setContentIntent(hVar.f1933g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setLargeIcon(hVar.h).setNumber(0).setProgress(hVar.l, hVar.m, hVar.n);
        if (android.os.Build.VERSION.SDK_INT < 21) {
            this.a.setSound(notification.sound, notification.audioStreamType);
        }
        this.a.setSubText(null).setUsesChronometer(false).setPriority(hVar.i);
        java.util.Iterator<d.g.e.f> it = hVar.b.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        android.os.Bundle bundle = hVar.p;
        if (bundle != null) {
            this.f1937f.putAll(bundle);
        }
        if (android.os.Build.VERSION.SDK_INT < 20 && hVar.o) {
            this.f1937f.putBoolean("android.support.localOnly", true);
        }
        this.f1934c = null;
        this.f1935d = null;
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            this.a.setShowWhen(hVar.j);
        }
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 19 && i < 21 && (listB = b(c(hVar.f1929c), hVar.y)) != null && !listB.isEmpty()) {
            this.f1937f.putStringArray("android.people", (java.lang.String[]) listB.toArray(new java.lang.String[listB.size()]));
        }
        if (android.os.Build.VERSION.SDK_INT >= 20) {
            this.a.setLocalOnly(hVar.o).setGroup(null).setGroupSummary(false).setSortKey(null);
            this.f1938g = hVar.v;
        }
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            this.a.setCategory(null).setColor(hVar.q).setVisibility(hVar.r).setPublicVersion(null).setSound(notification.sound, notification.audioAttributes);
            java.util.List listB2 = android.os.Build.VERSION.SDK_INT < 28 ? b(c(hVar.f1929c), hVar.y) : hVar.y;
            if (listB2 != null && !listB2.isEmpty()) {
                java.util.Iterator it2 = listB2.iterator();
                while (it2.hasNext()) {
                    this.a.addPerson((java.lang.String) it2.next());
                }
            }
            this.h = null;
            if (hVar.f1930d.size() > 0) {
                if (hVar.p == null) {
                    hVar.p = new android.os.Bundle();
                }
                android.os.Bundle bundle2 = hVar.p.getBundle("android.car.EXTENSIONS");
                bundle2 = bundle2 == null ? new android.os.Bundle() : bundle2;
                android.os.Bundle bundle3 = new android.os.Bundle(bundle2);
                android.os.Bundle bundle4 = new android.os.Bundle();
                for (int i2 = 0; i2 < hVar.f1930d.size(); i2++) {
                    bundle4.putBundle(java.lang.Integer.toString(i2), d.g.e.k.b(hVar.f1930d.get(i2)));
                }
                bundle2.putBundle("invisible_actions", bundle4);
                bundle3.putBundle("invisible_actions", bundle4);
                if (hVar.p == null) {
                    hVar.p = new android.os.Bundle();
                }
                hVar.p.putBundle("android.car.EXTENSIONS", bundle2);
                this.f1937f.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        int i3 = android.os.Build.VERSION.SDK_INT;
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            this.a.setExtras(hVar.p).setRemoteInputHistory(null);
        }
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            this.a.setBadgeIconType(hVar.u).setSettingsText(null).setShortcutId(null).setTimeoutAfter(0L).setGroupAlertBehavior(hVar.v);
            if (!android.text.TextUtils.isEmpty(hVar.t)) {
                this.a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            java.util.Iterator<d.g.e.l> it3 = hVar.f1929c.iterator();
            while (it3.hasNext()) {
                d.g.e.l next = it3.next();
                android.app.Notification.Builder builder2 = this.a;
                if (next == null) {
                    throw null;
                }
                builder2.addPerson(new android.app.Person.Builder().setName(null).setIcon(null).setUri(null).setKey(null).setBot(false).setImportant(false).build());
            }
        }
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            this.a.setAllowSystemGeneratedContextualActions(hVar.w);
            this.a.setBubbleMetadata(null);
        }
    }

    public static java.util.List<java.lang.String> b(java.util.List<java.lang.String> list, java.util.List<java.lang.String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        d.e.c cVar = new d.e.c(list2.size() + list.size());
        cVar.addAll(list);
        cVar.addAll(list2);
        return new java.util.ArrayList(cVar);
    }

    public static java.util.List<java.lang.String> c(java.util.List<d.g.e.l> list) {
        if (list == null) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
        java.util.Iterator<d.g.e.l> it = list.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw null;
            }
            arrayList.add("");
        }
        return arrayList;
    }

    public final void a(d.g.e.f fVar) {
        android.app.Notification.Action.Builder builder;
        int i = android.os.Build.VERSION.SDK_INT;
        if (i < 20) {
            this.f1936e.add(d.g.e.k.d(this.a, fVar));
            return;
        }
        androidx.core.graphics.drawable.IconCompat iconCompat = fVar.a;
        if (i >= 23) {
            builder = new android.app.Notification.Action.Builder(iconCompat != null ? iconCompat.d() : null, (java.lang.CharSequence) null, (android.app.PendingIntent) null);
        } else {
            builder = new android.app.Notification.Action.Builder(iconCompat != null ? iconCompat.b() : 0, (java.lang.CharSequence) null, (android.app.PendingIntent) null);
        }
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", false);
        if (android.os.Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(false);
        }
        bundle.putInt("android.support.action.semanticAction", 0);
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(0);
        }
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            builder.setContextual(false);
        }
        bundle.putBoolean("android.support.action.showsUserInterface", false);
        builder.addExtras(bundle);
        this.a.addAction(builder.build());
    }

    public final void d(android.app.Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i = notification.defaults & (-2);
        notification.defaults = i;
        notification.defaults = i & (-3);
    }
}
