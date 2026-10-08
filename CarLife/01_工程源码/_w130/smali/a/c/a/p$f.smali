.class public final La/c/a/p$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/c/a/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/a/n$a<",
        "La/c/a/p$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:La/c/a/i0;

.field public final d:Z


# direct methods
.method public constructor <init>(La/c/a/r$d;ILa/c/a/i0;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/a/r$d<",
            "*>;I",
            "La/c/a/i0;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La/c/a/p$f;->b:I

    iput-object p3, p0, La/c/a/p$f;->c:La/c/a/i0;

    iput-boolean p4, p0, La/c/a/p$f;->d:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, La/c/a/p$f;->d:Z

    return v0
.end method

.method public b()La/c/a/i0;
    .locals 1

    iget-object v0, p0, La/c/a/p$f;->c:La/c/a/i0;

    return-object v0
.end method

.method public c()La/c/a/j0;
    .locals 1

    iget-object v0, p0, La/c/a/p$f;->c:La/c/a/i0;

    .line 1
    iget-object v0, v0, La/c/a/i0;->u:La/c/a/j0;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, La/c/a/p$f;

    .line 1
    iget v0, p0, La/c/a/p$f;->b:I

    iget p1, p1, La/c/a/p$f;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public d(La/c/a/x$a;La/c/a/x;)La/c/a/x$a;
    .locals 0

    check-cast p1, La/c/a/p$b;

    check-cast p2, La/c/a/p;

    invoke-virtual {p1, p2}, La/c/a/p$b;->mergeFrom(La/c/a/p;)La/c/a/p$b;

    move-result-object p1

    return-object p1
.end method
