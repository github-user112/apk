.class public final Lh0/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/d;


# instance fields
.field public final synthetic a:Lh0/n;

.field public final synthetic b:Lg9/x;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lh0/n;Lg9/x;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/m;->a:Lh0/n;

    .line 5
    .line 6
    iput-object p2, p0, Lh0/m;->b:Lg9/x;

    .line 7
    .line 8
    iput p3, p0, Lh0/m;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lh0/m;->b:Lg9/x;

    .line 2
    .line 3
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lh0/j;

    .line 6
    .line 7
    iget v1, p0, Lh0/m;->c:I

    .line 8
    .line 9
    iget-object v2, p0, Lh0/m;->a:Lh0/n;

    .line 10
    .line 11
    invoke-virtual {v2, v0, v1}, Lh0/n;->A0(Lh0/j;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method
