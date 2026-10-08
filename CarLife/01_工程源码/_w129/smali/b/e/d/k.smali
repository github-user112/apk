.class public Lb/e/d/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/e/d/j$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/e/d/j$b<",
        "Lb/e/c/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/e/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/e/c/b/d;

    .line 1
    iget p1, p1, Lb/e/c/b/d;->b:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb/e/c/b/d;

    .line 1
    iget-boolean p1, p1, Lb/e/c/b/d;->c:Z

    return p1
.end method
