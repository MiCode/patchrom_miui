.class Lcom/android/settings/AppPickerV5$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppPickerV5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppPickerV5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/AppPickerV5;


# direct methods
.method constructor <init>(Lcom/android/settings/AppPickerV5;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/AppPickerV5$MyApplicationInfo;->this$0:Lcom/android/settings/AppPickerV5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
