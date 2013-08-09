.class public Lcom/mediatek/gemini/DefaultSimPreference;
.super Landroid/preference/DialogPreference;
.source "DefaultSimPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mContext:Landroid/content/Context;

.field private mFlater:Landroid/view/LayoutInflater;

.field private mInitValue:I

.field private mListView:Landroid/widget/ListView;

.field private mSelected:I

.field private mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/gemini/DefaultSimPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    .line 41
    iput v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    .line 46
    iput v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    .line 81
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mFlater:Landroid/view/LayoutInflater;

    .line 83
    const v0, 0x6030036

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/DefaultSimPreference;->setLayoutResource(I)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/DefaultSimPreference;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mFlater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/DefaultSimPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/DefaultSimPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    return v0
.end method


# virtual methods
.method public getSelectedValue()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 129
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, textSummary:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 134
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 137
    :cond_0
    const-string v1, "DefaultSimPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "summary is +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 163
    const-string v2, "DefaultSimPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v2, "DefaultSimPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInitValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    iget v3, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    if-eq v2, v3, :cond_0

    .line 167
    const-string v2, "DefaultSimPreference"

    const-string v3, "callChangeListener"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    iget v3, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/SimItem;

    iget-wide v0, v2, Lcom/mediatek/gemini/SimItem;->mSimID:J

    .line 169
    .local v0, value:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 170
    iget v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    iput v2, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    .line 172
    .end local v0           #value:J
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "DefaultSimPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positon is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimItem;

    .line 194
    .local v0, simItem:Lcom/mediatek/gemini/SimItem;
    iget v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/mediatek/gemini/SimItem;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 197
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget v2, v0, Lcom/mediatek/gemini/SimItem;->mSlot:I

    const/16 v3, 0x12e

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0

    .line 200
    :cond_2
    iput p3, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    .line 201
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/gemini/DefaultSimPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 202
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 150
    new-instance v0, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;-><init>(Lcom/mediatek/gemini/DefaultSimPreference;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    .line 151
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    .line 152
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mListView:Landroid/widget/ListView;

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 156
    const/high16 v0, 0x104

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    return-void
.end method

.method setCellConnMgr(Lcom/mediatek/CellConnService/CellConnMgr;)V
    .locals 0
    .parameter "cellConnmgr"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 95
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/mediatek/gemini/DefaultSimPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 178
    if-eqz p1, :cond_0

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setEnabled(Z)V

    .line 184
    return-void

    .line 178
    :cond_0
    const/16 v1, 0x4b

    goto :goto_0

    .line 181
    :cond_1
    const-string v1, "DefaultSimPreference"

    const-string v2, "fail to set icon alpha due to icon is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setInitData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/SimItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/gemini/SimItem;>;"
    iput-object p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSimItemList:Ljava/util/List;

    .line 398
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->notifyDataSetChanged()V

    .line 401
    :cond_0
    return-void
.end method

.method setInitValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 380
    iput p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mInitValue:I

    .line 381
    iput p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mSelected:I

    .line 383
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mAdapter:Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/gemini/DefaultSimPreference$SelectionListAdapter;->notifyDataSetChanged()V

    .line 386
    :cond_0
    return-void
.end method

.method setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 121
    iput p1, p0, Lcom/mediatek/gemini/DefaultSimPreference;->mType:I

    .line 122
    return-void
.end method
