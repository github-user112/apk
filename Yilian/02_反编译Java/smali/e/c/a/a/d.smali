.class public final synthetic Le/c/a/a/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/a/a/d;->a:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iput p2, p0, Le/c/a/a/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/c/a/a/d;->a:Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;

    iget v1, p0, Le/c/a/a/d;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/AudioFocusManager$AudioFocusListener;->a(I)V

    return-void
.end method
