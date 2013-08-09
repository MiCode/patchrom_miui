.class Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;
.super Ljava/lang/Object;
.source "MsdInstallPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MsdInstallPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field public mIsChecked:Z

.field public mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;->this$0:Lcom/android/settings/deviceinfo/MsdInstallPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;Lcom/android/settings/deviceinfo/MsdInstallPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MsdInstallPicker$Holder;-><init>(Lcom/android/settings/deviceinfo/MsdInstallPicker;)V

    return-void
.end method
