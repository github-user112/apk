.class public abstract Ld/l/v;
.super Ld/l/x;
.source ""

# interfaces
.implements Ld/l/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/l/x;-><init>()V

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

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(String, Class<?>) must be called on implementaions of KeyedFactory"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/Class;)Ld/l/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ld/l/s;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
