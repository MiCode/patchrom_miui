.class Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiShareUploadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiShareUploadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiListAdapter"
.end annotation


# instance fields
.field private final ITEM_TYPE_NONE:I

.field private final ITEM_TYPE_SSID:I

.field private final ITEM_TYPE_TITLE:I

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private mSsidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiShareUploadFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, sSidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 198
    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->this$0:Lcom/android/settings/wifi/WifiShareUploadFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    iput v6, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->ITEM_TYPE_NONE:I

    .line 195
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->ITEM_TYPE_SSID:I

    .line 196
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->ITEM_TYPE_TITLE:I

    .line 199
    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    .line 200
    iput-object p4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mContext:Landroid/content/Context;

    .line 201
    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 202
    const-string v4, "wifi"

    invoke-virtual {p4, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 203
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 204
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    .line 206
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    .line 208
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 210
    .local v1, index:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 211
    .local v0, checked:Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 221
    .end local v0           #checked:Ljava/lang/Boolean;
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mSsidList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 287
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 225
    iget-object v9, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 227
    .local v1, inflater:Landroid/view/LayoutInflater;
    move-object v7, p2

    .line 228
    .local v7, view:Landroid/view/View;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCurrentSsid:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, type:I
    if-eqz v7, :cond_0

    .line 231
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 234
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 248
    :goto_0
    add-int/lit8 p1, p1, -0x2

    .line 249
    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    .line 250
    const/4 v7, 0x0

    .line 257
    .end local v6           #type:I
    :cond_1
    move v2, p1

    .line 258
    .local v2, pos:I
    if-nez v7, :cond_2

    .line 259
    const v9, 0x7f0400e6

    const/4 v10, 0x0

    invoke-virtual {v1, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 262
    :cond_2
    const v9, 0x7f09000f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 263
    .local v5, title:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const v9, 0x7f090287

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 265
    .local v3, shareButton:Landroid/widget/Button;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x8

    :goto_1
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    new-instance v9, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter$1;

    invoke-direct {v9, p0, v2}, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter$1;-><init>(Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;I)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v9, 0x7f090288

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 273
    .local v4, shareText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v7

    .line 276
    .end local v2           #pos:I
    .end local v3           #shareButton:Landroid/widget/Button;
    .end local v4           #shareText:Landroid/widget/TextView;
    .end local v5           #title:Landroid/widget/TextView;
    .end local v7           #view:Landroid/view/View;
    .local v8, view:Landroid/view/View;
    :goto_3
    return-object v8

    .line 237
    .end local v8           #view:Landroid/view/View;
    .restart local v6       #type:I
    .restart local v7       #view:Landroid/view/View;
    :pswitch_0
    const/4 v9, 0x2

    if-eq v6, v9, :cond_3

    .line 238
    const v9, 0x7f0400e4

    const/4 v10, 0x0

    invoke-virtual {v1, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 239
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 241
    :cond_3
    const v9, 0x7f09000f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    .local v0, groupTitle:Landroid/widget/TextView;
    if-nez p1, :cond_4

    const v9, 0x7f0c093d

    :goto_4
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    move-object v8, v7

    .line 243
    .end local v7           #view:Landroid/view/View;
    .restart local v8       #view:Landroid/view/View;
    goto :goto_3

    .line 242
    .end local v8           #view:Landroid/view/View;
    .restart local v7       #view:Landroid/view/View;
    :cond_4
    const v9, 0x7f0c093e

    goto :goto_4

    .line 245
    .end local v0           #groupTitle:Landroid/widget/TextView;
    :pswitch_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 265
    .end local v6           #type:I
    .restart local v2       #pos:I
    .restart local v3       #shareButton:Landroid/widget/Button;
    .restart local v5       #title:Landroid/widget/TextView;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 273
    .restart local v4       #shareText:Landroid/widget/TextView;
    :cond_6
    const/16 v9, 0x8

    goto :goto_2

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setChecked(IZ)V
    .locals 2
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareUploadFragment$WifiListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method
