.class public interface abstract Lnet/easyconn/jni/PlatinumReflection$ActionReflectionListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/jni/PlatinumReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionReflectionListener"
.end annotation


# virtual methods
.method public abstract audio_destroy()V
.end method

.method public abstract audio_init(IIII)V
.end method

.method public abstract audio_process([BII)V
.end method

.method public abstract onActionInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onActionInvoke(ILjava/lang/String;[BLjava/lang/String;)V
.end method
