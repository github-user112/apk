.class public final enum Le/c/b/b/w;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/c/b/b/w;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/c/b/b/w;

.field public static final synthetic b:[Le/c/b/b/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Le/c/b/b/w;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/c/b/b/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/c/b/b/w;->a:Le/c/b/b/w;

    const/4 v1, 0x1

    new-array v1, v1, [Le/c/b/b/w;

    aput-object v0, v1, v2

    sput-object v1, Le/c/b/b/w;->b:[Le/c/b/b/w;

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

.method public static valueOf(Ljava/lang/String;)Le/c/b/b/w;
    .locals 1

    const-class v0, Le/c/b/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/c/b/b/w;

    return-object p0
.end method

.method public static values()[Le/c/b/b/w;
    .locals 1

    sget-object v0, Le/c/b/b/w;->b:[Le/c/b/b/w;

    invoke-virtual {v0}, [Le/c/b/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/c/b/b/w;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ld/s/y;->m(Z)V

    return-void
.end method
