.class public Ld/q/c/x$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/q/c/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Ld/g/l/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/g/l/b<",
            "Ld/q/c/x$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$h$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$h$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld/g/l/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ld/g/l/b;-><init>(I)V

    sput-object v0, Ld/q/c/x$a;->d:Ld/g/l/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ld/q/c/x$a;
    .locals 1

    sget-object v0, Ld/q/c/x$a;->d:Ld/g/l/b;

    invoke-virtual {v0}, Ld/g/l/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/q/c/x$a;

    if-nez v0, :cond_0

    new-instance v0, Ld/q/c/x$a;

    invoke-direct {v0}, Ld/q/c/x$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Ld/q/c/x$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld/q/c/x$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Ld/q/c/x$a;->b:Landroidx/recyclerview/widget/RecyclerView$h$c;

    iput-object v0, p0, Ld/q/c/x$a;->c:Landroidx/recyclerview/widget/RecyclerView$h$c;

    sget-object v0, Ld/q/c/x$a;->d:Ld/g/l/b;

    invoke-virtual {v0, p0}, Ld/g/l/b;->b(Ljava/lang/Object;)Z

    return-void
.end method
