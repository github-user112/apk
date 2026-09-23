.class public final Ls1/b;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/p;


# instance fields
.field public final synthetic a:Ls1/c;

.field public final synthetic b:Lq2/h0;


# direct methods
.method public constructor <init>(Ls1/c;Lq2/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/b;->a:Ls1/c;

    .line 2
    .line 3
    iput-object p2, p0, Ls1/b;->b:Lq2/h0;

    .line 4
    .line 5
    const/4 p1, 0x4

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    check-cast p3, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    check-cast p4, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    iget-object v0, p0, Ls1/b;->a:Ls1/c;

    .line 26
    .line 27
    iget-object v1, v0, Ls1/c;->f:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Ls1/c;->a:Lkb/a;

    .line 33
    .line 34
    iget-object p2, v0, Ls1/c;->c:Lr2/u;

    .line 35
    .line 36
    iget-object p3, p0, Ls1/b;->b:Lq2/h0;

    .line 37
    .line 38
    iget p3, p3, Lq2/h0;->b:I

    .line 39
    .line 40
    iget-object p4, v0, Ls1/c;->f:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget-object p1, p1, Lkb/a;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Landroid/view/autofill/AutofillManager;

    .line 45
    .line 46
    invoke-static {p1, p2, p3, p4}, Ls1/o;->o(Landroid/view/autofill/AutofillManager;Lr2/u;ILandroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 50
    .line 51
    return-object p1
.end method
