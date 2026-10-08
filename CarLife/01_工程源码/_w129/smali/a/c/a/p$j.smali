.class public final enum La/c/a/p$j;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/c/a/p$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/c/a/p$j;

.field public static final enum c:La/c/a/p$j;

.field public static final enum d:La/c/a/p$j;

.field public static final enum e:La/c/a/p$j;

.field public static final enum f:La/c/a/p$j;

.field public static final enum g:La/c/a/p$j;

.field public static final enum h:La/c/a/p$j;

.field public static final enum i:La/c/a/p$j;

.field public static final synthetic j:[La/c/a/p$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, La/c/a/p$j;

    const-string v1, "IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c/a/p$j;->b:La/c/a/p$j;

    new-instance v1, La/c/a/p$j;

    const-string v3, "VISIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/c/a/p$j;->c:La/c/a/p$j;

    new-instance v3, La/c/a/p$j;

    const-string v5, "MERGE_FROM_STREAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/c/a/p$j;->d:La/c/a/p$j;

    new-instance v5, La/c/a/p$j;

    const-string v7, "MAKE_IMMUTABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v5, La/c/a/p$j;->e:La/c/a/p$j;

    new-instance v7, La/c/a/p$j;

    const-string v9, "NEW_MUTABLE_INSTANCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v7, La/c/a/p$j;->f:La/c/a/p$j;

    new-instance v9, La/c/a/p$j;

    const-string v11, "NEW_BUILDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v9, La/c/a/p$j;->g:La/c/a/p$j;

    new-instance v11, La/c/a/p$j;

    const-string v13, "GET_DEFAULT_INSTANCE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v11, La/c/a/p$j;->h:La/c/a/p$j;

    new-instance v13, La/c/a/p$j;

    const-string v15, "GET_PARSER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, La/c/a/p$j;-><init>(Ljava/lang/String;I)V

    sput-object v13, La/c/a/p$j;->i:La/c/a/p$j;

    const/16 v15, 0x8

    new-array v15, v15, [La/c/a/p$j;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, La/c/a/p$j;->j:[La/c/a/p$j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/c/a/p$j;
    .locals 1

    const-class v0, La/c/a/p$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/c/a/p$j;

    return-object p0
.end method

.method public static values()[La/c/a/p$j;
    .locals 1

    sget-object v0, La/c/a/p$j;->j:[La/c/a/p$j;

    invoke-virtual {v0}, [La/c/a/p$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/c/a/p$j;

    return-object v0
.end method
