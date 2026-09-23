.class public final Ls1/c;
.super Ls1/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lkb/a;

.field public final b:Ly2/o;

.field public final c:Lr2/u;

.field public final d:Lz2/a;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/view/autofill/AutofillId;

.field public final h:Ls/x;

.field public i:Z


# direct methods
.method public constructor <init>(Lkb/a;Ly2/o;Lr2/u;Lz2/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/c;->a:Lkb/a;

    .line 5
    .line 6
    iput-object p2, p0, Ls1/c;->b:Ly2/o;

    .line 7
    .line 8
    iput-object p3, p0, Ls1/c;->c:Lr2/u;

    .line 9
    .line 10
    iput-object p4, p0, Ls1/c;->d:Lz2/a;

    .line 11
    .line 12
    iput-object p5, p0, Ls1/c;->e:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Ls1/c;->f:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-static {p3}, Lq0/o;->x(Lr2/u;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p3}, Lp4/e;->o(Landroid/view/View;)Lf4/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p1, Lf4/d;->a:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {p1}, Ls1/o;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillId;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iput-object p1, p0, Ls1/c;->g:Landroid/view/autofill/AutofillId;

    .line 41
    .line 42
    new-instance p1, Ls/x;

    .line 43
    .line 44
    invoke-direct {p1}, Ls/x;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Ls1/c;->h:Ls/x;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const-string p1, "Required value was null."

    .line 51
    .line 52
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    throw p1
.end method
