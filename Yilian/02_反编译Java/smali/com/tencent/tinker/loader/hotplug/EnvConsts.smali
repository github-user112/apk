.class public final Lcom/tencent/tinker/loader/hotplug/EnvConsts;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTIVITY_MANAGER_SRVNAME:Ljava/lang/String; = "activity"

.field public static final INCCOMPONENT_META_FILE:Ljava/lang/String; = "assets/inc_component_meta.txt"

.field public static final INTENT_EXTRA_OLD_COMPONENT:Ljava/lang/String; = "tinker_iek_old_component"

.field public static final PACKAGE_MANAGER_SRVNAME:Ljava/lang/String; = "package"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
