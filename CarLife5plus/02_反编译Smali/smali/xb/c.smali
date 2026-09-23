.class public final Lxb/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lwb/j;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:Lw7/a;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILw7/a;)V
    .locals 1

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lxb/c;->a:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput p2, p0, Lxb/c;->b:I

    .line 12
    .line 13
    iput-object p3, p0, Lxb/c;->c:Lw7/a;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lxb/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lxb/b;-><init>(Lxb/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
