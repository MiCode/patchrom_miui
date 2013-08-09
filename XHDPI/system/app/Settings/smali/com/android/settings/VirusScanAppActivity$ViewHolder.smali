.class Lcom/android/settings/VirusScanAppActivity$ViewHolder;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAppName:Landroid/widget/TextView;

.field mAppState:Landroid/widget/TextView;

.field mCheck:Landroid/widget/CheckBox;

.field mScanStatus:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
