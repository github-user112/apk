.class public Le/c/b/a/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/c/b/a/e;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
