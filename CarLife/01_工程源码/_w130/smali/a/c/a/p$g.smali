.class public La/c/a/p$g;
.super La/c/a/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "La/c/a/x;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "La/c/a/k<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field public final a:La/c/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field public final c:La/c/a/x;


# direct methods
.method public constructor <init>(La/c/a/x;Ljava/lang/Object;La/c/a/x;La/c/a/p$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "La/c/a/x;",
            "La/c/a/p$f;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, La/c/a/k;-><init>()V

    if-eqz p1, :cond_2

    .line 1
    iget-object p4, p4, La/c/a/p$f;->c:La/c/a/i0;

    .line 2
    sget-object v0, La/c/a/i0;->l:La/c/a/i0;

    if-ne p4, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, La/c/a/p$g;->a:La/c/a/x;

    iput-object p2, p0, La/c/a/p$g;->b:Ljava/lang/Object;

    iput-object p3, p0, La/c/a/p$g;->c:La/c/a/x;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
