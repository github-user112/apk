.class public Ld/g/j/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ld/g/j/i;

.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ld/g/j/i;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/g/j/c;->a:Ld/g/j/i;

    iput-object p2, p0, Ld/g/j/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ld/g/j/f$e;)V
    .locals 3

    .line 1
    iget v0, p1, Ld/g/j/f$e;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Ld/g/j/f$e;->a:Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Ld/g/j/c;->a:Ld/g/j/i;

    iget-object v1, p0, Ld/g/j/c;->b:Landroid/os/Handler;

    new-instance v2, Ld/g/j/a;

    invoke-direct {v2, p0, v0, p1}, Ld/g/j/a;-><init>(Ld/g/j/c;Ld/g/j/i;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4
    :cond_1
    iget p1, p1, Ld/g/j/f$e;->b:I

    .line 5
    iget-object v0, p0, Ld/g/j/c;->a:Ld/g/j/i;

    iget-object v1, p0, Ld/g/j/c;->b:Landroid/os/Handler;

    new-instance v2, Ld/g/j/b;

    invoke-direct {v2, p0, v0, p1}, Ld/g/j/b;-><init>(Ld/g/j/c;Ld/g/j/i;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
