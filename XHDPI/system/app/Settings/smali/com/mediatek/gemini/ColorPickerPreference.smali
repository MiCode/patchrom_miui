.class public Lcom/mediatek/gemini/ColorPickerPreference;
.super Landroid/preference/DialogPreference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COLORID:[I

.field private static final SIM_COLOR:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentSelected:I

.field private final mCurrentUsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitValue:I

.field private mSimID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/gemini/ColorPickerPreference;->SIM_COLOR:[I

    return-void

    .line 33
    :array_0
    .array-data 0x4
        0x3ct 0x0t 0x9t 0x7ft
        0x3dt 0x0t 0x9t 0x7ft
        0x3et 0x0t 0x9t 0x7ft
        0x3ft 0x0t 0x9t 0x7ft
    .end array-data

    .line 36
    :array_1
    .array-data 0x4
        0x20t 0x0t 0xbt 0x7ft
        0x21t 0x0t 0xbt 0x7ft
        0x22t 0x0t 0xbt 0x7ft
        0x23t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 28
    iput v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mSimID:J

    .line 50
    iput-object p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mContext:Landroid/content/Context;

    .line 51
    const v0, 0x7f04007e

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/ColorPickerPreference;->setLayoutResource(I)V

    .line 52
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/ColorPickerPreference;->setDialogLayoutResource(I)V

    .line 53
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/ColorPickerPreference;->setNegativeButtonText(I)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentUsed:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 146
    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, textSummary:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 150
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_0
    const v3, 0x7f090119

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .local v0, bgColor:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 157
    iget-object v3, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/mediatek/gemini/ColorPickerPreference;->SIM_COLOR:[I

    iget v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 161
    .end local v0           #bgColor:Landroid/widget/ImageView;
    .end local v1           #textSummary:Landroid/widget/TextView;
    :cond_1
    return-object v2
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 70
    iget-object v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    .line 72
    .local v4, siminfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v4, :cond_0

    .line 73
    const-string v5, "ColorPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current used ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v5, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 76
    .local v1, iconView:Landroid/widget/ImageView;
    iget-wide v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mSimID:J

    iget-wide v7, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 77
    iget v5, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 78
    iget v5, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    .line 79
    const v5, 0x7f020037

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentUsed:Ljava/util/List;

    iget v6, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget v5, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iget v6, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    if-eq v5, v6, :cond_0

    .line 83
    const v5, 0x7f020038

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 88
    .end local v1           #iconView:Landroid/widget/ImageView;
    .end local v4           #siminfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    sget-object v5, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 89
    sget-object v5, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 90
    .restart local v1       #iconView:Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92
    .end local v1           #iconView:Landroid/widget/ImageView;
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 108
    .local v1, viewId:I
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 110
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    sget-object v2, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 112
    sget-object v2, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 113
    iput v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 114
    const-string v2, "ColorPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentSelected is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gemini/ColorPickerPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gemini/ColorPickerPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/gemini/ColorPickerPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 123
    .end local v0           #k:I
    :cond_2
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 129
    const-string v0, "ColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positiveResult is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentSelected is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInitValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    iget v1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    if-eq v0, v1, :cond_0

    .line 135
    iget v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/gemini/ColorPickerPreference;->notifyChanged()V

    .line 138
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {p1, v1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    return-void
.end method

.method public setInitValue(I)V
    .locals 0
    .parameter "colorIndex"

    .prologue
    .line 171
    iput p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 172
    iput p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    .line 173
    return-void
.end method

.method public setSimID(J)V
    .locals 0
    .parameter "simID"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mSimID:J

    .line 65
    return-void
.end method
