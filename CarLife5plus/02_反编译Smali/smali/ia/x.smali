.class public final Lia/x;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lia/a0;

.field public final c:Lba/v;

.field public final d:Lg9/x;


# direct methods
.method public synthetic constructor <init>(Lia/a0;Lba/v;Lg9/x;I)V
    .locals 0

    .line 1
    iput p4, p0, Lia/x;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lia/x;->b:Lia/a0;

    .line 4
    .line 5
    iput-object p2, p0, Lia/x;->c:Lba/v;

    .line 6
    .line 7
    iput-object p3, p0, Lia/x;->d:Lg9/x;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lia/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lia/x;->b:Lia/a0;

    .line 7
    .line 8
    iget-object v0, v0, Lia/a0;->b:Lba/a;

    .line 9
    .line 10
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lha/a;

    .line 13
    .line 14
    iget-object v0, v0, Lha/a;->h:Lfa/h;

    .line 15
    .line 16
    iget-object v1, p0, Lia/x;->d:Lg9/x;

    .line 17
    .line 18
    iget-object v1, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lv9/k0;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v0, "field"

    .line 26
    .line 27
    iget-object v2, p0, Lia/x;->c:Lba/v;

    .line 28
    .line 29
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "descriptor"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    return-object v0

    .line 39
    :pswitch_0
    iget-object v0, p0, Lia/x;->b:Lia/a0;

    .line 40
    .line 41
    iget-object v1, v0, Lia/a0;->b:Lba/a;

    .line 42
    .line 43
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lha/a;

    .line 46
    .line 47
    iget-object v1, v1, Lha/a;->a:Lkb/o;

    .line 48
    .line 49
    new-instance v2, Lia/x;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    iget-object v4, p0, Lia/x;->c:Lba/v;

    .line 53
    .line 54
    iget-object v5, p0, Lia/x;->d:Lg9/x;

    .line 55
    .line 56
    invoke-direct {v2, v0, v4, v5, v3}, Lia/x;-><init>(Lia/a0;Lba/v;Lg9/x;I)V

    .line 57
    .line 58
    .line 59
    check-cast v1, Lkb/l;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v0, Lkb/i;

    .line 65
    .line 66
    invoke-direct {v0, v1, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
