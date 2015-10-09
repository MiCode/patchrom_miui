.class public final Landroid/media/TimedText$CharPos;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharPos"
.end annotation


# instance fields
.field public final endChar:I

.field public final startChar:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "startChar"    # I
    .param p2, "endChar"    # I

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroid/media/TimedText$CharPos;->startChar:I

    .line 135
    iput p2, p0, Landroid/media/TimedText$CharPos;->endChar:I

    .line 136
    return-void
.end method
