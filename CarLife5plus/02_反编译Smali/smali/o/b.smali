.class public final Lo/b;
.super Lp/u1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/b;->j:I

    .line 1
    iput-object p1, p0, Lo/b;->k:Landroid/view/View;

    .line 2
    invoke-direct {p0, p1}, Lp/u1;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lp/j;Lp/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/b;->j:I

    .line 3
    iput-object p1, p0, Lo/b;->k:Landroid/view/View;

    invoke-direct {p0, p2}, Lp/u1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lo/c0;
    .locals 1

    .line 1
    iget v0, p0, Lo/b;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo/b;->k:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Lp/j;

    .line 9
    .line 10
    iget-object v0, v0, Lp/j;->d:Lp/k;

    .line 11
    .line 12
    iget-object v0, v0, Lp/k;->s:Lp/g;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lo/w;->a()Lo/u;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lo/b;->k:Landroid/view/View;

    .line 24
    .line 25
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->m:Lo/c;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast v0, Lp/h;

    .line 32
    .line 33
    iget-object v0, v0, Lp/h;->a:Lp/k;

    .line 34
    .line 35
    iget-object v0, v0, Lp/k;->t:Lp/g;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lo/w;->a()Lo/u;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_1
    return-object v0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/b;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo/b;->k:Landroid/view/View;

    .line 7
    .line 8
    check-cast v0, Lp/j;

    .line 9
    .line 10
    iget-object v0, v0, Lp/j;->d:Lp/k;

    .line 11
    .line 12
    invoke-virtual {v0}, Lp/k;->l()Z

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lo/b;->k:Landroid/view/View;

    .line 18
    .line 19
    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 20
    .line 21
    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->k:Lo/l;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->h:Lo/o;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Lo/l;->b(Lo/o;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lo/b;->b()Lo/c0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Lo/c0;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Lo/b;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lp/u1;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lo/b;->k:Landroid/view/View;

    .line 12
    .line 13
    check-cast v0, Lp/j;

    .line 14
    .line 15
    iget-object v0, v0, Lp/j;->d:Lp/k;

    .line 16
    .line 17
    iget-object v1, v0, Lp/k;->u:Lp/i;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lp/k;->f()Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
