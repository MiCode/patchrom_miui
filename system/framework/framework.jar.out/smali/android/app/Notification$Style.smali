.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field private mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/app/Notification$Builder;

.field private mSummaryText:Ljava/lang/CharSequence;

.field private mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1921
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 1922
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1992
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    .line 1993
    const-string v0, "android.summaryText"

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1995
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1996
    const-string v0, "android.title.big"

    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1998
    :cond_1
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 2012
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 2013
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public abstract buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
.end method

.method protected checkBuilder()V
    .locals 2

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 1953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1955
    :cond_0
    return-void
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "layoutId"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1958
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 1960
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 1961
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1964
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    invoke-static {v2, p1}, Landroid/app/Notification$Builder;->access$200(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1966
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1967
    sget v2, Lcom/android/internal/R$id;->line1:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1973
    :goto_0
    iget-boolean v2, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 1976
    .local v1, "overflowText":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v1, :cond_3

    .line 1977
    sget v2, Lcom/android/internal/R$id;->text:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1978
    sget v2, Lcom/android/internal/R$id;->overflow_divider:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1979
    sget v2, Lcom/android/internal/R$id;->line3:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1985
    :goto_2
    return-object v0

    .line 1969
    .end local v1    # "overflowText":Ljava/lang/CharSequence;
    :cond_1
    sget v2, Lcom/android/internal/R$id;->line1:I

    invoke-virtual {v0, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1973
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 1981
    .restart local v1    # "overflowText":Ljava/lang/CharSequence;
    :cond_3
    sget v2, Lcom/android/internal/R$id;->overflow_divider:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1982
    sget v2, Lcom/android/internal/R$id;->line3:I

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1931
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 1932
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1938
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 1939
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 1940
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 1943
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_0

    .line 1944
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 1945
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1949
    :cond_0
    return-void
.end method
