.class public Lb/e/d/d$a;
.super Lb/e/g/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/e/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/e/c/b/g;


# direct methods
.method public constructor <init>(Lb/e/c/b/g;)V
    .locals 0

    invoke-direct {p0}, Lb/e/g/m;-><init>()V

    iput-object p1, p0, Lb/e/d/d$a;->a:Lb/e/c/b/g;

    return-void
.end method
