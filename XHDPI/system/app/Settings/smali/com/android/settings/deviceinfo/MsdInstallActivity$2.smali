.class Lcom/android/settings/deviceinfo/MsdInstallActivity$2;
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
    .line 121
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->setResult(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->finish()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;->this$0:Lcom/android/settings/deviceinfo/MsdInstallActivity;

    const/4 v1, 0x0

    const/high16 v2, 0x7f05

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->overridePendingTransition(II)V

    .line 127
    return-void
.end method
