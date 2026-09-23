.class public final Lb2/b;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lb2/b;

.field public static final c:Lb2/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb2/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lb2/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lb2/b;->b:Lb2/b;

    .line 9
    .line 10
    new-instance v0, Lb2/b;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lb2/b;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lb2/b;->c:Lb2/b;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lb2/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lb2/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, La2/g;

    .line 8
    .line 9
    sget-wide v2, Ly1/q;->l:J

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    const/16 v8, 0x7e

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    invoke-static/range {v1 .. v8}, La2/f;->x(La2/g;JJJI)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 21
    .line 22
    return-object p1

    .line 23
    :pswitch_0
    check-cast p1, La2/g;

    .line 24
    .line 25
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 26
    .line 27
    return-object p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
