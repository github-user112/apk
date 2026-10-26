.class public Lf/a/i/p/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/i/p/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:Z

.field public c:Ljava/lang/Process;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/p/c;->b:Z

    return-void
.end method
