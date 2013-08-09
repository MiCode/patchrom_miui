.class Lcom/android/settings/VirusScanAppActivity$5;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/VirusScanAppActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$5;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$5;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->FinishScan()V
    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->access$400(Lcom/android/settings/VirusScanAppActivity;)V

    .line 643
    return-void
.end method
