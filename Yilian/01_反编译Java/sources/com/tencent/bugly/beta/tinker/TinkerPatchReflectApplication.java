package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerPatchReflectApplication extends com.tencent.tinker.loader.app.TinkerApplication {
    public static final java.lang.String TAG = "Tinker.ReflectApp";
    public boolean isReflectFailure;
    public java.lang.String rawApplicationName;
    public android.app.Application realApplication;

    public TinkerPatchReflectApplication() {
        super(15, "com.tencent.bugly.beta.tinker.TinkerApplicationLike", com.tencent.tinker.loader.TinkerLoader.class.getName(), false);
        this.rawApplicationName = null;
        this.isReflectFailure = false;
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.content.ContextWrapper
    public void attachBaseContext(android.content.Context context) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        super.attachBaseContext(context);
        try {
            java.lang.String rawApplicationName = getRawApplicationName(context);
            if (rawApplicationName == null) {
                throw new java.lang.RuntimeException("can get real realApplication from manifest!");
            }
            android.app.Application application = (android.app.Application) java.lang.Class.forName(rawApplicationName, false, getClassLoader()).getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
            this.realApplication = application;
            if (application != null) {
                try {
                    java.lang.reflect.Method declaredMethod = android.content.ContextWrapper.class.getDeclaredMethod("attachBaseContext", android.content.Context.class);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.realApplication, context);
                } catch (java.lang.Exception e2) {
                    throw new java.lang.IllegalStateException(e2);
                }
            }
        } catch (java.lang.Exception e3) {
            throw new java.lang.IllegalStateException(e3);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean bindService(android.content.Intent intent, android.content.ServiceConnection serviceConnection, int i) {
        android.app.Application application;
        return (!this.isReflectFailure || (application = this.realApplication) == null) ? super.bindService(intent, serviceConnection, i) : application.bindService(intent, serviceConnection, i);
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.content.ContextWrapper, android.content.Context
    public android.content.res.AssetManager getAssets() {
        android.app.Application application;
        return (!this.isReflectFailure || (application = this.realApplication) == null) ? super.getAssets() : application.getAssets();
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.content.ContextWrapper, android.content.Context
    public java.lang.ClassLoader getClassLoader() {
        android.app.Application application;
        return (!this.isReflectFailure || (application = this.realApplication) == null) ? super.getClassLoader() : application.getClassLoader();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.ContentResolver getContentResolver() {
        android.app.Application application;
        return (!this.isReflectFailure || (application = this.realApplication) == null) ? super.getContentResolver() : application.getContentResolver();
    }

    public java.lang.String getRawApplicationName(android.content.Context context) {
        java.lang.String str = this.rawApplicationName;
        if (str != null) {
            return str;
        }
        try {
            java.lang.Object obj = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get("TINKER_PATCH_APPLICATION");
            if (obj != null) {
                this.rawApplicationName = java.lang.String.valueOf(obj);
            } else {
                this.rawApplicationName = null;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("with app realApplication from manifest applicationName:");
            sbO.append(this.rawApplicationName);
            android.util.Log.i(TAG, sbO.toString());
            return this.rawApplicationName;
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("getManifestApplication exception:");
            sbO2.append(e2.getMessage());
            android.util.Log.e(TAG, sbO2.toString());
            return null;
        }
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        android.app.Application application;
        return (!this.isReflectFailure || (application = this.realApplication) == null) ? super.getResources() : application.getResources();
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) throws java.lang.Throwable {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.onConfigurationChanged(configuration);
        } else {
            application.onConfigurationChanged(configuration);
        }
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.app.Application
    public void onCreate() throws java.lang.Throwable {
        java.lang.Class<?> cls;
        if (this.realApplication != null) {
            try {
                java.lang.Class<?> cls2 = java.lang.Class.forName("android.app.ActivityThread");
                java.lang.Object activityThread = com.tencent.tinker.loader.shareutil.ShareReflectUtil.getActivityThread(this, cls2);
                java.lang.reflect.Field declaredField = cls2.getDeclaredField("mInitialApplication");
                declaredField.setAccessible(true);
                android.app.Application application = (android.app.Application) declaredField.get(activityThread);
                if (this.realApplication != null && application == this) {
                    declaredField.set(activityThread, this.realApplication);
                }
                if (this.realApplication != null) {
                    java.lang.reflect.Field declaredField2 = cls2.getDeclaredField("mAllApplications");
                    declaredField2.setAccessible(true);
                    java.util.List list = (java.util.List) declaredField2.get(activityThread);
                    for (int i = 0; i < list.size(); i++) {
                        if (list.get(i) == this) {
                            list.set(i, this.realApplication);
                        }
                    }
                }
                try {
                    cls = java.lang.Class.forName("android.app.LoadedApk");
                } catch (java.lang.ClassNotFoundException unused) {
                    cls = java.lang.Class.forName("android.app.ActivityThread$PackageInfo");
                }
                java.lang.reflect.Field declaredField3 = cls.getDeclaredField("mApplication");
                declaredField3.setAccessible(true);
                java.lang.reflect.Field declaredField4 = null;
                try {
                    declaredField4 = android.app.Application.class.getDeclaredField("mLoadedApk");
                } catch (java.lang.NoSuchFieldException e2) {
                    e2.printStackTrace();
                }
                java.lang.String[] strArr = new java.lang.String[2];
                strArr[0] = "mPackages";
                strArr[1] = "mResourcePackages";
                for (int i2 = 0; i2 < 2; i2++) {
                    java.lang.reflect.Field declaredField5 = cls2.getDeclaredField(strArr[i2]);
                    declaredField5.setAccessible(true);
                    java.util.Iterator it = ((java.util.Map) declaredField5.get(activityThread)).entrySet().iterator();
                    while (it.hasNext()) {
                        java.lang.Object obj = ((java.lang.ref.WeakReference) ((java.util.Map.Entry) it.next()).getValue()).get();
                        if (obj != null && declaredField3.get(obj) == this) {
                            if (this.realApplication != null) {
                                declaredField3.set(obj, this.realApplication);
                            }
                            if (this.realApplication != null && declaredField4 != null) {
                                declaredField4.set(this.realApplication, obj);
                            }
                        }
                    }
                }
            } catch (java.lang.Throwable th) {
                e.a.c.a.a.y("Error, reflect Application fail, result:", th, TAG);
                this.isReflectFailure = true;
            }
            if (!this.isReflectFailure) {
                try {
                    java.lang.Class<?> cls3 = java.lang.Class.forName("com.tencent.bugly.beta.tinker.TinkerApplicationLike", false, getClassLoader());
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("replaceApplicationLike delegateClass:");
                    sb.append(cls3);
                    android.util.Log.e(TAG, sb.toString());
                    com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(cls3, com.google.android.exoplayer2.util.MimeTypes.BASE_TYPE_APPLICATION).set(cls3.getDeclaredMethod("getTinkerPatchApplicationLike", new java.lang.Class[0]).invoke(cls3, new java.lang.Object[0]), this.realApplication);
                } catch (java.lang.Throwable th2) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("replaceApplicationLike exception:");
                    sbO.append(th2.getMessage());
                    android.util.Log.e(TAG, sbO.toString());
                }
            }
        }
        super.onCreate();
        android.app.Application application2 = this.realApplication;
        if (application2 != null) {
            application2.onCreate();
        }
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() throws java.lang.Throwable {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.onLowMemory();
        } else {
            application.onLowMemory();
        }
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.app.Application
    public void onTerminate() throws java.lang.Throwable {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.onTerminate();
        } else {
            application.onTerminate();
        }
    }

    @Override // com.tencent.tinker.loader.app.TinkerApplication, android.app.Application, android.content.ComponentCallbacks2
    @android.annotation.TargetApi(14)
    public void onTrimMemory(int i) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.onTrimMemory(i);
        } else {
            application.onTrimMemory(i);
        }
    }

    @Override // android.app.Application
    @android.annotation.TargetApi(14)
    public void registerActivityLifecycleCallbacks(android.app.Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        } else {
            application.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
    }

    @Override // android.app.Application, android.content.ContextWrapper, android.content.Context
    @android.annotation.TargetApi(14)
    public void registerComponentCallbacks(android.content.ComponentCallbacks componentCallbacks) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.registerComponentCallbacks(componentCallbacks);
        } else {
            application.registerComponentCallbacks(componentCallbacks);
        }
    }

    @Override // android.app.Application
    @android.annotation.TargetApi(18)
    public void registerOnProvideAssistDataListener(android.app.Application.OnProvideAssistDataListener onProvideAssistDataListener) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.registerOnProvideAssistDataListener(onProvideAssistDataListener);
        } else {
            application.registerOnProvideAssistDataListener(onProvideAssistDataListener);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.Intent registerReceiver(android.content.BroadcastReceiver broadcastReceiver, android.content.IntentFilter intentFilter) {
        android.app.Application application;
        return (!this.isReflectFailure || (application = this.realApplication) == null) ? super.registerReceiver(broadcastReceiver, intentFilter) : application.registerReceiver(broadcastReceiver, intentFilter);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unbindService(android.content.ServiceConnection serviceConnection) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.unbindService(serviceConnection);
        } else {
            application.unbindService(serviceConnection);
        }
    }

    @Override // android.app.Application
    @android.annotation.TargetApi(14)
    public void unregisterActivityLifecycleCallbacks(android.app.Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        } else {
            application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
    }

    @Override // android.app.Application, android.content.ContextWrapper, android.content.Context
    @android.annotation.TargetApi(14)
    public void unregisterComponentCallbacks(android.content.ComponentCallbacks componentCallbacks) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.unregisterComponentCallbacks(componentCallbacks);
        } else {
            application.unregisterComponentCallbacks(componentCallbacks);
        }
    }

    @Override // android.app.Application
    @android.annotation.TargetApi(18)
    public void unregisterOnProvideAssistDataListener(android.app.Application.OnProvideAssistDataListener onProvideAssistDataListener) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.unregisterOnProvideAssistDataListener(onProvideAssistDataListener);
        } else {
            application.unregisterOnProvideAssistDataListener(onProvideAssistDataListener);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterReceiver(android.content.BroadcastReceiver broadcastReceiver) {
        android.app.Application application;
        if (!this.isReflectFailure || (application = this.realApplication) == null) {
            super.unregisterReceiver(broadcastReceiver);
        } else {
            application.unregisterReceiver(broadcastReceiver);
        }
    }
}
