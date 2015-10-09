.class public final Landroid/media/videoeditor/MediaProperties$H263Profile;
.super Ljava/lang/Object;
.source "MediaProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H263Profile"
.end annotation


# static fields
.field public static final H263ProfileBackwardCompatible:I = 0x4

.field public static final H263ProfileBaseline:I = 0x1

.field public static final H263ProfileH320Coding:I = 0x2

.field public static final H263ProfileHighCompression:I = 0x20

.field public static final H263ProfileHighLatency:I = 0x100

.field public static final H263ProfileISWV2:I = 0x8

.field public static final H263ProfileISWV3:I = 0x10

.field public static final H263ProfileInterlace:I = 0x80

.field public static final H263ProfileInternet:I = 0x40

.field public static final H263ProfileUnknown:I = 0x7fffffff


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaProperties;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaProperties;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Landroid/media/videoeditor/MediaProperties$H263Profile;->this$0:Landroid/media/videoeditor/MediaProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
