.class public abstract Le/c/b/b/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/b/p$b;
    }
.end annotation


# static fields
.field public static final a:Le/c/b/b/p;

.field public static final b:Le/c/b/b/p;

.field public static final c:Le/c/b/b/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/c/b/b/p$a;

    invoke-direct {v0}, Le/c/b/b/p$a;-><init>()V

    sput-object v0, Le/c/b/b/p;->a:Le/c/b/b/p;

    new-instance v0, Le/c/b/b/p$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Le/c/b/b/p$b;-><init>(I)V

    sput-object v0, Le/c/b/b/p;->b:Le/c/b/b/p;

    new-instance v0, Le/c/b/b/p$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/c/b/b/p$b;-><init>(I)V

    sput-object v0, Le/c/b/b/p;->c:Le/c/b/b/p;

    return-void
.end method

.method public constructor <init>(Le/c/b/b/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(II)Le/c/b/b/p;
.end method

.method public abstract b(JJ)Le/c/b/b/p;
.end method

.method public abstract c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Le/c/b/b/p;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Le/c/b/b/p;"
        }
    .end annotation
.end method

.method public abstract d(ZZ)Le/c/b/b/p;
.end method

.method public abstract e(ZZ)Le/c/b/b/p;
.end method

.method public abstract f()I
.end method
