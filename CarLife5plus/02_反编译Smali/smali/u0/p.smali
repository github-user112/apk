.class public final Lu0/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# instance fields
.field public final a:Lkb/a;

.field public final b:Z

.field public final c:Ll0/s0;

.field public final d:Lw0/r1;

.field public final e:Lr2/q2;

.field public f:I

.field public g:Lg3/w;

.field public h:I

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:Z


# direct methods
.method public constructor <init>(Lg3/w;Lkb/a;ZLl0/s0;Lw0/r1;Lr2/q2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lu0/p;->a:Lkb/a;

    .line 5
    .line 6
    iput-boolean p3, p0, Lu0/p;->b:Z

    .line 7
    .line 8
    iput-object p4, p0, Lu0/p;->c:Ll0/s0;

    .line 9
    .line 10
    iput-object p5, p0, Lu0/p;->d:Lw0/r1;

    .line 11
    .line 12
    iput-object p6, p0, Lu0/p;->e:Lr2/q2;

    .line 13
    .line 14
    iput-object p1, p0, Lu0/p;->g:Lg3/w;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lu0/p;->j:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lu0/p;->k:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lg3/g;)V
    .locals 1

    .line 1
    iget v0, p0, Lu0/p;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lu0/p;->f:I

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lu0/p;->j:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lu0/p;->b()Z

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p0}, Lu0/p;->b()Z

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget v0, p0, Lu0/p;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lu0/p;->f:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lu0/p;->j:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Ls8/p;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lu0/p;->a:Lkb/a;

    .line 22
    .line 23
    iget-object v2, v2, Lkb/a;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lu0/o;

    .line 26
    .line 27
    iget-object v2, v2, Lu0/o;->c:Lf9/k;

    .line 28
    .line 29
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lu0/p;->f:I

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    return v0
.end method

.method public final beginBatchEdit()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lu0/p;->f:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lu0/p;->f:I

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    return v0
.end method

.method public final c(I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/KeyEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lu0/p;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/view/KeyEvent;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lu0/p;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final clearMetaKeyStates(I)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    return p1
.end method

.method public final closeConnection()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu0/p;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lu0/p;->f:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lu0/p;->k:Z

    .line 10
    .line 11
    iget-object v1, p0, Lu0/p;->a:Lkb/a;

    .line 12
    .line 13
    iget-object v1, v1, Lkb/a;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lu0/o;

    .line 16
    .line 17
    iget-object v1, v1, Lu0/o;->j:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    :goto_0
    if-ge v0, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3, p0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    return p1
.end method

.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    return p1
.end method

.method public final commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lu0/p;->b:Z

    .line 6
    .line 7
    :cond_0
    return p1
.end method

.method public final commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lg3/a;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p2, p1}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lu0/p;->a(Lg3/g;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return v0
.end method

.method public final deleteSurroundingText(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lg3/e;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lg3/e;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lu0/p;->a(Lg3/g;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    return v0
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lg3/f;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lg3/f;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lu0/p;->a(Lg3/g;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    return v0
.end method

.method public final endBatchEdit()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu0/p;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final finishComposingText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lg3/i;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lu0/p;->a(Lg3/g;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    :cond_0
    return v0
.end method

.method public final getCursorCapsMode(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lu0/p;->g:Lg3/w;

    .line 2
    .line 3
    iget-object v1, v0, Lg3/w;->a:Lb3/g;

    .line 4
    .line 5
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v2, v0, Lg3/w;->b:J

    .line 8
    .line 9
    invoke-static {v2, v3}, Lb3/n0;->f(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v1, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iput-boolean v0, p0, Lu0/p;->i:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 15
    .line 16
    :cond_1
    iput v1, p0, Lu0/p;->h:I

    .line 17
    .line 18
    :cond_2
    iget-object p1, p0, Lu0/p;->g:Lg3/w;

    .line 19
    .line 20
    invoke-static {p1}, Lp9/q;->i(Lg3/w;)Landroid/view/inputmethod/ExtractedText;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object p1, p0, Lu0/p;->g:Lg3/w;

    .line 2
    .line 3
    iget-wide v0, p1, Lg3/w;->b:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Lb3/n0;->c(J)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object p1, p0, Lu0/p;->g:Lg3/w;

    .line 14
    .line 15
    invoke-static {p1}, Lg5/a;->J(Lg3/w;)Lb3/g;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 20
    .line 21
    return-object p1
.end method

.method public final getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p2, p0, Lu0/p;->g:Lg3/w;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg5/a;->M(Lg3/w;I)Lb3/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public final getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p2, p0, Lu0/p;->g:Lg3/w;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lg5/a;->N(Lg3/w;I)Lb3/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lb3/g;->b:Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public final performContextMenuAction(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :pswitch_0
    const/16 p1, 0x117

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lu0/p;->c(I)V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :pswitch_1
    const/16 p1, 0x116

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lu0/p;->c(I)V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :pswitch_2
    const/16 p1, 0x115

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lu0/p;->c(I)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :pswitch_3
    new-instance p1, Lg3/v;

    .line 29
    .line 30
    iget-object v1, p0, Lu0/p;->g:Lg3/w;

    .line 31
    .line 32
    iget-object v1, v1, Lg3/w;->a:Lb3/g;

    .line 33
    .line 34
    iget-object v1, v1, Lb3/g;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-direct {p1, v0, v1}, Lg3/v;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lu0/p;->a(Lg3/g;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performEditorAction(I)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "IME sends unsupported Editor Action: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, "RecordingIC"

    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    const/4 p1, 0x5

    .line 33
    goto :goto_0

    .line 34
    :pswitch_1
    const/4 p1, 0x7

    .line 35
    goto :goto_0

    .line 36
    :pswitch_2
    const/4 p1, 0x6

    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    const/4 p1, 0x4

    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    const/4 p1, 0x3

    .line 41
    goto :goto_0

    .line 42
    :pswitch_5
    const/4 p1, 0x2

    .line 43
    :goto_0
    iget-object v1, p0, Lu0/p;->a:Lkb/a;

    .line 44
    .line 45
    iget-object v1, v1, Lkb/a;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lu0/o;

    .line 48
    .line 49
    iget-object v1, v1, Lu0/o;->d:Lf9/k;

    .line 50
    .line 51
    new-instance v2, Lg3/j;

    .line 52
    .line 53
    invoke-direct {v2, p1}, Lg3/j;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    return v0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v4, 0x22

    .line 10
    .line 11
    if-lt v3, v4, :cond_35

    .line 12
    .line 13
    new-instance v3, Ls0/d;

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    invoke-direct {v3, v4, v0}, Ls0/d;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    iget-object v6, v0, Lu0/p;->c:Ll0/s0;

    .line 21
    .line 22
    if-eqz v6, :cond_32

    .line 23
    .line 24
    iget-object v7, v6, Ll0/s0;->j:Lb3/g;

    .line 25
    .line 26
    if-nez v7, :cond_0

    .line 27
    .line 28
    goto/16 :goto_18

    .line 29
    .line 30
    :cond_0
    invoke-virtual {v6}, Ll0/s0;->d()Ll0/q1;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    if-eqz v8, :cond_1

    .line 35
    .line 36
    iget-object v8, v8, Ll0/q1;->a:Lb3/l0;

    .line 37
    .line 38
    iget-object v8, v8, Lb3/l0;->a:Lb3/k0;

    .line 39
    .line 40
    if-eqz v8, :cond_1

    .line 41
    .line 42
    iget-object v8, v8, Lb3/k0;->a:Lb3/g;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v8, 0x0

    .line 46
    :goto_0
    invoke-virtual {v7, v8}, Lb3/g;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    if-nez v8, :cond_2

    .line 51
    .line 52
    goto/16 :goto_18

    .line 53
    .line 54
    :cond_2
    invoke-static/range {p1 .. p1}, Lc3/a;->t(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const-wide v10, 0xffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const/16 v12, 0x20

    .line 65
    .line 66
    iget-object v13, v0, Lu0/p;->d:Lw0/r1;

    .line 67
    .line 68
    if-eqz v4, :cond_6

    .line 69
    .line 70
    invoke-static/range {p1 .. p1}, Lu0/g;->k(Ljava/lang/Object;)Landroid/view/inputmethod/SelectGesture;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Lc3/a;->j(Landroid/view/inputmethod/SelectGesture;)Landroid/graphics/RectF;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-static {v7}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v4}, Lc3/a;->e(Landroid/view/inputmethod/SelectGesture;)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eq v9, v5, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/4 v8, 0x1

    .line 90
    :goto_1
    invoke-static {v6, v7, v8}, Lp4/o;->G(Ll0/s0;Lx1/c;I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    invoke-static {v6, v7}, Lb3/n0;->c(J)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_4

    .line 99
    .line 100
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    goto/16 :goto_18

    .line 109
    .line 110
    :cond_4
    new-instance v4, Lg3/v;

    .line 111
    .line 112
    shr-long v8, v6, v12

    .line 113
    .line 114
    long-to-int v9, v8

    .line 115
    and-long/2addr v6, v10

    .line 116
    long-to-int v7, v6

    .line 117
    invoke-direct {v4, v9, v7}, Lg3/v;-><init>(II)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ls0/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    if-eqz v13, :cond_5

    .line 124
    .line 125
    invoke-virtual {v13, v5}, Lw0/r1;->h(Z)V

    .line 126
    .line 127
    .line 128
    :cond_5
    :goto_2
    const/4 v4, 0x1

    .line 129
    goto/16 :goto_18

    .line 130
    .line 131
    :cond_6
    invoke-static/range {p1 .. p1}, Lu0/g;->t(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_a

    .line 136
    .line 137
    invoke-static/range {p1 .. p1}, Lu0/g;->f(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteGesture;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v4}, Lc3/a;->c(Landroid/view/inputmethod/DeleteGesture;)I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eq v9, v5, :cond_7

    .line 146
    .line 147
    const/4 v9, 0x0

    .line 148
    goto :goto_3

    .line 149
    :cond_7
    const/4 v9, 0x1

    .line 150
    :goto_3
    invoke-static {v4}, Lc3/a;->h(Landroid/view/inputmethod/DeleteGesture;)Landroid/graphics/RectF;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    invoke-static {v10}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    invoke-static {v6, v10, v9}, Lp4/o;->G(Ll0/s0;Lx1/c;I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v10

    .line 162
    invoke-static {v10, v11}, Lb3/n0;->c(J)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_8

    .line 167
    .line 168
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    goto/16 :goto_18

    .line 177
    .line 178
    :cond_8
    if-ne v9, v5, :cond_9

    .line 179
    .line 180
    const/4 v8, 0x1

    .line 181
    :cond_9
    invoke-static {v10, v11, v7, v8, v3}, Lp4/e;->t(JLb3/g;ZLs0/d;)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_a
    invoke-static/range {p1 .. p1}, Lu0/g;->u(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-eqz v4, :cond_d

    .line 190
    .line 191
    invoke-static/range {p1 .. p1}, Lu0/g;->l(Ljava/lang/Object;)Landroid/view/inputmethod/SelectRangeGesture;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-static {v4}, Lu0/g;->e(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-static {v7}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-static {v4}, Lu0/g;->r(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-static {v9}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 208
    .line 209
    .line 210
    move-result-object v9

    .line 211
    invoke-static {v4}, Lc3/a;->f(Landroid/view/inputmethod/SelectRangeGesture;)I

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    if-eq v14, v5, :cond_b

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_b
    const/4 v8, 0x1

    .line 219
    :goto_4
    invoke-static {v6, v7, v9, v8}, Lp4/o;->l(Ll0/s0;Lx1/c;Lx1/c;I)J

    .line 220
    .line 221
    .line 222
    move-result-wide v6

    .line 223
    invoke-static {v6, v7}, Lb3/n0;->c(J)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_c

    .line 228
    .line 229
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    goto/16 :goto_18

    .line 238
    .line 239
    :cond_c
    new-instance v4, Lg3/v;

    .line 240
    .line 241
    shr-long v8, v6, v12

    .line 242
    .line 243
    long-to-int v9, v8

    .line 244
    and-long/2addr v6, v10

    .line 245
    long-to-int v7, v6

    .line 246
    invoke-direct {v4, v9, v7}, Lg3/v;-><init>(II)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v4}, Ls0/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    if-eqz v13, :cond_5

    .line 253
    .line 254
    invoke-virtual {v13, v5}, Lw0/r1;->h(Z)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :cond_d
    invoke-static/range {p1 .. p1}, Lu0/g;->v(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_11

    .line 264
    .line 265
    invoke-static/range {p1 .. p1}, Lu0/g;->g(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteRangeGesture;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-static {v4}, Lc3/a;->d(Landroid/view/inputmethod/DeleteRangeGesture;)I

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    if-eq v9, v5, :cond_e

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    goto :goto_5

    .line 277
    :cond_e
    const/4 v9, 0x1

    .line 278
    :goto_5
    invoke-static {v4}, Lc3/a;->i(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    invoke-static {v10}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    invoke-static {v4}, Lc3/a;->w(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 287
    .line 288
    .line 289
    move-result-object v11

    .line 290
    invoke-static {v11}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-static {v6, v10, v11, v9}, Lp4/o;->l(Ll0/s0;Lx1/c;Lx1/c;I)J

    .line 295
    .line 296
    .line 297
    move-result-wide v10

    .line 298
    invoke-static {v10, v11}, Lb3/n0;->c(J)Z

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    if-eqz v6, :cond_f

    .line 303
    .line 304
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    goto/16 :goto_18

    .line 313
    .line 314
    :cond_f
    if-ne v9, v5, :cond_10

    .line 315
    .line 316
    const/4 v8, 0x1

    .line 317
    :cond_10
    invoke-static {v10, v11, v7, v8, v3}, Lp4/e;->t(JLb3/g;ZLs0/d;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_2

    .line 321
    .line 322
    :cond_11
    invoke-static/range {p1 .. p1}, Lu0/g;->s(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    const/4 v10, 0x2

    .line 327
    iget-object v11, v0, Lu0/p;->e:Lr2/q2;

    .line 328
    .line 329
    const/4 v13, -0x1

    .line 330
    if-eqz v4, :cond_1a

    .line 331
    .line 332
    invoke-static/range {p1 .. p1}, Lu0/g;->i(Ljava/lang/Object;)Landroid/view/inputmethod/JoinOrSplitGesture;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    if-nez v11, :cond_12

    .line 337
    .line 338
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    goto/16 :goto_18

    .line 347
    .line 348
    :cond_12
    invoke-static {v4}, Lu0/g;->c(Landroid/view/inputmethod/JoinOrSplitGesture;)Landroid/graphics/PointF;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    invoke-static {v9}, Lp4/o;->r(Landroid/graphics/PointF;)J

    .line 353
    .line 354
    .line 355
    move-result-wide v14

    .line 356
    invoke-static {v6, v14, v15, v11}, Lp4/o;->k(Ll0/s0;JLr2/q2;)I

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    if-eq v9, v13, :cond_19

    .line 361
    .line 362
    invoke-virtual {v6}, Ll0/s0;->d()Ll0/q1;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    if-eqz v6, :cond_13

    .line 367
    .line 368
    iget-object v6, v6, Ll0/q1;->a:Lb3/l0;

    .line 369
    .line 370
    invoke-static {v6, v9}, Lp4/o;->n(Lb3/l0;I)Z

    .line 371
    .line 372
    .line 373
    move-result v6

    .line 374
    if-ne v6, v5, :cond_13

    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_13
    move v4, v9

    .line 378
    :goto_6
    if-lez v4, :cond_15

    .line 379
    .line 380
    invoke-static {v7, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    invoke-static {v6}, Lp4/o;->L(I)Z

    .line 385
    .line 386
    .line 387
    move-result v11

    .line 388
    if-nez v11, :cond_14

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_14
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    sub-int/2addr v4, v6

    .line 396
    goto :goto_6

    .line 397
    :cond_15
    :goto_7
    iget-object v6, v7, Lb3/g;->b:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-ge v9, v6, :cond_17

    .line 404
    .line 405
    invoke-static {v7, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    invoke-static {v6}, Lp4/o;->L(I)Z

    .line 410
    .line 411
    .line 412
    move-result v11

    .line 413
    if-nez v11, :cond_16

    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_16
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    add-int/2addr v9, v6

    .line 421
    goto :goto_7

    .line 422
    :cond_17
    :goto_8
    invoke-static {v4, v9}, Lb3/d0;->b(II)J

    .line 423
    .line 424
    .line 425
    move-result-wide v13

    .line 426
    invoke-static {v13, v14}, Lb3/n0;->c(J)Z

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    if-eqz v4, :cond_18

    .line 431
    .line 432
    shr-long v6, v13, v12

    .line 433
    .line 434
    long-to-int v4, v6

    .line 435
    new-instance v6, Lg3/v;

    .line 436
    .line 437
    invoke-direct {v6, v4, v4}, Lg3/v;-><init>(II)V

    .line 438
    .line 439
    .line 440
    new-instance v4, Lg3/a;

    .line 441
    .line 442
    const-string v7, " "

    .line 443
    .line 444
    invoke-direct {v4, v5, v7}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-array v7, v10, [Lg3/g;

    .line 448
    .line 449
    aput-object v6, v7, v8

    .line 450
    .line 451
    aput-object v4, v7, v5

    .line 452
    .line 453
    new-instance v4, Lu0/i;

    .line 454
    .line 455
    invoke-direct {v4, v7}, Lu0/i;-><init>([Lg3/g;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v3, v4}, Ls0/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    goto/16 :goto_2

    .line 462
    .line 463
    :cond_18
    invoke-static {v13, v14, v7, v8, v3}, Lp4/e;->t(JLb3/g;ZLs0/d;)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_2

    .line 467
    .line 468
    :cond_19
    :goto_9
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    goto/16 :goto_18

    .line 477
    .line 478
    :cond_1a
    invoke-static/range {p1 .. p1}, Lc3/a;->y(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    if-eqz v4, :cond_1e

    .line 483
    .line 484
    invoke-static/range {p1 .. p1}, Lc3/a;->m(Ljava/lang/Object;)Landroid/view/inputmethod/InsertGesture;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    if-nez v11, :cond_1b

    .line 489
    .line 490
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    goto/16 :goto_18

    .line 499
    .line 500
    :cond_1b
    invoke-static {v4}, Lu0/g;->b(Landroid/view/inputmethod/InsertGesture;)Landroid/graphics/PointF;

    .line 501
    .line 502
    .line 503
    move-result-object v7

    .line 504
    invoke-static {v7}, Lp4/o;->r(Landroid/graphics/PointF;)J

    .line 505
    .line 506
    .line 507
    move-result-wide v14

    .line 508
    invoke-static {v6, v14, v15, v11}, Lp4/o;->k(Ll0/s0;JLr2/q2;)I

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    if-eq v7, v13, :cond_1d

    .line 513
    .line 514
    invoke-virtual {v6}, Ll0/s0;->d()Ll0/q1;

    .line 515
    .line 516
    .line 517
    move-result-object v6

    .line 518
    if-eqz v6, :cond_1c

    .line 519
    .line 520
    iget-object v6, v6, Ll0/q1;->a:Lb3/l0;

    .line 521
    .line 522
    invoke-static {v6, v7}, Lp4/o;->n(Lb3/l0;I)Z

    .line 523
    .line 524
    .line 525
    move-result v6

    .line 526
    if-ne v6, v5, :cond_1c

    .line 527
    .line 528
    goto :goto_a

    .line 529
    :cond_1c
    invoke-static {v4}, Lu0/g;->n(Landroid/view/inputmethod/InsertGesture;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    new-instance v6, Lg3/v;

    .line 534
    .line 535
    invoke-direct {v6, v7, v7}, Lg3/v;-><init>(II)V

    .line 536
    .line 537
    .line 538
    new-instance v7, Lg3/a;

    .line 539
    .line 540
    invoke-direct {v7, v5, v4}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 541
    .line 542
    .line 543
    new-array v4, v10, [Lg3/g;

    .line 544
    .line 545
    aput-object v6, v4, v8

    .line 546
    .line 547
    aput-object v7, v4, v5

    .line 548
    .line 549
    new-instance v6, Lu0/i;

    .line 550
    .line 551
    invoke-direct {v6, v4}, Lu0/i;-><init>([Lg3/g;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v3, v6}, Ls0/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    goto/16 :goto_2

    .line 558
    .line 559
    :cond_1d
    :goto_a
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    goto/16 :goto_18

    .line 568
    .line 569
    :cond_1e
    invoke-static/range {p1 .. p1}, Lu0/g;->o(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    if-eqz v4, :cond_31

    .line 574
    .line 575
    invoke-static/range {p1 .. p1}, Lu0/g;->j(Ljava/lang/Object;)Landroid/view/inputmethod/RemoveSpaceGesture;

    .line 576
    .line 577
    .line 578
    move-result-object v4

    .line 579
    invoke-virtual {v6}, Ll0/s0;->d()Ll0/q1;

    .line 580
    .line 581
    .line 582
    move-result-object v14

    .line 583
    if-eqz v14, :cond_1f

    .line 584
    .line 585
    iget-object v14, v14, Ll0/q1;->a:Lb3/l0;

    .line 586
    .line 587
    goto :goto_b

    .line 588
    :cond_1f
    const/4 v14, 0x0

    .line 589
    :goto_b
    invoke-static {v4}, Lu0/g;->d(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    .line 590
    .line 591
    .line 592
    move-result-object v15

    .line 593
    move-object/from16 v17, v6

    .line 594
    .line 595
    const/16 v16, 0x1

    .line 596
    .line 597
    invoke-static {v15}, Lp4/o;->r(Landroid/graphics/PointF;)J

    .line 598
    .line 599
    .line 600
    move-result-wide v5

    .line 601
    invoke-static {v4}, Lu0/g;->q(Landroid/view/inputmethod/RemoveSpaceGesture;)Landroid/graphics/PointF;

    .line 602
    .line 603
    .line 604
    move-result-object v15

    .line 605
    invoke-static {v15}, Lp4/o;->r(Landroid/graphics/PointF;)J

    .line 606
    .line 607
    .line 608
    move-result-wide v8

    .line 609
    invoke-virtual/range {v17 .. v17}, Ll0/s0;->c()Lo2/w;

    .line 610
    .line 611
    .line 612
    move-result-object v15

    .line 613
    if-eqz v14, :cond_24

    .line 614
    .line 615
    iget-object v14, v14, Lb3/l0;->b:Lb3/o;

    .line 616
    .line 617
    if-nez v15, :cond_20

    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_20
    invoke-interface {v15, v5, v6}, Lo2/w;->C(J)J

    .line 621
    .line 622
    .line 623
    move-result-wide v5

    .line 624
    invoke-interface {v15, v8, v9}, Lo2/w;->C(J)J

    .line 625
    .line 626
    .line 627
    move-result-wide v8

    .line 628
    invoke-static {v14, v5, v6, v11}, Lp4/o;->F(Lb3/o;JLr2/q2;)I

    .line 629
    .line 630
    .line 631
    move-result v15

    .line 632
    invoke-static {v14, v8, v9, v11}, Lp4/o;->F(Lb3/o;JLr2/q2;)I

    .line 633
    .line 634
    .line 635
    move-result v11

    .line 636
    if-ne v15, v13, :cond_21

    .line 637
    .line 638
    if-ne v11, v13, :cond_23

    .line 639
    .line 640
    sget-wide v5, Lb3/n0;->b:J

    .line 641
    .line 642
    goto :goto_e

    .line 643
    :cond_21
    if-ne v11, v13, :cond_22

    .line 644
    .line 645
    goto :goto_c

    .line 646
    :cond_22
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 647
    .line 648
    .line 649
    move-result v15

    .line 650
    :goto_c
    move v11, v15

    .line 651
    :cond_23
    invoke-virtual {v14, v11}, Lb3/o;->f(I)F

    .line 652
    .line 653
    .line 654
    move-result v15

    .line 655
    invoke-virtual {v14, v11}, Lb3/o;->b(I)F

    .line 656
    .line 657
    .line 658
    move-result v11

    .line 659
    add-float/2addr v11, v15

    .line 660
    int-to-float v15, v10

    .line 661
    div-float/2addr v11, v15

    .line 662
    new-instance v15, Lx1/c;

    .line 663
    .line 664
    shr-long/2addr v5, v12

    .line 665
    long-to-int v6, v5

    .line 666
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    shr-long/2addr v8, v12

    .line 671
    long-to-int v9, v8

    .line 672
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 673
    .line 674
    .line 675
    move-result v8

    .line 676
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    const p1, 0x3dcccccd    # 0.1f

    .line 681
    .line 682
    .line 683
    sub-float v8, v11, p1

    .line 684
    .line 685
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 686
    .line 687
    .line 688
    move-result v6

    .line 689
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 690
    .line 691
    .line 692
    move-result v9

    .line 693
    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    .line 694
    .line 695
    .line 696
    move-result v6

    .line 697
    add-float v11, v11, p1

    .line 698
    .line 699
    invoke-direct {v15, v5, v8, v6, v11}, Lx1/c;-><init>(FFFF)V

    .line 700
    .line 701
    .line 702
    sget-object v5, Lb3/j0;->a:Lb3/i0;

    .line 703
    .line 704
    const/4 v6, 0x0

    .line 705
    invoke-virtual {v14, v15, v6, v5}, Lb3/o;->h(Lx1/c;ILb3/i0;)J

    .line 706
    .line 707
    .line 708
    move-result-wide v8

    .line 709
    move-wide v5, v8

    .line 710
    goto :goto_e

    .line 711
    :cond_24
    :goto_d
    sget-wide v5, Lb3/n0;->b:J

    .line 712
    .line 713
    :goto_e
    invoke-static {v5, v6}, Lb3/n0;->c(J)Z

    .line 714
    .line 715
    .line 716
    move-result v8

    .line 717
    if-eqz v8, :cond_25

    .line 718
    .line 719
    invoke-static {v4}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    invoke-static {v4, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 724
    .line 725
    .line 726
    move-result v4

    .line 727
    goto/16 :goto_18

    .line 728
    .line 729
    :cond_25
    invoke-static {v5, v6}, Lb3/n0;->f(J)I

    .line 730
    .line 731
    .line 732
    move-result v8

    .line 733
    invoke-static {v5, v6}, Lb3/n0;->e(J)I

    .line 734
    .line 735
    .line 736
    move-result v9

    .line 737
    invoke-virtual {v7, v8, v9}, Lb3/g;->a(II)Lb3/g;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    iget-object v7, v7, Lb3/g;->b:Ljava/lang/String;

    .line 742
    .line 743
    const-string v8, "\\s+"

    .line 744
    .line 745
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 746
    .line 747
    .line 748
    move-result-object v8

    .line 749
    const-string v9, "compile(...)"

    .line 750
    .line 751
    invoke-static {v8, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    const-string v9, "input"

    .line 755
    .line 756
    invoke-static {v7, v9}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 760
    .line 761
    .line 762
    move-result-object v8

    .line 763
    const-string v9, "matcher(...)"

    .line 764
    .line 765
    invoke-static {v8, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    const/4 v11, 0x0

    .line 769
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->find(I)Z

    .line 770
    .line 771
    .line 772
    move-result v14

    .line 773
    if-nez v14, :cond_26

    .line 774
    .line 775
    const/4 v11, 0x0

    .line 776
    goto :goto_f

    .line 777
    :cond_26
    new-instance v11, La2/b;

    .line 778
    .line 779
    invoke-direct {v11, v8, v7}, La2/b;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 780
    .line 781
    .line 782
    :goto_f
    if-nez v11, :cond_27

    .line 783
    .line 784
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    move-object/from16 p1, v4

    .line 789
    .line 790
    const/4 v10, -0x1

    .line 791
    const/4 v12, -0x1

    .line 792
    const/16 v17, 0x20

    .line 793
    .line 794
    :goto_10
    const/4 v0, -0x1

    .line 795
    goto/16 :goto_16

    .line 796
    .line 797
    :cond_27
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 798
    .line 799
    .line 800
    move-result v8

    .line 801
    new-instance v14, Ljava/lang/StringBuilder;

    .line 802
    .line 803
    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 804
    .line 805
    .line 806
    move-object v15, v11

    .line 807
    const/4 v11, 0x0

    .line 808
    const/4 v12, -0x1

    .line 809
    const/16 v17, 0x20

    .line 810
    .line 811
    :goto_11
    invoke-virtual {v15}, La2/b;->I()Ll9/d;

    .line 812
    .line 813
    .line 814
    move-result-object v10

    .line 815
    iget v10, v10, Ll9/b;->a:I

    .line 816
    .line 817
    invoke-virtual {v14, v7, v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    if-ne v12, v13, :cond_28

    .line 821
    .line 822
    invoke-virtual {v15}, La2/b;->I()Ll9/d;

    .line 823
    .line 824
    .line 825
    move-result-object v10

    .line 826
    iget v12, v10, Ll9/b;->a:I

    .line 827
    .line 828
    :cond_28
    invoke-virtual {v15}, La2/b;->I()Ll9/d;

    .line 829
    .line 830
    .line 831
    move-result-object v10

    .line 832
    iget v10, v10, Ll9/b;->b:I

    .line 833
    .line 834
    add-int/lit8 v10, v10, 0x1

    .line 835
    .line 836
    const-string v11, ""

    .line 837
    .line 838
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v15}, La2/b;->I()Ll9/d;

    .line 842
    .line 843
    .line 844
    move-result-object v11

    .line 845
    iget v11, v11, Ll9/b;->b:I

    .line 846
    .line 847
    add-int/lit8 v11, v11, 0x1

    .line 848
    .line 849
    iget-object v13, v15, La2/b;->c:Ljava/lang/Object;

    .line 850
    .line 851
    check-cast v13, Ljava/lang/CharSequence;

    .line 852
    .line 853
    iget-object v15, v15, La2/b;->b:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v15, Ljava/util/regex/Matcher;

    .line 856
    .line 857
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    .line 858
    .line 859
    .line 860
    move-result v19

    .line 861
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->end()I

    .line 862
    .line 863
    .line 864
    move-result v0

    .line 865
    move-object/from16 p1, v4

    .line 866
    .line 867
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    .line 868
    .line 869
    .line 870
    move-result v4

    .line 871
    if-ne v0, v4, :cond_29

    .line 872
    .line 873
    const/4 v0, 0x1

    .line 874
    goto :goto_12

    .line 875
    :cond_29
    const/4 v0, 0x0

    .line 876
    :goto_12
    add-int v0, v19, v0

    .line 877
    .line 878
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    if-gt v0, v4, :cond_2b

    .line 883
    .line 884
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    .line 885
    .line 886
    .line 887
    move-result-object v4

    .line 888
    invoke-virtual {v4, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    invoke-static {v4, v9}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->find(I)Z

    .line 896
    .line 897
    .line 898
    move-result v0

    .line 899
    if-nez v0, :cond_2a

    .line 900
    .line 901
    const/4 v0, 0x0

    .line 902
    goto :goto_13

    .line 903
    :cond_2a
    new-instance v0, La2/b;

    .line 904
    .line 905
    invoke-direct {v0, v4, v13}, La2/b;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 906
    .line 907
    .line 908
    :goto_13
    move-object v15, v0

    .line 909
    goto :goto_14

    .line 910
    :cond_2b
    const/4 v15, 0x0

    .line 911
    :goto_14
    if-ge v11, v8, :cond_2d

    .line 912
    .line 913
    if-nez v15, :cond_2c

    .line 914
    .line 915
    goto :goto_15

    .line 916
    :cond_2c
    move-object/from16 v0, p0

    .line 917
    .line 918
    move-object/from16 v4, p1

    .line 919
    .line 920
    const/4 v13, -0x1

    .line 921
    goto :goto_11

    .line 922
    :cond_2d
    :goto_15
    if-ge v11, v8, :cond_2e

    .line 923
    .line 924
    invoke-virtual {v14, v7, v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    :cond_2e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v7

    .line 931
    const-string v0, "toString(...)"

    .line 932
    .line 933
    invoke-static {v7, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    goto/16 :goto_10

    .line 937
    .line 938
    :goto_16
    if-eq v12, v0, :cond_30

    .line 939
    .line 940
    if-ne v10, v0, :cond_2f

    .line 941
    .line 942
    goto :goto_17

    .line 943
    :cond_2f
    shr-long v8, v5, v17

    .line 944
    .line 945
    long-to-int v0, v8

    .line 946
    add-int v4, v0, v12

    .line 947
    .line 948
    add-int/2addr v0, v10

    .line 949
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 950
    .line 951
    .line 952
    move-result v8

    .line 953
    invoke-static {v5, v6}, Lb3/n0;->d(J)I

    .line 954
    .line 955
    .line 956
    move-result v5

    .line 957
    sub-int/2addr v5, v10

    .line 958
    sub-int/2addr v8, v5

    .line 959
    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v5

    .line 963
    const-string v6, "substring(...)"

    .line 964
    .line 965
    invoke-static {v5, v6}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    new-instance v6, Lg3/v;

    .line 969
    .line 970
    invoke-direct {v6, v4, v0}, Lg3/v;-><init>(II)V

    .line 971
    .line 972
    .line 973
    new-instance v0, Lg3/a;

    .line 974
    .line 975
    const/4 v4, 0x1

    .line 976
    invoke-direct {v0, v4, v5}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 977
    .line 978
    .line 979
    const/4 v5, 0x2

    .line 980
    new-array v5, v5, [Lg3/g;

    .line 981
    .line 982
    const/16 v18, 0x0

    .line 983
    .line 984
    aput-object v6, v5, v18

    .line 985
    .line 986
    aput-object v0, v5, v4

    .line 987
    .line 988
    new-instance v0, Lu0/i;

    .line 989
    .line 990
    invoke-direct {v0, v5}, Lu0/i;-><init>([Lg3/g;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v3, v0}, Ls0/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    goto/16 :goto_2

    .line 997
    .line 998
    :cond_30
    :goto_17
    invoke-static/range {p1 .. p1}, Lu0/g;->h(Ljava/lang/Object;)Landroid/view/inputmethod/HandwritingGesture;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-static {v0, v3}, Lp4/e;->m(Landroid/view/inputmethod/HandwritingGesture;Ls0/d;)I

    .line 1003
    .line 1004
    .line 1005
    move-result v4

    .line 1006
    goto :goto_18

    .line 1007
    :cond_31
    const/4 v5, 0x2

    .line 1008
    const/4 v4, 0x2

    .line 1009
    :cond_32
    :goto_18
    if-nez v2, :cond_33

    .line 1010
    .line 1011
    goto :goto_19

    .line 1012
    :cond_33
    if-eqz v1, :cond_34

    .line 1013
    .line 1014
    new-instance v0, Ll8/b;

    .line 1015
    .line 1016
    const/4 v3, 0x1

    .line 1017
    invoke-direct {v0, v4, v3, v2}, Ll8/b;-><init>(IILjava/lang/Object;)V

    .line 1018
    .line 1019
    .line 1020
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1021
    .line 1022
    .line 1023
    return-void

    .line 1024
    :cond_34
    invoke-static {v2, v4}, Lr2/g0;->j(Ljava/util/function/IntConsumer;I)V

    .line 1025
    .line 1026
    .line 1027
    :cond_35
    :goto_19
    return-void
.end method

.method public final performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    return p1
.end method

.method public final previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_14

    .line 7
    .line 8
    iget-object v0, p0, Lu0/p;->c:Ll0/s0;

    .line 9
    .line 10
    if-eqz v0, :cond_14

    .line 11
    .line 12
    iget-object v1, v0, Ll0/s0;->j:Lb3/g;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Ll0/s0;->d()Ll0/q1;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v3, v3, Ll0/q1;->a:Lb3/l0;

    .line 25
    .line 26
    iget-object v3, v3, Lb3/l0;->a:Lb3/k0;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iget-object v3, v3, Lb3/k0;->a:Lb3/g;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    :goto_0
    invoke-virtual {v1, v3}, Lb3/g;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_2
    invoke-static {p1}, Lc3/a;->t(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sget-object v3, Ll0/i0;->a:Ll0/i0;

    .line 47
    .line 48
    iget-object v4, p0, Lu0/p;->d:Lw0/r1;

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    if-eqz v1, :cond_6

    .line 52
    .line 53
    invoke-static {p1}, Lu0/g;->k(Ljava/lang/Object;)Landroid/view/inputmethod/SelectGesture;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz v4, :cond_12

    .line 58
    .line 59
    invoke-static {p1}, Lc3/a;->j(Landroid/view/inputmethod/SelectGesture;)Landroid/graphics/RectF;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {p1}, Lc3/a;->e(Landroid/view/inputmethod/SelectGesture;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eq p1, v5, :cond_3

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/4 p1, 0x1

    .line 76
    :goto_1
    invoke-static {v0, v1, p1}, Lp4/o;->G(Ll0/s0;Lx1/c;I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Ll0/s0;->f(J)V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    sget-wide v6, Lb3/n0;->b:J

    .line 92
    .line 93
    invoke-virtual {p1, v6, v7}, Ll0/s0;->e(J)V

    .line 94
    .line 95
    .line 96
    :cond_5
    invoke-static {v0, v1}, Lb3/n0;->c(J)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_12

    .line 101
    .line 102
    invoke-virtual {v4, v2}, Lw0/r1;->s(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v3}, Lw0/r1;->p(Ll0/i0;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_6
    invoke-static {p1}, Lu0/g;->t(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_a

    .line 115
    .line 116
    invoke-static {p1}, Lu0/g;->f(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteGesture;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz v4, :cond_12

    .line 121
    .line 122
    invoke-static {p1}, Lc3/a;->h(Landroid/view/inputmethod/DeleteGesture;)Landroid/graphics/RectF;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {p1}, Lc3/a;->c(Landroid/view/inputmethod/DeleteGesture;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eq p1, v5, :cond_7

    .line 135
    .line 136
    const/4 p1, 0x0

    .line 137
    goto :goto_2

    .line 138
    :cond_7
    const/4 p1, 0x1

    .line 139
    :goto_2
    invoke-static {v0, v1, p1}, Lp4/o;->G(Ll0/s0;Lx1/c;I)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 144
    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1, v0, v1}, Ll0/s0;->e(J)V

    .line 148
    .line 149
    .line 150
    :cond_8
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 151
    .line 152
    if-eqz p1, :cond_9

    .line 153
    .line 154
    sget-wide v6, Lb3/n0;->b:J

    .line 155
    .line 156
    invoke-virtual {p1, v6, v7}, Ll0/s0;->f(J)V

    .line 157
    .line 158
    .line 159
    :cond_9
    invoke-static {v0, v1}, Lb3/n0;->c(J)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_12

    .line 164
    .line 165
    invoke-virtual {v4, v2}, Lw0/r1;->s(Z)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v3}, Lw0/r1;->p(Ll0/i0;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_5

    .line 172
    .line 173
    :cond_a
    invoke-static {p1}, Lu0/g;->u(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_e

    .line 178
    .line 179
    invoke-static {p1}, Lu0/g;->l(Ljava/lang/Object;)Landroid/view/inputmethod/SelectRangeGesture;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz v4, :cond_12

    .line 184
    .line 185
    invoke-static {p1}, Lu0/g;->e(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-static {v1}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {p1}, Lu0/g;->r(Landroid/view/inputmethod/SelectRangeGesture;)Landroid/graphics/RectF;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-static {v6}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {p1}, Lc3/a;->f(Landroid/view/inputmethod/SelectRangeGesture;)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eq p1, v5, :cond_b

    .line 206
    .line 207
    const/4 p1, 0x0

    .line 208
    goto :goto_3

    .line 209
    :cond_b
    const/4 p1, 0x1

    .line 210
    :goto_3
    invoke-static {v0, v1, v6, p1}, Lp4/o;->l(Ll0/s0;Lx1/c;Lx1/c;I)J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 215
    .line 216
    if-eqz p1, :cond_c

    .line 217
    .line 218
    invoke-virtual {p1, v0, v1}, Ll0/s0;->f(J)V

    .line 219
    .line 220
    .line 221
    :cond_c
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 222
    .line 223
    if-eqz p1, :cond_d

    .line 224
    .line 225
    sget-wide v6, Lb3/n0;->b:J

    .line 226
    .line 227
    invoke-virtual {p1, v6, v7}, Ll0/s0;->e(J)V

    .line 228
    .line 229
    .line 230
    :cond_d
    invoke-static {v0, v1}, Lb3/n0;->c(J)Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-nez p1, :cond_12

    .line 235
    .line 236
    invoke-virtual {v4, v2}, Lw0/r1;->s(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v3}, Lw0/r1;->p(Ll0/i0;)V

    .line 240
    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_e
    invoke-static {p1}, Lu0/g;->v(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_14

    .line 248
    .line 249
    invoke-static {p1}, Lu0/g;->g(Ljava/lang/Object;)Landroid/view/inputmethod/DeleteRangeGesture;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz v4, :cond_12

    .line 254
    .line 255
    invoke-static {p1}, Lc3/a;->i(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {v1}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {p1}, Lc3/a;->w(Landroid/view/inputmethod/DeleteRangeGesture;)Landroid/graphics/RectF;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-static {v6}, Ly1/h0;->F(Landroid/graphics/RectF;)Lx1/c;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-static {p1}, Lc3/a;->d(Landroid/view/inputmethod/DeleteRangeGesture;)I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eq p1, v5, :cond_f

    .line 276
    .line 277
    const/4 p1, 0x0

    .line 278
    goto :goto_4

    .line 279
    :cond_f
    const/4 p1, 0x1

    .line 280
    :goto_4
    invoke-static {v0, v1, v6, p1}, Lp4/o;->l(Ll0/s0;Lx1/c;Lx1/c;I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v0

    .line 284
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 285
    .line 286
    if-eqz p1, :cond_10

    .line 287
    .line 288
    invoke-virtual {p1, v0, v1}, Ll0/s0;->e(J)V

    .line 289
    .line 290
    .line 291
    :cond_10
    iget-object p1, v4, Lw0/r1;->d:Ll0/s0;

    .line 292
    .line 293
    if-eqz p1, :cond_11

    .line 294
    .line 295
    sget-wide v6, Lb3/n0;->b:J

    .line 296
    .line 297
    invoke-virtual {p1, v6, v7}, Ll0/s0;->f(J)V

    .line 298
    .line 299
    .line 300
    :cond_11
    invoke-static {v0, v1}, Lb3/n0;->c(J)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-nez p1, :cond_12

    .line 305
    .line 306
    invoke-virtual {v4, v2}, Lw0/r1;->s(Z)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v3}, Lw0/r1;->p(Ll0/i0;)V

    .line 310
    .line 311
    .line 312
    :cond_12
    :goto_5
    if-eqz p2, :cond_13

    .line 313
    .line 314
    new-instance p1, Lu0/h;

    .line 315
    .line 316
    const/4 v0, 0x0

    .line 317
    invoke-direct {p1, v0, v4}, Lu0/h;-><init>(ILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p2, p1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 321
    .line 322
    .line 323
    :cond_13
    return v5

    .line 324
    :cond_14
    :goto_6
    return v2
.end method

.method public final reportFullscreenMode(Z)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final requestCursorUpdates(I)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    and-int/lit8 v3, p1, 0x2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v3, 0x0

    .line 21
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v5, 0x21

    .line 24
    .line 25
    if-lt v4, v5, :cond_8

    .line 26
    .line 27
    and-int/lit8 v5, p1, 0x10

    .line 28
    .line 29
    if-eqz v5, :cond_2

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const/4 v5, 0x0

    .line 34
    :goto_2
    and-int/lit8 v6, p1, 0x8

    .line 35
    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    const/4 v6, 0x0

    .line 41
    :goto_3
    and-int/lit8 v7, p1, 0x4

    .line 42
    .line 43
    if-eqz v7, :cond_4

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    const/4 v7, 0x0

    .line 48
    :goto_4
    const/16 v8, 0x22

    .line 49
    .line 50
    if-lt v4, v8, :cond_5

    .line 51
    .line 52
    and-int/lit8 p1, p1, 0x20

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_5
    if-nez v5, :cond_7

    .line 58
    .line 59
    if-nez v6, :cond_7

    .line 60
    .line 61
    if-nez v7, :cond_7

    .line 62
    .line 63
    if-nez v1, :cond_7

    .line 64
    .line 65
    if-lt v4, v8, :cond_6

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    :goto_5
    const/4 v1, 0x1

    .line 69
    :goto_6
    const/4 v5, 0x1

    .line 70
    const/4 v6, 0x1

    .line 71
    goto :goto_7

    .line 72
    :cond_6
    move p1, v1

    .line 73
    goto :goto_5

    .line 74
    :cond_7
    move p1, v1

    .line 75
    move v1, v7

    .line 76
    goto :goto_7

    .line 77
    :cond_8
    const/4 p1, 0x0

    .line 78
    goto :goto_6

    .line 79
    :goto_7
    iget-object v4, p0, Lu0/p;->a:Lkb/a;

    .line 80
    .line 81
    iget-object v4, v4, Lkb/a;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Lu0/o;

    .line 84
    .line 85
    iget-object v4, v4, Lu0/o;->m:Lu0/l;

    .line 86
    .line 87
    iget-object v7, v4, Lu0/l;->c:Ljava/lang/Object;

    .line 88
    .line 89
    monitor-enter v7

    .line 90
    :try_start_0
    iput-boolean v5, v4, Lu0/l;->f:Z

    .line 91
    .line 92
    iput-boolean v6, v4, Lu0/l;->g:Z

    .line 93
    .line 94
    iput-boolean v1, v4, Lu0/l;->h:Z

    .line 95
    .line 96
    iput-boolean p1, v4, Lu0/l;->i:Z

    .line 97
    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    iput-boolean v2, v4, Lu0/l;->e:Z

    .line 101
    .line 102
    iget-object p1, v4, Lu0/l;->j:Lg3/w;

    .line 103
    .line 104
    if-eqz p1, :cond_9

    .line 105
    .line 106
    invoke-virtual {v4}, Lu0/l;->a()V

    .line 107
    .line 108
    .line 109
    goto :goto_8

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto :goto_9

    .line 112
    :cond_9
    :goto_8
    iput-boolean v3, v4, Lu0/l;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    monitor-exit v7

    .line 115
    return v2

    .line 116
    :goto_9
    monitor-exit v7

    .line 117
    throw p1

    .line 118
    :cond_a
    return v0
.end method

.method public final sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lu0/p;->a:Lkb/a;

    .line 6
    .line 7
    iget-object v0, v0, Lkb/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lu0/o;

    .line 10
    .line 11
    iget-object v0, v0, Lu0/o;->k:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/inputmethod/BaseInputConnection;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_0
    return v0
.end method

.method public final setComposingRegion(II)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lg3/t;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lg3/t;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lu0/p;->a(Lg3/g;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return v0
.end method

.method public final setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lg3/u;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p2, p1}, Lg3/u;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lu0/p;->a(Lg3/g;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return v0
.end method

.method public final setSelection(II)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu0/p;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lg3/v;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2}, Lg3/v;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lu0/p;->a(Lg3/g;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    return v0
.end method
