.class public Ld/g/g/d$a;
.super Ld/g/j/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ld/g/f/b/h$c;


# direct methods
.method public constructor <init>(Ld/g/f/b/h$c;)V
    .locals 0

    invoke-direct {p0}, Ld/g/j/i;-><init>()V

    iput-object p1, p0, Ld/g/g/d$a;->a:Ld/g/f/b/h$c;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p1, p0, Ld/g/g/d$a;->a:Ld/g/f/b/h$c;

    if-eqz p1, :cond_0

    check-cast p1, Ld/b/q/w$a;

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Ld/g/g/d$a;->a:Ld/g/f/b/h$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/g/f/b/h$c;->d(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
