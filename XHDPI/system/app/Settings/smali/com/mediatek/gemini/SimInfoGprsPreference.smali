.class public Lcom/mediatek/gemini/SimInfoGprsPreference;
.super Landroid/preference/Preference;
.source "SimInfoGprsPreference.java"


# instance fields
.field private mCkRadioOn:Landroid/widget/RadioButton;

.field private mImageSim:Landroid/widget/RelativeLayout;

.field private mImageStatus:Landroid/widget/ImageView;

.field private mIsChecked:Z

.field private mSimItem:Lcom/mediatek/gemini/SimItem;

.field private mSimNum:I

.field private mTextName:Landroid/widget/TextView;

.field private mTextNum:Landroid/widget/TextView;

.field private mTextNumFormat:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/gemini/SimInfoGprsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setLayoutResource(I)V

    .line 46
    return-void
.end method

.method private setImageSim()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-boolean v1, v1, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget v1, v1, Lcom/mediatek/gemini/SimItem;->mColor:I

    invoke-static {v1}, Lcom/mediatek/gemini/GeminiUtils;->getSimColorResource(I)I

    move-result v0

    .line 169
    .local v0, resColor:I
    if-ltz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 179
    .end local v0           #resColor:I
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget v1, v1, Lcom/mediatek/gemini/SimItem;->mColor:I

    if-ne v1, v3, :cond_2

    .line 174
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageSim:Landroid/widget/RelativeLayout;

    const v2, 0x20200ec

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImageStatus()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 153
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-boolean v1, v1, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget v1, v1, Lcom/mediatek/gemini/SimItem;->mState:I

    invoke-static {v1}, Lcom/mediatek/gemini/GeminiUtils;->getStatusResource(I)I

    move-result v0

    .line 155
    .local v0, res:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    .end local v0           #res:I
    :goto_0
    return-void

    .line 158
    .restart local v0       #res:I
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageStatus:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    .end local v0           #res:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNameAndNum()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v0, v0, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-boolean v0, v0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v0, v0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v0, v0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v1, v1, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v1, v1, Lcom/mediatek/gemini/SimItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTextNumFormat()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-boolean v0, v0, Lcom/mediatek/gemini/SimItem;->mIsSim:Z

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v0, v0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget v0, v0, Lcom/mediatek/gemini/SimItem;->mDispalyNumberFormat:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v0, v0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v1, v1, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v1, v1, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v0, v0, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 132
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v1, v1, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v2, v2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v1, v1, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_2
    const-string v0, "SimInfoGprsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simItem.mNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-object v2, v2, Lcom/mediatek/gemini/SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getSimItem()Lcom/mediatek/gemini/SimItem;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    return-object v0
.end method

.method public getSimNum()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimNum:I

    return v0
.end method

.method public isStateDisabled()Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 217
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget v1, v1, Lcom/mediatek/gemini/SimItem;->mState:I

    if-eq v1, v0, :cond_2

    iget v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->getSimNum()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-wide v1, v1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mType:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->getSimNum()I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->getSimNum()I

    move-result v1

    if-ne v1, v0, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    iget-wide v1, v1, Lcom/mediatek/gemini/SimItem;->mSimID:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    .local v1, paddingRight:I
    move v0, v1

    .line 54
    .local v0, paddingLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    const v2, 0x7f09013f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextName:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f090140

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNum:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f09013c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageStatus:Landroid/widget/ImageView;

    .line 62
    const v2, 0x7f09013d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mTextNumFormat:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f09013a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mCkRadioOn:Landroid/widget/RadioButton;

    .line 66
    const v2, 0x7f09013b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mImageSim:Landroid/widget/RelativeLayout;

    .line 69
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setNameAndNum()V

    .line 74
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setImageSim()V

    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setImageStatus()V

    .line 76
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->setTextNumFormat()V

    .line 77
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mCkRadioOn:Landroid/widget/RadioButton;

    iget-boolean v3, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mIsChecked:Z

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mIsChecked:Z

    .line 192
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->notifyHierarchyChanged()V

    .line 193
    return-void
.end method

.method public setSimItem(Lcom/mediatek/gemini/SimItem;)V
    .locals 0
    .parameter "simItem"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimItem:Lcom/mediatek/gemini/SimItem;

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->notifyHierarchyChanged()V

    .line 184
    return-void
.end method

.method public setSimNum(I)V
    .locals 0
    .parameter "simNum"

    .prologue
    .line 205
    iput p1, p0, Lcom/mediatek/gemini/SimInfoGprsPreference;->mSimNum:I

    .line 206
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoGprsPreference;->notifyHierarchyChanged()V

    .line 207
    return-void
.end method
