.class public abstract enum Lf/a/j/c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/a/j/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf/a/j/c;

.field public static final enum b:Lf/a/j/c;

.field public static final enum c:Lf/a/j/c;

.field public static final enum d:Lf/a/j/c;

.field public static final enum e:Lf/a/j/c;

.field public static final enum f:Lf/a/j/c;

.field public static final synthetic g:[Lf/a/j/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lf/a/j/c$a;

    const-string v1, "LT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/a/j/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/j/c;->a:Lf/a/j/c;

    new-instance v0, Lf/a/j/c$b;

    const-string v1, "LE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lf/a/j/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/j/c;->b:Lf/a/j/c;

    new-instance v0, Lf/a/j/c$c;

    const-string v1, "EQ"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lf/a/j/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/j/c;->c:Lf/a/j/c;

    new-instance v0, Lf/a/j/c$d;

    const-string v1, "GE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lf/a/j/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/j/c;->d:Lf/a/j/c;

    new-instance v0, Lf/a/j/c$e;

    const-string v1, "GT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lf/a/j/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/j/c;->e:Lf/a/j/c;

    new-instance v0, Lf/a/j/c$f;

    const-string v1, "NE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lf/a/j/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/a/j/c;->f:Lf/a/j/c;

    const/4 v1, 0x6

    new-array v1, v1, [Lf/a/j/c;

    sget-object v8, Lf/a/j/c;->a:Lf/a/j/c;

    aput-object v8, v1, v2

    sget-object v2, Lf/a/j/c;->b:Lf/a/j/c;

    aput-object v2, v1, v3

    sget-object v2, Lf/a/j/c;->c:Lf/a/j/c;

    aput-object v2, v1, v4

    sget-object v2, Lf/a/j/c;->d:Lf/a/j/c;

    aput-object v2, v1, v5

    sget-object v2, Lf/a/j/c;->e:Lf/a/j/c;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lf/a/j/c;->g:[Lf/a/j/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILf/a/j/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf/a/j/c;
    .locals 1

    const-class v0, Lf/a/j/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/a/j/c;

    return-object p0
.end method

.method public static values()[Lf/a/j/c;
    .locals 1

    sget-object v0, Lf/a/j/c;->g:[Lf/a/j/c;

    invoke-virtual {v0}, [Lf/a/j/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/a/j/c;

    return-object v0
.end method


# virtual methods
.method public abstract a(Le/a/b/d/d/e;)Le/a/b/d/b/n;
.end method
