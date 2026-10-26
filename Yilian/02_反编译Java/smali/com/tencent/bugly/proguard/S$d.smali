.class public Lcom/tencent/bugly/proguard/S$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/tencent/bugly/proguard/S;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/bugly/proguard/S;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/S;-><init>(Lcom/tencent/bugly/proguard/S$a;)V

    sput-object v0, Lcom/tencent/bugly/proguard/S$d;->a:Lcom/tencent/bugly/proguard/S;

    return-void
.end method
