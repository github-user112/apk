.class public Ld/g/f/b/h$c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/f/b/h$c;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld/g/f/b/h$c;


# direct methods
.method public constructor <init>(Ld/g/f/b/h$c;I)V
    .locals 0

    iput-object p1, p0, Ld/g/f/b/h$c$b;->b:Ld/g/f/b/h$c;

    iput p2, p0, Ld/g/f/b/h$c$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ld/g/f/b/h$c$b;->b:Ld/g/f/b/h$c;

    check-cast v0, Ld/b/q/w$a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    throw v0
.end method
