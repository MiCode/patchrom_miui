.class Lcom/android/settings/deviceinfo/MsdInstallPicker$1;
.super Ljava/lang/Object;
.source "MsdInstallPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MsdInstallPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;->this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$1;->this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MsdInstallPicker;->finish()V

    .line 49
    return-void
.end method
