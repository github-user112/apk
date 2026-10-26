.class public Ld/j/d/b0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/l/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/d/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ld/l/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/l/s;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Ld/j/d/b0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ld/j/d/b0;-><init>(Z)V

    return-object p1
.end method
