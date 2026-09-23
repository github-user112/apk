.class public final enum Le/a/b/b/b/o$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b/b/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a/b/b/b/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/b/b/b/o$a;

.field public static final enum b:Le/a/b/b/b/o$a;

.field public static final enum c:Le/a/b/b/b/o$a;

.field public static final enum d:Le/a/b/b/b/o$a;

.field public static final enum e:Le/a/b/b/b/o$a;

.field public static final enum f:Le/a/b/b/b/o$a;

.field public static final synthetic g:[Le/a/b/b/b/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Le/a/b/b/b/o$a;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/b/b/b/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/b/o$a;->a:Le/a/b/b/b/o$a;

    new-instance v0, Le/a/b/b/b/o$a;

    const-string v1, "END_SIMPLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Le/a/b/b/b/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/b/o$a;->b:Le/a/b/b/b/o$a;

    new-instance v0, Le/a/b/b/b/o$a;

    const-string v1, "END_REPLACED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Le/a/b/b/b/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/b/o$a;->c:Le/a/b/b/b/o$a;

    new-instance v0, Le/a/b/b/b/o$a;

    const-string v1, "END_MOVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Le/a/b/b/b/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/b/o$a;->d:Le/a/b/b/b/o$a;

    new-instance v0, Le/a/b/b/b/o$a;

    const-string v1, "END_CLOBBERED_BY_PREV"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Le/a/b/b/b/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/b/o$a;->e:Le/a/b/b/b/o$a;

    new-instance v0, Le/a/b/b/b/o$a;

    const-string v1, "END_CLOBBERED_BY_NEXT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Le/a/b/b/b/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/b/b/b/o$a;->f:Le/a/b/b/b/o$a;

    const/4 v1, 0x6

    new-array v1, v1, [Le/a/b/b/b/o$a;

    sget-object v8, Le/a/b/b/b/o$a;->a:Le/a/b/b/b/o$a;

    aput-object v8, v1, v2

    sget-object v2, Le/a/b/b/b/o$a;->b:Le/a/b/b/b/o$a;

    aput-object v2, v1, v3

    sget-object v2, Le/a/b/b/b/o$a;->c:Le/a/b/b/b/o$a;

    aput-object v2, v1, v4

    sget-object v2, Le/a/b/b/b/o$a;->d:Le/a/b/b/b/o$a;

    aput-object v2, v1, v5

    sget-object v2, Le/a/b/b/b/o$a;->e:Le/a/b/b/b/o$a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Le/a/b/b/b/o$a;->g:[Le/a/b/b/b/o$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/b/b/b/o$a;
    .locals 1

    const-class v0, Le/a/b/b/b/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a/b/b/b/o$a;

    return-object p0
.end method

.method public static values()[Le/a/b/b/b/o$a;
    .locals 1

    sget-object v0, Le/a/b/b/b/o$a;->g:[Le/a/b/b/b/o$a;

    invoke-virtual {v0}, [Le/a/b/b/b/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/b/b/b/o$a;

    return-object v0
.end method
