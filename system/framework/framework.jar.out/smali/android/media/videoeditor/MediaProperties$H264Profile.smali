.class public final Landroid/media/videoeditor/MediaProperties$H264Profile;
.super Ljava/lang/Object;
.source "MediaProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H264Profile"
.end annotation


# static fields
.field public static final H264ProfileBaseline:I = 0x1

.field public static final H264ProfileExtended:I = 0x4

.field public static final H264ProfileHigh:I = 0x8

.field public static final H264ProfileHigh10:I = 0x10

.field public static final H264ProfileHigh422:I = 0x20

.field public static final H264ProfileHigh444:I = 0x40

.field public static final H264ProfileMain:I = 0x2

.field public static final H264ProfileUnknown:I = 0x7fffffff


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaProperties;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaProperties;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Landroid/media/videoeditor/MediaProperties$H264Profile;->this$0:Landroid/media/videoeditor/MediaProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
