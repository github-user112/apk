.class public final synthetic Le/c/a/a/o2/b/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Le/c/a/a/o2/b/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/o2/b/a;

    invoke-direct {v0}, Le/c/a/a/o2/b/a;-><init>()V

    sput-object v0, Le/c/a/a/o2/b/a;->a:Le/c/a/a/o2/b/a;

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

    check-cast p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    check-cast p2, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->a(Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;)I

    move-result p1

    return p1
.end method
