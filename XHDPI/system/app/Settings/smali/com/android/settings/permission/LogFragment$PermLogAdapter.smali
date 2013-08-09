.class Lcom/android/settings/permission/LogFragment$PermLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/LogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermLogAdapter"
.end annotation


# instance fields
.field private mPermEventLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/permission/LogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/LogFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, permEventLogList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/permission/LogFragment$EventLogInfo;>;"
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    .line 210
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 228
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 233
    iget-object v8, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    .line 234
    .local v2, eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    const/4 v7, 0x0

    .line 235
    .local v7, view:Landroid/view/View;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    iget v8, v8, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    iget v9, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-ne v8, v9, :cond_0

    .line 236
    move-object v7, p2

    .line 244
    :goto_0
    invoke-virtual {v7, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    iget v8, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-nez v8, :cond_2

    .line 246
    const v8, 0x7f09000f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 247
    .local v1, date:Landroid/widget/TextView;
    iget-object v8, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    .end local v1           #date:Landroid/widget/TextView;
    :goto_1
    return-object v7

    .line 238
    :cond_0
    const v3, 0x7f04006e

    .line 239
    .local v3, layoutId:I
    iget v8, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 240
    const v3, 0x7f04006c

    .line 242
    :cond_1
    iget-object v8, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-virtual {v8}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    .line 252
    .end local v3           #layoutId:I
    :cond_2
    const v8, 0x7f09001b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    .local v0, appNameView:Landroid/widget/TextView;
    const v8, 0x7f090105

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 254
    .local v4, permView:Landroid/widget/TextView;
    const v8, 0x7f09001f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 255
    .local v5, statusView:Landroid/widget/TextView;
    const v8, 0x7f090054

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 257
    .local v6, timeView:Landroid/widget/TextView;
    iget-object v8, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v8, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mEventLog:Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v8}, Lcom/lbe/security/bean/EventLog;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v8, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->this$0:Lcom/android/settings/permission/LogFragment;

    iget-object v8, v8, Lcom/android/settings/permission/LogFragment;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget-object v9, v2, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mEventLog:Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v9}, Lcom/lbe/security/bean/EventLog;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getActionColoredName(I)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 262
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public setPermLogList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, permEventLogList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/permission/LogFragment$EventLogInfo;>;"
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    .line 214
    return-void
.end method
