.class Lcom/android/settings/deviceinfo/MsdInstallActivity$3;
.super Ljava/lang/Object;
.source "MsdInstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MsdInstallActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #getter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$300(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    #setter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I
    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$202(Lcom/android/settings/deviceinfo/MsdInstallActivity;I)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #calls: Lcom/android/settings/deviceinfo/MsdInstallActivity;->showInstallUI()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$400(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    .line 135
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #getter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$200(Lcom/android/settings/deviceinfo/MsdInstallActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
