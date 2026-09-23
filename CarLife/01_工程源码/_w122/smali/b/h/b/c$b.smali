.class public Lb/h/b/c$b;
.super Lb/h/b/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Lb/h/b/t;


# direct methods
.method public constructor <init>(Lb/h/b/y0$d;Lb/e/f/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/h/b/c$c;-><init>(Lb/h/b/y0$d;Lb/e/f/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/h/b/c$b;->d:Z

    iput-boolean p3, p0, Lb/h/b/c$b;->c:Z

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Lb/h/b/t;
    .locals 4

    iget-boolean v0, p0, Lb/h/b/c$b;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lb/h/b/c$b;->e:Lb/h/b/t;

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lb/h/b/c$c;->a:Lb/h/b/y0$d;

    .line 2
    iget-object v1, v0, Lb/h/b/y0$d;->c:Lb/h/b/m;

    .line 3
    iget-object v0, v0, Lb/h/b/y0$d;->a:Lb/h/b/y0$d$c;

    .line 4
    sget-object v2, Lb/h/b/y0$d$c;->c:Lb/h/b/y0$d$c;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lb/h/b/c$b;->c:Z

    invoke-static {p1, v1, v0, v2}, Lb/e/b/g;->J(Landroid/content/Context;Lb/h/b/m;ZZ)Lb/h/b/t;

    move-result-object p1

    iput-object p1, p0, Lb/h/b/c$b;->e:Lb/h/b/t;

    iput-boolean v3, p0, Lb/h/b/c$b;->d:Z

    return-object p1
.end method
