.class public Lcom/mediatek/gemini/SimInfoPreference;
.super Landroid/preference/Preference;
.source "SimInfoPreference.java"


# instance fields
.field private mChecked:Z

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mNeedCheckbox:Z

.field private mNeedStatus:Z

.field private mNumDisplayFormat:I

.field private mSimNum:Ljava/lang/String;

.field protected final mSlotIndex:I

.field private mStatus:I

.field private mUseCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V
    .locals 12
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "simSlot"
    .parameter "status"
    .parameter "color"
    .parameter "displayNumberFormat"
    .parameter "key"
    .parameter "needCheckBox"

    .prologue
    .line 66
    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZ)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "simSlot"
    .parameter "status"
    .parameter "color"
    .parameter "displayNumberFormat"
    .parameter "key"
    .parameter "needCheckBox"
    .parameter "needStatus"

    .prologue
    const/4 v1, 0x1

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    .line 31
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 32
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    .line 158
    iput-object p2, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 160
    iput p4, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    .line 161
    iput p5, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    .line 162
    iput p6, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    .line 165
    iput-boolean p10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 166
    iput-boolean p11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 167
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setKey(Ljava/lang/String;)V

    .line 170
    const v0, 0x7f040092

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setLayoutResource(I)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZZ)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "simSlot"
    .parameter "status"
    .parameter "color"
    .parameter "displayNumberFormat"
    .parameter "key"
    .parameter "needCheckBox"
    .parameter "needStatus"
    .parameter "useCheckBox"

    .prologue
    const/4 v1, 0x1

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    .line 31
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 32
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    .line 105
    iput-object p2, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 107
    iput p4, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    .line 108
    iput p5, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    .line 109
    iput p6, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    .line 112
    iput-boolean p10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 113
    iput-boolean p11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 114
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mContext:Landroid/content/Context;

    .line 115
    iput-boolean p12, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    .line 116
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setKey(Ljava/lang/String;)V

    .line 118
    const v0, 0x7f040093

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setLayoutResource(I)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    :cond_1
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 185
    .local v7, view:Landroid/view/View;
    const v9, 0x1020016

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 186
    .local v6, textTitle:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 187
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    const v9, 0x1020010

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 190
    .local v4, textNum:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 191
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    .line 192
    invoke-virtual {v4}, Landroid/widget/TextView;->isShown()Z

    move-result v9

    if-nez v9, :cond_1

    .line 193
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :cond_1
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_2
    :goto_0
    const v9, 0x7f090142

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 201
    .local v1, imageStatus:Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 202
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    if-eqz v9, :cond_a

    .line 203
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    invoke-static {v9}, Lcom/mediatek/gemini/GeminiUtils;->getStatusResource(I)I

    move-result v2

    .line 204
    .local v2, res:I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_9

    .line 205
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    .end local v2           #res:I
    :cond_3
    :goto_1
    const v9, 0x7f090141

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 215
    .local v8, viewSim:Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_4

    .line 216
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    invoke-static {v9}, Lcom/mediatek/gemini/GeminiUtils;->getSimColorResource(I)I

    move-result v2

    .line 218
    .restart local v2       #res:I
    if-gez v2, :cond_b

    .line 219
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    .end local v2           #res:I
    :cond_4
    :goto_2
    const-string v9, "SimInfoPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUseCheckBox="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mChecked="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    if-nez v9, :cond_f

    .line 226
    const v9, 0x7f090145

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 227
    .local v0, ckRadioOn:Lmiui/widget/SlidingButton;
    if-eqz v0, :cond_5

    .line 228
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    if-eqz v9, :cond_e

    .line 229
    const-string v9, "tablet"

    const-string v10, "ro.build.characteristics"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 231
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    .line 232
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v9}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 264
    :cond_5
    :goto_3
    const v9, 0x7f090143

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 265
    .local v5, textNumForShort:Landroid/widget/TextView;
    if-eqz v4, :cond_6

    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 266
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    packed-switch v9, :pswitch_data_0

    .line 290
    :cond_6
    :goto_4
    const v9, 0x7f090148

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 291
    .local v3, rightValue:Landroid/widget/TextView;
    if-eqz v3, :cond_7

    .line 292
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_13

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :cond_7
    return-object v7

    .line 197
    .end local v0           #ckRadioOn:Lmiui/widget/SlidingButton;
    .end local v1           #imageStatus:Landroid/widget/ImageView;
    .end local v3           #rightValue:Landroid/widget/TextView;
    .end local v5           #textNumForShort:Landroid/widget/TextView;
    .end local v8           #viewSim:Landroid/widget/RelativeLayout;
    :cond_8
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 207
    .restart local v1       #imageStatus:Landroid/widget/ImageView;
    .restart local v2       #res:I
    :cond_9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 210
    .end local v2           #res:I
    :cond_a
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 221
    .restart local v2       #res:I
    .restart local v8       #viewSim:Landroid/widget/RelativeLayout;
    :cond_b
    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 234
    .end local v2           #res:I
    .restart local v0       #ckRadioOn:Lmiui/widget/SlidingButton;
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_3

    .line 237
    :cond_d
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v9}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_3

    .line 240
    :cond_e
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    goto :goto_3

    .line 244
    .end local v0           #ckRadioOn:Lmiui/widget/SlidingButton;
    :cond_f
    const v9, 0x7f090145

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 245
    .restart local v0       #ckRadioOn:Lmiui/widget/SlidingButton;
    if-eqz v0, :cond_5

    .line 246
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    if-eqz v9, :cond_10

    .line 247
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v9}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 248
    new-instance v9, Lcom/mediatek/gemini/SimInfoPreference$1;

    invoke-direct {v9, p0}, Lcom/mediatek/gemini/SimInfoPreference$1;-><init>(Lcom/mediatek/gemini/SimInfoPreference;)V

    invoke-virtual {v0, v9}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 259
    :cond_10
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    goto :goto_3

    .line 268
    .restart local v5       #textNumForShort:Landroid/widget/TextView;
    :pswitch_0
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 271
    :pswitch_1
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_11

    .line 272
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 274
    :cond_11
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 278
    :pswitch_2
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_12

    .line 279
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 282
    :cond_12
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 292
    .restart local v3       #rightValue:Landroid/widget/TextView;
    :cond_13
    const/16 v9, 0x8

    goto/16 :goto_5

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setCheck(Z)V
    .locals 0
    .parameter "bCheck"

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    .line 299
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    .line 300
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    .line 316
    return-void
.end method

.method setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 308
    iput p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    .line 309
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoPreference;->notifyChanged()V

    .line 310
    return-void
.end method
