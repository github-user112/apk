.class public Lg/a/b/b/a/d;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lg/a/b/b/a/c;


# direct methods
.method public constructor <init>(Lg/a/b/b/a/c;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lg/a/b/b/a/d;->c:Lg/a/b/b/a/c;

    iput p2, p0, Lg/a/b/b/a/d;->b:I

    iput-object p3, p0, Lg/a/b/b/a/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lg/a/b/b/a/d;->c:Lg/a/b/b/a/c;

    if-eqz p1, :cond_0

    iget v0, p0, Lg/a/b/b/a/d;->b:I

    iget-object v1, p0, Lg/a/b/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lg/a/b/b/a/c;->b(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "VMS_IDLG_SDK_Observer"

    const-string v0, "mIdentifierIdClient is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
