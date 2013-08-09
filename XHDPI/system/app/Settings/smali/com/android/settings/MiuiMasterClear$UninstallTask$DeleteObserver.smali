.class Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear$UninstallTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObserver"
.end annotation


# instance fields
.field private mWaitor:Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

.field final synthetic this$1:Lcom/android/settings/MiuiMasterClear$UninstallTask;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear$UninstallTask;Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;)V
    .locals 0
    .parameter
    .parameter "waitor"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;->this$1:Lcom/android/settings/MiuiMasterClear$UninstallTask;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;->mWaitor:Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

    .line 329
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 333
    packed-switch p2, :pswitch_data_0

    .line 341
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;->mWaitor:Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

    invoke-virtual {v0}, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;->finish()V

    .line 342
    return-void

    .line 333
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
