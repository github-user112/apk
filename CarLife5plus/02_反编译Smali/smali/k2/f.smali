.class public final Lk2/f;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg9/t;


# direct methods
.method public constructor <init>(Lg9/t;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lk2/f;->a:I

    .line 1
    iput-object p1, p0, Lk2/f;->b:Lg9/t;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkb/a;Lu1/d;Lg9/t;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lk2/f;->a:I

    .line 2
    iput-object p3, p0, Lk2/f;->b:Lg9/t;

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lk2/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lu1/d;

    .line 7
    .line 8
    iget-boolean v0, p1, Lr1/o;->n:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lq2/c2;->b:Lq2/c2;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p1, Lu1/d;->p:Lu1/d;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v0, "DragAndDropTarget self reference must be null at the start of a drag and drop session"

    .line 21
    .line 22
    invoke-static {v0}, Ln2/a;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Lu1/d;->p:Lu1/d;

    .line 27
    .line 28
    iget-object p1, p0, Lk2/f;->b:Lg9/t;

    .line 29
    .line 30
    iget-boolean v0, p1, Lg9/t;->a:Z

    .line 31
    .line 32
    iput-boolean v0, p1, Lg9/t;->a:Z

    .line 33
    .line 34
    sget-object p1, Lq2/c2;->a:Lq2/c2;

    .line 35
    .line 36
    :goto_1
    return-object p1

    .line 37
    :pswitch_0
    check-cast p1, Lk2/h;

    .line 38
    .line 39
    iget-boolean p1, p1, Lk2/h;->q:Z

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lk2/f;->b:Lg9/t;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p1, Lg9/t;->a:Z

    .line 47
    .line 48
    sget-object p1, Lq2/c2;->c:Lq2/c2;

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    sget-object p1, Lq2/c2;->a:Lq2/c2;

    .line 52
    .line 53
    :goto_2
    return-object p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
