.class Landroid/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 137
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    .line 138
    .local v4, "progress":I
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 139
    .local v1, "max":I
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 140
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "format":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 146
    int-to-double v6, v4

    int-to-double v8, v1

    div-double v2, v6, v8

    .line 147
    .local v2, "percent":D
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 148
    .local v5, "tmp":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 150
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v2    # "percent":D
    .end local v5    # "tmp":Landroid/text/SpannableString;
    :goto_1
    return-void

    .line 143
    :cond_0
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    # getter for: Landroid/app/ProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
