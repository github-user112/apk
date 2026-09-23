.class public final synthetic Le/c/a/a/p2/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/c/a/a/p2/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/p2/e;

    invoke-direct {v0}, Le/c/a/a/p2/e;-><init>()V

    sput-object v0, Le/c/a/a/p2/e;->a:Le/c/a/a/p2/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->b(Ljava/lang/Integer;Ljava/lang/Integer;)I

    const/4 p1, 0x0

    return p1
.end method
