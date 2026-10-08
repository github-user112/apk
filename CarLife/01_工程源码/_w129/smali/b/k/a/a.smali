.class public abstract Lb/k/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lb/j/g;)Lb/k/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/j/g;",
            ":",
            "Lb/j/u;",
            ">(TT;)",
            "Lb/k/a/a;"
        }
    .end annotation

    new-instance v0, Lb/k/a/b;

    move-object v1, p0

    check-cast v1, Lb/j/u;

    invoke-interface {v1}, Lb/j/u;->a0()Lb/j/t;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/k/a/b;-><init>(Lb/j/g;Lb/j/t;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
