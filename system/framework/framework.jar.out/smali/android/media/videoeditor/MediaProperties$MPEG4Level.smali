.class public final Landroid/media/videoeditor/MediaProperties$MPEG4Level;
.super Ljava/lang/Object;
.source "MediaProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/videoeditor/MediaProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MPEG4Level"
.end annotation


# static fields
.field public static final MPEG4Level0:I = 0x1

.field public static final MPEG4Level0b:I = 0x2

.field public static final MPEG4Level1:I = 0x4

.field public static final MPEG4Level2:I = 0x8

.field public static final MPEG4Level3:I = 0x10

.field public static final MPEG4Level4:I = 0x20

.field public static final MPEG4Level4a:I = 0x40

.field public static final MPEG4Level5:I = 0x80

.field public static final MPEG4LevelUnknown:I = 0x7fffffff


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaProperties;


# direct methods
.method public constructor <init>(Landroid/media/videoeditor/MediaProperties;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Landroid/media/videoeditor/MediaProperties$MPEG4Level;->this$0:Landroid/media/videoeditor/MediaProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
