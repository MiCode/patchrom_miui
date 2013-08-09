.class Lcom/android/settings/deviceinfo/MsdInstallActivity$1;
.super Ljava/lang/Object;
.source "MsdInstallActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 113
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #getter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$100(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    #getter for: Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->access$000(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    return-void
.end method
