.class public La/d/a/f/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:La/d/a/f/i;

.field public b:La/d/a/f/b;


# direct methods
.method public constructor <init>(La/d/a/f/i;La/d/a/f/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/d/a/f/c;->a:La/d/a/f/i;

    iput-object p2, p0, La/d/a/f/c;->b:La/d/a/f/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v7, v0, La/d/a/f/c;->a:La/d/a/f/i;

    iget-object v8, v0, La/d/a/f/c;->b:La/d/a/f/b;

    .line 1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "chainTask"

    invoke-static {v8, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "permissions"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, La/d/a/e/a;

    iget-object v10, v7, La/d/a/f/i;->a:Lb/h/b/p;

    const/4 v2, 0x0

    if-eqz v10, :cond_6

    invoke-static/range {p2 .. p2}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    iget v15, v7, La/d/a/f/i;->c:I

    iget v4, v7, La/d/a/f/i;->d:I

    move-object v9, v6

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v16, v4

    invoke-direct/range {v9 .. v16}, La/d/a/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2
    invoke-static {v8, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dialog"

    invoke-static {v6, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    iput-boolean v9, v7, La/d/a/f/i;->h:Z

    .line 3
    iget-object v10, v6, La/d/a/e/a;->c:Ljava/util/List;

    const-string v1, "dialog.permissionsToRequest"

    .line 4
    invoke-static {v10, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, La/d/a/f/b;->b()V

    goto :goto_1

    :cond_0
    iput-object v6, v7, La/d/a/f/i;->e:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 5
    iget-object v1, v6, La/d/a/e/a;->b:La/d/a/d/a;

    if-eqz v1, :cond_5

    iget-object v1, v1, La/d/a/d/a;->e:Landroid/widget/LinearLayout;

    const-string v2, "binding.permissionsLayout"

    invoke-static {v1, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {v8}, La/d/a/f/b;->b()V

    :cond_2
    invoke-virtual {v6}, La/d/a/e/a;->b()Landroid/view/View;

    move-result-object v11

    const-string v1, "dialog.positiveButton"

    invoke-static {v11, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, La/d/a/e/a;->a()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setClickable(Z)V

    new-instance v13, La/d/a/f/f;

    const/4 v4, 0x1

    move-object v1, v13

    move-object v2, v7

    move-object v3, v6

    move-object v5, v8

    move-object v14, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, La/d/a/f/f;-><init>(La/d/a/f/i;La/d/a/e/c;ZLa/d/a/f/b;Ljava/util/List;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v12, :cond_3

    invoke-virtual {v12, v9}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, La/d/a/f/g;

    invoke-direct {v1, v14, v8}, La/d/a/f/g;-><init>(La/d/a/e/c;La/d/a/f/b;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, v7, La/d/a/f/i;->e:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    new-instance v2, La/d/a/f/h;

    invoke-direct {v2, v7}, La/d/a/f/h;-><init>(La/d/a/f/i;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v1, "binding"

    .line 7
    invoke-static {v1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string v1, "activity"

    .line 8
    invoke-static {v1}, Lc/k/b/c;->g(Ljava/lang/String;)V

    throw v2
.end method
