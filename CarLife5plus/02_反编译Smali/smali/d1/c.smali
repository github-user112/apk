.class public final Ld1/c;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final a:Ld1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld1/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lg9/n;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ld1/c;->a:Ld1/c;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ly2/j;

    .line 2
    .line 3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    return-object p1
.end method
