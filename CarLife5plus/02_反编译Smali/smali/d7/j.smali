.class public final Ld7/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic n:I


# instance fields
.field public final a:Lcom/journeyapps/barcodescanner/CaptureActivity;

.field public final b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Lq5/f;

.field public final i:Ld6/h;

.field public final j:Landroid/os/Handler;

.field public k:Z

.field public final l:La2/d;

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/CaptureActivity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ld7/j;->c:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ld7/j;->d:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Ld7/j;->e:Z

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    iput-object v1, p0, Ld7/j;->f:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean v0, p0, Ld7/j;->g:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Ld7/j;->k:Z

    .line 20
    .line 21
    new-instance v1, La2/d;

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    invoke-direct {v1, v2, p0}, La2/d;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Ld7/j;->l:La2/d;

    .line 28
    .line 29
    new-instance v1, Ld7/e;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, v2, p0}, Ld7/e;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-boolean v0, p0, Ld7/j;->m:Z

    .line 36
    .line 37
    iput-object p1, p0, Ld7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 38
    .line 39
    iput-object p2, p0, Ld7/j;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget-object p2, p2, Ld7/f;->j:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance p2, Landroid/os/Handler;

    .line 51
    .line 52
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Ld7/j;->j:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance p2, Lq5/f;

    .line 58
    .line 59
    new-instance v0, Ld7/g;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {v0, p0, v1}, Ld7/g;-><init>(Ld7/j;I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, p1, v0}, Lq5/f;-><init>(Lcom/journeyapps/barcodescanner/CaptureActivity;Ld7/g;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Ld7/j;->h:Lq5/f;

    .line 69
    .line 70
    new-instance p2, Ld6/h;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Ld6/h;-><init>(Lcom/journeyapps/barcodescanner/CaptureActivity;)V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Ld7/j;->i:Ld6/h;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld7/j;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Ld7/f;->a:Le7/g;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean v1, v1, Le7/g;->g:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Ld7/j;->k:Z

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    iget-object v1, p0, Ld7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 23
    .line 24
    .line 25
    :goto_1
    iget-object v0, v0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Ld7/j;->h:Lq5/f;

    .line 31
    .line 32
    invoke-virtual {v0}, Lq5/f;->a()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld7/j;->a:Lcom/journeyapps/barcodescanner/CaptureActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    iget-boolean v1, p0, Ld7/j;->g:Z

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-boolean v1, p0, Ld7/j;->k:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const p1, 0x7f0e0084

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const v2, 0x7f0e0082

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    new-instance p1, Ld7/h;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Ld7/h;-><init>(Ld7/j;)V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0e0083

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    new-instance p1, Ld7/i;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Ld7/i;-><init>(Ld7/j;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-void
.end method
