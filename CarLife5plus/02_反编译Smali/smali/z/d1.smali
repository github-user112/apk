.class public final Lz/d1;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/d2;


# static fields
.field public static final p:Ln6/a;


# instance fields
.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln6/a;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln6/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz/d1;->p:Ln6/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final j()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lz/d1;->p:Ln6/a;

    .line 2
    .line 3
    return-object v0
.end method
