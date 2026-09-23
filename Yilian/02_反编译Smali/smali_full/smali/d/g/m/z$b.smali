.class public final Ld/g/m/z$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ld/g/m/z$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Ld/g/m/z$e;

    invoke-direct {v0}, Ld/g/m/z$e;-><init>()V

    :goto_0
    iput-object v0, p0, Ld/g/m/z$b;->a:Ld/g/m/z$f;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Ld/g/m/z$d;

    invoke-direct {v0}, Ld/g/m/z$d;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    new-instance v0, Ld/g/m/z$c;

    invoke-direct {v0}, Ld/g/m/z$c;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ld/g/m/z$f;

    invoke-direct {v0}, Ld/g/m/z$f;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ld/g/m/z;
    .locals 1

    iget-object v0, p0, Ld/g/m/z$b;->a:Ld/g/m/z$f;

    invoke-virtual {v0}, Ld/g/m/z$f;->a()Ld/g/m/z;

    move-result-object v0

    return-object v0
.end method
