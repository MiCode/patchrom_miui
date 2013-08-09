.class Lcom/android/settings/BugreportGenerator$2;
.super Landroid/os/AsyncTask;
.source "BugreportGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BugreportGenerator;->asyncExecute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BugreportGenerator;

.field final synthetic val$_r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/BugreportGenerator;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/BugreportGenerator$2;->this$0:Lcom/android/settings/BugreportGenerator;

    iput-object p2, p0, Lcom/android/settings/BugreportGenerator$2;->val$_r:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "params"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/BugreportGenerator$2;->val$_r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    .line 160
    iget-object v0, p0, Lcom/android/settings/BugreportGenerator$2;->this$0:Lcom/android/settings/BugreportGenerator;

    #getter for: Lcom/android/settings/BugreportGenerator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/BugreportGenerator;->access$200(Lcom/android/settings/BugreportGenerator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BugreportGenerator$2;->this$0:Lcom/android/settings/BugreportGenerator;

    #getter for: Lcom/android/settings/BugreportGenerator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/BugreportGenerator;->access$200(Lcom/android/settings/BugreportGenerator;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c092e

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/BugreportGenerator$2;->this$0:Lcom/android/settings/BugreportGenerator;

    #getter for: Lcom/android/settings/BugreportGenerator;->m_logFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/BugreportGenerator;->access$100(Lcom/android/settings/BugreportGenerator;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/BugreportGenerator$2;->this$0:Lcom/android/settings/BugreportGenerator;

    #getter for: Lcom/android/settings/BugreportGenerator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/BugreportGenerator;->access$200(Lcom/android/settings/BugreportGenerator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/BugreportGenerator$2;->this$0:Lcom/android/settings/BugreportGenerator;

    #getter for: Lcom/android/settings/BugreportGenerator;->m_logFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/BugreportGenerator;->access$100(Lcom/android/settings/BugreportGenerator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/BugreportGenerator;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    return-void
.end method
