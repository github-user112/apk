.class public Ld/g/j/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/g/l/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/j/f;->b(Landroid/content/Context;Ld/g/j/e;ILjava/util/concurrent/Executor;Ld/g/j/c;)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/g/l/a<",
        "Ld/g/j/f$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ld/g/j/c;


# direct methods
.method public constructor <init>(Ld/g/j/c;)V
    .locals 0

    iput-object p1, p0, Ld/g/j/f$b;->a:Ld/g/j/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ld/g/j/f$e;

    .line 1
    iget-object v0, p0, Ld/g/j/f$b;->a:Ld/g/j/c;

    invoke-virtual {v0, p1}, Ld/g/j/c;->a(Ld/g/j/f$e;)V

    return-void
.end method
