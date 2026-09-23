.class public abstract La/c/a/g$c;
.super La/c/a/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/c/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, La/c/a/f;

    invoke-direct {v0, p0}, La/c/a/f;-><init>(La/c/a/g;)V

    return-object v0
.end method
