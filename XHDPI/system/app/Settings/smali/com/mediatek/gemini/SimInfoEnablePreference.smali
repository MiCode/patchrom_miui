.class public Lcom/mediatek/gemini/SimInfoEnablePreference;
.super Lcom/mediatek/gemini/SimInfoPreference;
.source "SimInfoEnablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;
    }
.end annotation


# instance fields
.field private mClickCallback:Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;

.field private mContext:Landroid/content/Context;

.field private mDisableSwitch:Z

.field private mRadioOn:Z

.field private mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .parameter "isAirModeOn"

    .prologue
    .line 53
    const/4 v11, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V

    .line 55
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mContext:Landroid/content/Context;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mRadioOn:Z

    .line 57
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mDisableSwitch:Z

    .line 58
    const v1, 0x7f040094

    invoke-virtual {p0, v1}, Lcom/mediatek/gemini/SimInfoEnablePreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/mediatek/gemini/SimInfoPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, view:Landroid/view/View;
    const v6, 0x7f090145

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 67
    .local v0, ckRadioOn:Lmiui/widget/SlidingButton;
    if-eqz v0, :cond_0

    .line 68
    iget-object v6, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v6, :cond_0

    .line 69
    invoke-virtual {v0, v4}, Lmiui/widget/SlidingButton;->setClickable(Z)V

    .line 70
    iget-boolean v6, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mDisableSwitch:Z

    if-nez v6, :cond_3

    :goto_0
    invoke-virtual {v0, v4}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    .line 71
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    :cond_0
    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 75
    .local v2, siminfoLayout:Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v4, v2, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_1
    const v4, 0x7f090149

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, rightArrow:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_2
    return-object v3

    .end local v1           #rightArrow:Landroid/view/View;
    .end local v2           #siminfoLayout:Landroid/view/View;
    :cond_3
    move v4, v5

    .line 70
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 90
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090145

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mClickCallback:Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mClickCallback:Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;

    invoke-virtual {p0}, Lcom/mediatek/gemini/SimInfoEnablePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;->onPreferenceClick(J)V

    goto :goto_0
.end method

.method setCheckBoxClickListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listerner"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 103
    return-void
.end method

.method setClickCallback(Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;)V
    .locals 0
    .parameter "callBack"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoEnablePreference;->mClickCallback:Lcom/mediatek/gemini/SimInfoEnablePreference$OnPreferenceClickCallback;

    .line 107
    return-void
.end method
