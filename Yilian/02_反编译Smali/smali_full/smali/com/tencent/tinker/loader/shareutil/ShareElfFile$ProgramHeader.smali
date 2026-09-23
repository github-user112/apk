.class public Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/shareutil/ShareElfFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramHeader"
.end annotation


# static fields
.field public static final PF_R:I = 0x4

.field public static final PF_W:I = 0x2

.field public static final PF_X:I = 0x1

.field public static final PT_DYNAMIC:I = 0x2

.field public static final PT_HIPROC:I = 0x7fffffff

.field public static final PT_INTERP:I = 0x3

.field public static final PT_LOAD:I = 0x1

.field public static final PT_LOPROC:I = 0x70000000

.field public static final PT_NOTE:I = 0x4

.field public static final PT_NULL:I = 0x0

.field public static final PT_PHDR:I = 0x6

.field public static final PT_SHLIB:I = 0x5


# instance fields
.field public final pAlign:J

.field public final pFileSize:J

.field public final pFlags:I

.field public final pMemSize:J

.field public final pOffset:J

.field public final pPddr:J

.field public final pType:I

.field public final pVddr:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pFlags:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pOffset:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pVddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pPddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pFileSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pMemSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected elf class: "

    invoke-static {v0, p2}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pOffset:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pVddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pPddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pFileSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pMemSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pFlags:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    :goto_0
    iput-wide p1, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;->pAlign:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;ILcom/tencent/tinker/loader/shareutil/ShareElfFile$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$ProgramHeader;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
