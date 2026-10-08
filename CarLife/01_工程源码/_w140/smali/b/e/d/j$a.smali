.class public Lb/e/d/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/e/d/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/e/d/j;->f([Lb/e/g/l;I)Lb/e/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/e/d/j$b<",
        "Lb/e/g/l;",
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

    check-cast p1, Lb/e/g/l;

    .line 1
    iget p1, p1, Lb/e/g/l;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb/e/g/l;

    .line 1
    iget-boolean p1, p1, Lb/e/g/l;->d:Z

    return p1
.end method
