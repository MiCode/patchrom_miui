.class public final Landroid/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static app_icon_size:I

.field public static dialog_min_width_major:I

.field public static dialog_min_width_minor:I

.field public static notification_large_icon_height:I

.field public static notification_large_icon_width:I

.field public static thumbnail_height:I

.field public static thumbnail_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10835
    const/high16 v0, 0x1050000

    sput v0, Landroid/R$dimen;->app_icon_size:I

    .line 10840
    const v0, 0x1050003

    sput v0, Landroid/R$dimen;->dialog_min_width_major:I

    .line 10845
    const v0, 0x1050004

    sput v0, Landroid/R$dimen;->dialog_min_width_minor:I

    .line 10850
    const v0, 0x1050006

    sput v0, Landroid/R$dimen;->notification_large_icon_height:I

    .line 10855
    const v0, 0x1050005

    sput v0, Landroid/R$dimen;->notification_large_icon_width:I

    .line 10860
    const v0, 0x1050001

    sput v0, Landroid/R$dimen;->thumbnail_height:I

    .line 10866
    const v0, 0x1050002

    sput v0, Landroid/R$dimen;->thumbnail_width:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
