.class public final Landroid/media/videoeditor/MediaProperties$MPEG4Profile;
.super Ljava/lang/Object;
.source "MediaProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MPEG4Profile"
.end annotation


# static fields
.field public static final MPEG4ProfileAdvancedCoding:I = 0x1000

.field public static final MPEG4ProfileAdvancedCore:I = 0x2000

.field public static final MPEG4ProfileAdvancedRealTime:I = 0x400

.field public static final MPEG4ProfileAdvancedScalable:I = 0x4000

.field public static final MPEG4ProfileAdvancedSimple:I = 0x8000

.field public static final MPEG4ProfileBasicAnimated:I = 0x100

.field public static final MPEG4ProfileCore:I = 0x4

.field public static final MPEG4ProfileCoreScalable:I = 0x800

.field public static final MPEG4ProfileHybrid:I = 0x200

.field public static final MPEG4ProfileMain:I = 0x8

.field public static final MPEG4ProfileNbit:I = 0x10

.field public static final MPEG4ProfileScalableTexture:I = 0x20

.field public static final MPEG4ProfileSimple:I = 0x1

.field public static final MPEG4ProfileSimpleFBA:I = 0x80

.field public static final MPEG4ProfileSimpleFace:I = 0x40

.field public static final MPEG4ProfileSimpleScalable:I = 0x2

.field public static final MPEG4ProfileUnknown:I = 0x7fffffff


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaProperties;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaProperties;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Landroid/media/videoeditor/MediaProperties$MPEG4Profile;->this$0:Landroid/media/videoeditor/MediaProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
