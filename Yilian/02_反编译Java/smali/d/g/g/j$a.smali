.class public Ld/g/g/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/g/g/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/g/j;->f([Ld/g/j/h;I)Ld/g/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/g/g/j$b<",
        "Ld/g/j/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld/g/g/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ld/g/j/h;

    .line 1
    iget p1, p1, Ld/g/j/h;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ld/g/j/h;

    .line 1
    iget-boolean p1, p1, Ld/g/j/h;->d:Z

    return p1
.end method
