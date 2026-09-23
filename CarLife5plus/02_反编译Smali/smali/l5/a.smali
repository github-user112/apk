.class public final synthetic Ll5/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll5/l;


# direct methods
.method public synthetic constructor <init>(Ll5/l;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll5/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll5/a;->b:Ll5/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ll5/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "$controller"

    .line 7
    .line 8
    iget-object v1, p0, Ll5/a;->b:Ll5/l;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, v1, Ll5/l;->p:Z

    .line 15
    .line 16
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    const-string v0, "$controller"

    .line 20
    .line 21
    iget-object v1, p0, Ll5/a;->b:Ll5/l;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, v1, Ll5/l;->o:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
