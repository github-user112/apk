.class public final synthetic Le/c/a/a/r2/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Le/c/b/a/g;


# static fields
.field public static final synthetic a:Le/c/a/a/r2/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/r2/d;

    invoke-direct {v0}, Le/c/a/a/r2/d;-><init>()V

    sput-object v0, Le/c/a/a/r2/d;->a:Le/c/a/a/r2/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Le/c/a/a/r2/i;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
