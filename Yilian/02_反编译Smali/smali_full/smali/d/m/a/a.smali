.class public abstract Ld/m/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ld/l/h;)Ld/m/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ld/l/h;",
            ":",
            "Ld/l/z;",
            ">(TT;)",
            "Ld/m/a/a;"
        }
    .end annotation

    new-instance v0, Ld/m/a/b;

    move-object v1, p0

    check-cast v1, Ld/l/z;

    invoke-interface {v1}, Ld/l/z;->getViewModelStore()Ld/l/y;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ld/m/a/b;-><init>(Ld/l/h;Ld/l/y;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
