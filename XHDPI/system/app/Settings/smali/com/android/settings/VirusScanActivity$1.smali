.class Lcom/android/settings/VirusScanActivity$1;
.super Landroid/widget/BaseAdapter;
.source "VirusScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/VirusScanActivity$1;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/settings/VirusScanActivity;->access$000()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 85
    new-instance v2, Lcom/android/settings/VirusScanActivity$ViewHolder;

    .end local v2           #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    invoke-direct {v2, v6}, Lcom/android/settings/VirusScanActivity$ViewHolder;-><init>(Lcom/android/settings/VirusScanActivity$1;)V

    .line 86
    .restart local v2       #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    iget-object v4, p0, Lcom/android/settings/VirusScanActivity$1;->this$0:Lcom/android/settings/VirusScanActivity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/settings/VirusScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 87
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400c6

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    const v4, 0x7f0901e8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemInf:Landroid/widget/TextView;

    .line 89
    const v4, 0x7f0901e9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemInf:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/VirusScanActivity;->access$000()[I

    move-result-object v5

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_1
    return-object p2

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    check-cast v2, Lcom/android/settings/VirusScanActivity$ViewHolder;

    .restart local v2       #holder:Lcom/android/settings/VirusScanActivity$ViewHolder;
    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/VirusScanActivity$1;->this$0:Lcom/android/settings/VirusScanActivity;

    #calls: Lcom/android/settings/VirusScanActivity;->getApplicationLabel()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/VirusScanActivity;->access$200(Lcom/android/settings/VirusScanActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/VirusScanActivity$1;->this$0:Lcom/android/settings/VirusScanActivity;

    #calls: Lcom/android/settings/VirusScanActivity;->getVirusLibUpdateDate()Ljava/util/Date;
    invoke-static {v4}, Lcom/android/settings/VirusScanActivity;->access$300(Lcom/android/settings/VirusScanActivity;)Ljava/util/Date;

    move-result-object v0

    .line 104
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 105
    iget-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/settings/VirusScanActivity$1;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-virtual {v4}, Lcom/android/settings/VirusScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0883

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, df:Ljava/text/SimpleDateFormat;
    iget-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/VirusScanActivity$1;->this$0:Lcom/android/settings/VirusScanActivity;

    invoke-virtual {v5}, Lcom/android/settings/VirusScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0884

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    .end local v1           #df:Ljava/text/SimpleDateFormat;
    :cond_1
    iget-object v4, v2, Lcom/android/settings/VirusScanActivity$ViewHolder;->mItemSubInf:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
