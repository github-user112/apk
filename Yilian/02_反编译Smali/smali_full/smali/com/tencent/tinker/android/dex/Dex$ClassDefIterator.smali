.class public final Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/Dex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClassDefIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/tencent/tinker/android/dex/ClassDef;",
        ">;"
    }
.end annotation


# instance fields
.field public count:I

.field public final in:Lcom/tencent/tinker/android/dex/Dex$Section;

.field public final synthetic this$0:Lcom/tencent/tinker/android/dex/Dex;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dex/Dex;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {p1}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dex/Dex;->openSection(Lcom/tencent/tinker/android/dex/TableOfContents$Section;)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->in:Lcom/tencent/tinker/android/dex/Dex$Section;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->count:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;-><init>(Lcom/tencent/tinker/android/dex/Dex;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->count:I

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->this$0:Lcom/tencent/tinker/android/dex/Dex;

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Dex;->access$900(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents;->classDefs:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v1, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/tencent/tinker/android/dex/ClassDef;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->count:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->in:Lcom/tencent/tinker/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/Dex$Section;->readClassDef()Lcom/tencent/tinker/android/dex/ClassDef;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/Dex$ClassDefIterator;->next()Lcom/tencent/tinker/android/dex/ClassDef;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
