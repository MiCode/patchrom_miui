.class public final Landroid/media/MediaRecorder$OutputFormat;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OutputFormat"
.end annotation


# static fields
.field public static final AAC_ADIF:I = 0x5

.field public static final AAC_ADTS:I = 0x6

.field public static final AMR_NB:I = 0x3

.field public static final AMR_WB:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final MPEG_4:I = 0x2

.field public static final OUTPUT_FORMAT_MPEG2TS:I = 0x8

.field public static final OUTPUT_FORMAT_RTP_AVP:I = 0x7

.field public static final RAW_AMR:I = 0x3

.field public static final THREE_GPP:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>(Landroid/media/MediaRecorder;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Landroid/media/MediaRecorder$OutputFormat;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
