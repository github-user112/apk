.class public final La/a/a/a/a/a/a/a$a;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/a/a/a/a;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/c<",
        "[B",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:La/a/a/a/a/a/a/a$a;

.field public static final c:La/a/a/a/a/a/a/a$a;


# instance fields
.field public final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/a/a/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/a/a/a$a;-><init>(I)V

    sput-object v0, La/a/a/a/a/a/a/a$a;->b:La/a/a/a/a/a/a/a$a;

    new-instance v0, La/a/a/a/a/a/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La/a/a/a/a/a/a/a$a;-><init>(I)V

    sput-object v0, La/a/a/a/a/a/a/a$a;->c:La/a/a/a/a/a/a/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, La/a/a/a/a/a/a/a$a;->d:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, La/a/a/a/a/a/a/a$a;->d:I

    const-string v1, "payload"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, [B

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 2
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, La/c/a/h;->d([BII)La/c/a/h;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->parseFrom(La/c/a/h;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    check-cast p1, [B

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 5
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, La/c/a/h;->d([BII)La/c/a/h;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;->parseFrom(La/c/a/h;)Lcom/baidu/carlife/protobuf/CarlifeVehicleInfoProto$CarlifeVehicleInfo;

    move-result-object p1

    return-object p1
.end method
