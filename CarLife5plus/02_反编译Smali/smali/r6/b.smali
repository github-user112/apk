.class public final Lr6/b;
.super Lr6/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lo6/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo6/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lo6/a;-><init>(Lp6/a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr6/b;->a:Lo6/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f()Lo6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lr6/b;->a:Lo6/b;

    .line 2
    .line 3
    return-object v0
.end method
