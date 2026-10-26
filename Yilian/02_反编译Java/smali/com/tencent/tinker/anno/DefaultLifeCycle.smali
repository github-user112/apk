.class public interface abstract annotation Lcom/tencent/tinker/anno/DefaultLifeCycle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/tencent/tinker/anno/DefaultLifeCycle;
        loadVerifyFlag = false
        loaderClass = "com.tencent.tinker.loader.TinkerLoader"
        useDelegateLastClassLoader = false
        useInterpretModeOnSupported32BitSystem = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract application()Ljava/lang/String;
.end method

.method public abstract flags()I
.end method

.method public abstract loadVerifyFlag()Z
.end method

.method public abstract loaderClass()Ljava/lang/String;
.end method

.method public abstract useDelegateLastClassLoader()Z
.end method

.method public abstract useInterpretModeOnSupported32BitSystem()Z
.end method
