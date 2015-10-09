.class Landroid/media/MiniThumbFile$Injector;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiniThumbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Injector"
.end annotation


# static fields
.field private static final MAX_MINI_THUMB_COUNT:I = 0x1388


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPosition(J)J
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 55
    const-wide/16 v0, 0x1388

    rem-long v0, p0, v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static isMatch(Ljava/nio/ByteBuffer;J)Z
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
