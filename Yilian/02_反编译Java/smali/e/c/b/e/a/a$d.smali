.class public final Le/c/b/e/a/a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/b/e/a/a$d$a;

    const-string v1, "Failure occurred while trying to finish a future."

    invoke-direct {v0, v1}, Le/c/b/e/a/a$d$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/c/b/e/a/a$d;->a:Ljava/lang/Throwable;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
