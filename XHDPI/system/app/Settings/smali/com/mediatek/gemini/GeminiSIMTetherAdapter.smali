.class public Lcom/mediatek/gemini/GeminiSIMTetherAdapter;
.super Landroid/widget/BaseAdapter;
.source "GeminiSIMTetherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsShowCheckBox:Z

.field private mItem:Lcom/mediatek/gemini/GeminiSIMTetherItem;

.field private mSIMCardNamePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "showCheckBox"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gemini/GeminiSIMTetherItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gemini/GeminiSIMTetherItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mIsShowCheckBox:Z

    .line 46
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    .line 48
    iput-boolean p3, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mIsShowCheckBox:Z

    .line 49
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mSIMCardNamePadding:I

    .line 54
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 85
    const-string v3, ""

    .line 86
    .local v3, simName:Ljava/lang/String;
    const/4 v2, -0x1

    .line 87
    .local v2, simColor:I
    if-nez p2, :cond_2

    .line 88
    new-instance v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;

    invoke-direct {v1}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;-><init>()V

    .line 89
    .local v1, holder:Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04004a

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 92
    const v4, 0x7f09009e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mName:Landroid/widget/TextView;

    .line 94
    const v4, 0x7f09009d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 96
    const v4, 0x7f0900a0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mPhoneNum:Landroid/widget/TextView;

    .line 98
    const v4, 0x7f0900a1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfoLayout:Landroid/widget/LinearLayout;

    .line 100
    const v4, 0x7f0900a2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    .line 102
    const v4, 0x7f09009f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mPhoneNumType:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_0
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    iput-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mItem:Lcom/mediatek/gemini/GeminiSIMTetherItem;

    .line 110
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getSimName()Ljava/lang/String;

    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getSimColor()I

    move-result v2

    .line 112
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mItem:Lcom/mediatek/gemini/GeminiSIMTetherItem;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 113
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mItem:Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v7}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mPhoneNumType:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mItem:Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v7}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getPhoneNumType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mPhoneNum:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mItem:Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v7}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getPhoneNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    :cond_0
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :goto_1
    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/GeminiSIMTetherItem;

    invoke-virtual {v4}, Lcom/mediatek/gemini/GeminiSIMTetherItem;->getCheckedStatus()I

    move-result v0

    .line 127
    .local v0, checkStatus:I
    iget-boolean v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mIsShowCheckBox:Z

    if-eqz v4, :cond_5

    .line 128
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 129
    iget-object v7, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-ne v0, v5, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    :goto_3
    if-ltz v2, :cond_6

    const/4 v4, 0x7

    if-gt v2, v4, :cond_6

    .line 138
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    sget-object v5, Landroid/provider/Telephony;->SIMBackgroundDarkRes:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 140
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    iget v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mSIMCardNamePadding:I

    iget v7, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mSIMCardNamePadding:I

    invoke-virtual {v4, v5, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 147
    .end local v0           #checkStatus:I
    :cond_1
    :goto_4
    return-object p2

    .line 107
    .end local v1           #holder:Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;

    .restart local v1       #holder:Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;
    goto/16 :goto_0

    .line 120
    :cond_3
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0       #checkStatus:I
    :cond_4
    move v4, v6

    .line 129
    goto :goto_2

    .line 133
    :cond_5
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 141
    :cond_6
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    .line 142
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    const v5, 0x20200e9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 144
    iget-object v4, v1, Lcom/mediatek/gemini/GeminiSIMTetherAdapter$ItemViewHolder;->mSimInfo:Landroid/widget/TextView;

    iget v5, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mSIMCardNamePadding:I

    iget v7, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mSIMCardNamePadding:I

    invoke-virtual {v4, v5, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4
.end method

.method public setShowCheckBox(Z)V
    .locals 0
    .parameter "showCheckBox"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->mIsShowCheckBox:Z

    .line 64
    invoke-virtual {p0}, Lcom/mediatek/gemini/GeminiSIMTetherAdapter;->notifyDataSetChanged()V

    .line 65
    return-void
.end method
