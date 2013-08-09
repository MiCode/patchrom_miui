.class Lcom/android/settings/BugreportGenerator$1;
.super Ljava/lang/Object;
.source "BugreportGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BugreportGenerator;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BugreportGenerator;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/BugreportGenerator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/BugreportGenerator$1;->this$0:Lcom/android/settings/BugreportGenerator;

    iput-object p2, p0, Lcom/android/settings/BugreportGenerator$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/BugreportGenerator$1;->this$0:Lcom/android/settings/BugreportGenerator;

    iget-object v1, p0, Lcom/android/settings/BugreportGenerator$1;->val$fileName:Ljava/lang/String;

    #calls: Lcom/android/settings/BugreportGenerator;->dumpBugreport(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/BugreportGenerator;->access$000(Lcom/android/settings/BugreportGenerator;Ljava/lang/String;)V

    .line 55
    const-string v0, "chmod 666 %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/BugreportGenerator$1;->this$0:Lcom/android/settings/BugreportGenerator;

    #getter for: Lcom/android/settings/BugreportGenerator;->m_logFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/BugreportGenerator;->access$100(Lcom/android/settings/BugreportGenerator;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lmiui/os/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
