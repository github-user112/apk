.class public final Lb/k/a/b$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/j/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/a/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lb/j/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/j/p;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Lb/k/a/b$b;

    invoke-direct {p1}, Lb/k/a/b$b;-><init>()V

    return-object p1
.end method
