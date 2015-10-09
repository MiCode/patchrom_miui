.class public final Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFormat;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoFormat"
.end annotation


# static fields
.field public static final H263:I = 0x1

.field public static final H264:I = 0x2

.field public static final MPEG4:I = 0x3

.field public static final NO_VIDEO:I = 0x0

.field public static final NULL_VIDEO:I = 0xfe

.field public static final UNSUPPORTED:I = 0xff


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$VideoFormat;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
