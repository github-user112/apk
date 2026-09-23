.class public final synthetic Le/c/a/a/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic a:Le/c/a/a/j0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/j0;

    invoke-direct {v0}, Le/c/a/a/j0;-><init>()V

    sput-object v0, Le/c/a/a/j0;->a:Le/c/a/a/j0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->e(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
