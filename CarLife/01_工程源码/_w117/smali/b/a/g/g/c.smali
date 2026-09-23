.class public final Lb/a/g/g/c;
.super Lb/a/g/g/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/g/g/a<",
        "Landroid/content/Intent;",
        "Lb/a/g/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/g/g/a;-><init>()V

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
    new-instance v0, Lb/a/g/a;

    invoke-direct {v0, p1, p2}, Lb/a/g/a;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method
