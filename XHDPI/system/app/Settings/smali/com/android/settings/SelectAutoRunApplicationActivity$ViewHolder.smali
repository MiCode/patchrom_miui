.class final Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SelectAutoRunApplicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SelectAutoRunApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field public mAppName:Landroid/widget/TextView;

.field public mEnable:Landroid/widget/Button;

.field public mEnableText:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SelectAutoRunApplicationActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SelectAutoRunApplicationActivity$ViewHolder;-><init>()V

    return-void
.end method
