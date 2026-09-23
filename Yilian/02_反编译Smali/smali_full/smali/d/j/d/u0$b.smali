.class public Ld/j/d/u0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/j/d/u0;->a(Ld/j/d/u0$d$c;Ld/j/d/u0$d$b;Ld/j/d/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/j/d/u0$c;

.field public final synthetic b:Ld/j/d/u0;


# direct methods
.method public constructor <init>(Ld/j/d/u0;Ld/j/d/u0$c;)V
    .locals 0

    iput-object p1, p0, Ld/j/d/u0$b;->b:Ld/j/d/u0;

    iput-object p2, p0, Ld/j/d/u0$b;->a:Ld/j/d/u0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/j/d/u0$b;->b:Ld/j/d/u0;

    iget-object v0, v0, Ld/j/d/u0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/j/d/u0$b;->a:Ld/j/d/u0$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ld/j/d/u0$b;->b:Ld/j/d/u0;

    iget-object v0, v0, Ld/j/d/u0;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Ld/j/d/u0$b;->a:Ld/j/d/u0$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
