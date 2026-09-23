.class public final Ld/a/e/f/c;
.super Ld/a/e/f/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/a/e/f/a<",
        "Landroid/content/Intent;",
        "Ld/a/e/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/a/e/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    check-cast p2, Landroid/content/Intent;

    return-object p2
.end method

.method public c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ld/a/e/a;

    invoke-direct {v0, p1, p2}, Ld/a/e/a;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method
